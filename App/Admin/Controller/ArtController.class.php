<?php
namespace Admin\Controller;
use Admin\Controller\AdminController;
class ArtController extends AdminController{
    //空操作
    public function _empty(){
        header("HTTP/1.0 404 Not Found");
        $this->display('Public:404');
    }
    /**
     * 显示公告，资信，团队信息的文章列表
     * 
     */
    public function index(){
    	//$article_category_id为权限配置中的一个参数
    	$article_category_id = I("article_category_id");
    	$news_id = I("news_id");
		$news_title = I("title");
		
        if(!empty($news_title)){
        	$where[C('DB_PREFIX')."article.title"] = array('like','%'.$news_title.'%');
        	$inquire['news_title'] = $news_title;
        }
      	//当进入的分类id为公告，资信，团队信息
        $where[C('DB_PREFIX')."article_category.id"] = $article_category_id;
	    $count = $this->getCountArticleByWhere($where);
	    //查找对应$article_category_id的文章类型名称，反馈到页面
	    $condition = C("DB_PREFIX")."article_category.id = {$article_category_id}";
	    $article_category = $this->getArticleCategoryNameByArticleCategoryId($condition);

        // 实例化分页类 传入总记录数和每页显示的记录数
        $Page  = new \Think\Page($count,20);
        //给分页传参数 ，因为公告，资信，团队信息，没有id查询，所以只有title
        	setPageParameter($Page, array("title"=>$news_title));
        //分页显示输出性
        $show = $Page->show();
		//根据条件查询文章信息等所以资料
        $info = $this->getContentArticleByWhere($where, $Page);
		//限制页面显示的文字数量
        foreach ($info as $k=>$v){
             $info[$k]['title']=mb_substr((strip_tags(html_entity_decode($v['title']))),0,14,'utf-8');
             $info[$k]['content']=mb_substr((strip_tags(html_entity_decode($v['content']))),0,30,'utf-8');
        }
        
       $this->assign('inquire',$inquire);
       $this->assign('category',$article_category);
       $this->assign('page',$show);
       $this->assign('info',$info);
       $this->display();
    }
    
    /**
     * 显示帮助中心的文章列表
     */
    public function helpindex(){

    	$news_id = I("news_id");
    	$news_title = I("title");

    	if(!empty($news_title)){
    		$where[C('DB_PREFIX')."article.title"] = array('like','%'.$news_title.'%');
    		$inquire['news_title'] = $news_title;
    	}
    	//是否有帮助中心的类型查询
    	if(!empty($news_id)){
    		$where[C('DB_PREFIX')."article.position_id"] = $news_id;
    		$inquire['news_id'] = $news_id;
    	}
    	//查询条件为，parent_id为6的信息（如果没有索引查询，就查出帮助中心的所有信息）
    		$where[C('DB_PREFIX')."article_category.parent_id"] = 6;
    		$count = $this->getCountArticleByWhere($where);
			
    		//将parent_id为6的分类查新出来，显示到页面作为下菜单
    		$article_category = M('Article_category')->order("id asc")->where('parent_id = 6')->select();//查找1级分类
    		//以一级为基础，形成遍历
    		foreach($article_category as $k=>$v){
    			//加入二级分类，以一级id为查询条件
    			$article_category[$k]['children']= M('Article_category')->where(C("DB_PREFIX")."article_category.parent_id = {$v['id']}")->order("id asc")->select();
    		}

    	// 实例化分页类 传入总记录数和每页显示的记录数
    	$Page  = new \Think\Page($count,20);
    	//给分页传参数
    	setPageParameter($Page, array("news_id"=>$news_id,"title"=>$news_title));
    	//分页显示输出性
    	$show = $Page->show();
    	//根据条件查找的所以信息
    	$info = $this->getContentArticleByWhere($where, $Page);
    
    	//限制页面显示的文字数量
    	foreach ($info as $k=>$v){
    		$info[$k]['title']=mb_substr((strip_tags(html_entity_decode($v['title']))),0,14,'utf-8');
    		$info[$k]['content']=mb_substr((strip_tags(html_entity_decode($v['content']))),0,30,'utf-8');
    	}


    	$this->assign('inquire',$inquire);
    	$this->assign('category',$article_category);
    	$this->assign('page',$show);
    	$this->assign('info',$info);
    	$this->display();
    
    }
    /**
     * 添加/修改系统公告，市场等文章
     * 
     */
    public function insert(){
    	$article_category_id = I('article_category_id');
        if(IS_POST){
            $data['title']=I('post.title');//标题
            $data['content'] =  I('post.content','','html_entity_decode');//内容
            $data['position_id'] = I('post.category_id');//类型  根据类型表的id 对比
            $data['add_time'] = time();//添加时间
            $data['sign'] =I('sign');//是否标红
            //如果post中有id，证明是修改传来的，所以save
            if($_POST['article_id']){
            	$data['article_id'] = I('post.article_id');
            	$re = M('Article')->save($data);
            }else{
            	$re = M('Article')->add($data);//加入数据库
            }
            if($re===false){
                $this->error('操作失败');
                return;
            }
            else{
            	//将公告发给所有用户
            	if($data['position_id']==1) {
            		$content = $data['title']
            		. "<br/><a href=" . U('Home/Art/details', array('id' => $re)) . ">点击显示详情</a>";
            		$this->addMessage_all(-1, -1, $data['title'], $content);
            	}
                $this->success('操作成功',I('post.url'));
                return;
           }
        }else{
        	//当获取到get，证明是修改功能， 显示所选的信息到页面
        	if($_GET['article_id']){
        		$article_id = I('get.article_id');
        		$list = M('Article')->where("article_id = {$article_id}")->find();
        		$this->assign("list",$list);
        	} 	
 
        		//查找对应article_category_id的文章分类，如果是帮追中心（6），遍历显示。如果不是，直接查询显示
        		if($article_category_id == 6){
        			$article_category = M('Article_category')->order("id asc")->where('parent_id = 6')->select();//查找1级分类
        			//以一级为基础，形成遍历
        			foreach($article_category as $k=>$v){
        				//加入二级分类，以一级id为查询条件
        				$article_category[$k]['children']= M('Article_category')->where(C("DB_PREFIX")."article_category.parent_id = {$v['id']}")->order("id asc")->select();
        			}
        		}else{
        			$condition = C("DB_PREFIX")."article_category.id = {$article_category_id}";
        			$article_category = $this->getArticleCategoryNameByArticleCategoryId($condition);
        		}

	            $this->assign('category',$article_category);
            	$this->display();
        	}
    	}


    /**
     * 删除文章
     * return boolen
     */
    public function delete(){
        $id=intval(I('get.article_id'));
        $re = M('Article')->delete($id);
        if($re){
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
            return;
        }
    }
    
    /**
     * 查找不同类型的文章分类
     * @param array $where 查询条件 数组形式
     * @return boolean|Array 返回查询数组 成功返回结果集 失败返回null
     */
    private function getArticleCategoryNameByArticleCategoryId($where){
    	$info= M('Article_category')->where($where)->select();
    	return $info;
    }
    /**
     * 查询对应条件的数据个数
     * @param array $where 查询条件
     * @param unknown $article_category_id 对应的文章类型id
     * @return boolean|Array 返回查询数量  成功返回数量 失败返回null
     */
    private function getCountArticleByWhere($where){
    	$count = M('Article')->join(C('DB_PREFIX')."article_category ON ".C('DB_PREFIX')."article.position_id = ".C('DB_PREFIX')."article_category.id")
                    ->where($where)
        			->count();
    	return $count;
    }
    /**
     * 查询对应文章信息
     * @param unknown $where 查询条件
     * @param unknown $article_category_id 对应的文章类型id
     * @return boolean|Array 返回查询数组 成功返回结果集 失败返回null
     */
    private function getContentArticleByWhere($where,$Page){
    	 $info = M('Article')->join(C('DB_PREFIX')."article_category ON ".C('DB_PREFIX')."article.position_id = ".C('DB_PREFIX')."article_category.id")
				    ->where($where)
				    ->order('add_time desc,sort')
				    ->limit($Page->firstRow.','.$Page->listRows)
				    ->select();
    	return $info;
    }
}