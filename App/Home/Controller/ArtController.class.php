<?php
namespace Home\Controller;
use Common\Controller\CommonController;
class ArtController extends CommonController {
	//空操作
	public function _empty(){
		header("HTTP/1.0 404 Not Found");
		$this->display('Public:404');
	}
	/**
	 * 消息整体列表展示
	 * return array 文章分类，分页，查询信息
	 */
	public function index(){
		//检测从哪里进来到这里，如果有参数，判断分类（position）1为系统，2为资源，没有参数，正常显示
		$article = M('Article');
		$id = intval(I('get.id'));//强制转换为数字型
		$random_id = intval(I('random_id'));
		if(!$random_id){
			$where['position_id'] = array('in','1,2');
		}
		if(!empty($id)){//有参数，判断1，2，参数数量不确定
			$where['position_id'] = $id;
		}
		$count = $article->where($where)->count();//根据分类查找数据数量
		$page = new \Think\Page($count,10);//实例化分页类，传入总记录数和每页显示数
		$show = $page->show();//分页显示输出性
		$list = $article->where($where)->order('add_time desc')->limit($page->firstRow.','.$page->listRows)->select();//时间降序排列，越接近当前时间越高
		foreach ($list as $k=>$v){
			$list[$k]['title']=strip_tags(html_entity_decode($v['title']));
			$list[$k]['content']=strip_tags(html_entity_decode($v['content']));
		}
		
		$this->assign('page',$show);
		$this->assign('list',$list);
		$this->display();
     }
     /**
	 * 页面左边为选中的信息，通过url传递的id获取，并获取到该文章的position_id，用position_id来确定右边的分类名和分类中需要的多个标题
	 * return array 文章分类，分页，查询信息
	 */
    public function details(){
    	$article = M('Article');
    	$art_cat = M('Article_category');
    	//index 传id
    	$id = I('id');
    	$team_id = I('get.team_id');
    	if(!empty($id)){
    	 $where['article_id'] = $id;
    	}
    	if(!empty($team_id)){
    	 $where['article_id'] = $team_id;
    	}

    	$count = $article->where($where)->count();
		if($count==0){
			$this->display('Public:404');
			return;
		}
			
		$art_one = $article->where($where)->find();//查找到单一的文章	
		//将数据库中html标签字符串化，显示
		$art_one['title']=html_entity_decode($art_one['title']);
		$art_one['content']=html_entity_decode($art_one['content']);
		//根据单一文章的position_id,查找一定量的同类型标题
		$where_artlist['position_id'] = $art_one['position_id'];    	
    	$art_list = $article->where($where_artlist)->order('add_time desc')->limit(0,5)->select();
    	$this->assign('article',$art_one);
		$this->assign('art_one',$art_one);		
    	$this->assign('art_list',$art_list);
    	$this->display();	
    }

}