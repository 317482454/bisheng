<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 16-3-8
 * Time: 下午12:28
 */

namespace Admin\Controller;
use Think\Page;
use Think\Upload;
class MemberController extends AdminController {
    public function _initialize(){
        parent::_initialize();
    }
    /**
     * 会员列表
     */
    public function index(){
        $email = I('email');
        $member_id=I('member_id');
        if(!empty($email)){
            $where['email'] = array('like','%'.$email.'%');
        }
        if (!empty($member_id)){
            $where['member_id']=$member_id;
        }
        
        $count      =  M('Member')->where($where)->count();// 查询满足要求的总记录数

        $Page       = new Page($count,20);// 实例化分页类 传入总记录数和每页显示的记录数(25)

        //给分页传参数
        setPageParameter($Page, array('email'=>$email,'member_id'=>$member_id));

        $show       = $Page->show();// 分页显示输出
        
        $list =  M('Member')
            ->where($where)
            ->order(" member_id desc ")
            ->limit($Page->firstRow.','.$Page->listRows)->select();
        
        
        $this->assign('list',$list);// 赋值数据集
        $this->assign('page',$show);// 赋值分页输出
        $this->display(); // 输出模板
    }
    /**
     * 添加会员
     */
    public function addMember(){
        if(IS_POST){
            $M_member = D('Member');
            $_POST['ip'] = get_client_ip();
            $_POST['reg_time'] = time();
            if($r = $M_member->create()){
                if($r['pwd']==$r['pwdtrade']){
                    $this->error('支付密码不能和密码一样');
                    return;
                }
                if($M_member->add($r)){
                    $this->success('添加成功',U('Member/index'));
                    return;
                }else{
                    $this->error('服务器繁忙,请稍后重试');
                    return;
                }
            }else{
                $this->error($M_member->getError());
                return;
            }
        }else{
            $this->display();
        }
    }
    /**
     * 添加个人信息
     */
    public function saveModify(){
        $member_id = I('get.member_id','','intval');
        $M_member = D('Member');
        if(IS_POST){
            $_POST['status'] = 1;//0=有效但未填写个人信息1=有效并且填写完个人信息2=禁用
            if (!$data=$M_member->create()){ // 创建数据对象
                // 如果创建失败 表示验证没有通过 输出错误提示信息
                $this->error($M_member->getError());
                return;
            }else {
                $where['member_id'] = $_POST['member_id'];
                $r = $M_member->where($where)->save();
                if($r){
                    $this->success('添加成功',U('Member/index'));
                    return;
                }else{
                    $this->error('服务器繁忙,请稍后重试');
                    return;
                }
            }
        }else{
            $where['member_id'] = $member_id;
            $list = $M_member->where($where)->find();
            $this->assign('list',$list);
            $this->display();
        }
    }
    /**
     * 显示自己推荐列表
     */
    public function show_my_invit(){
        $member_id = $_GET['member_id'];
        if(empty($member_id)){
            $this->error('参数错误');
            return;
        }
        $M_member = M('Member');
        $count      = $M_member->where(array('pid'=>$member_id))->count();// 查询满足要求的总记录数
        $Page       = new Page($count,25);// 实例化分页类 传入总记录数和每页显示的记录数(25)
        $show       = $Page->show();// 分页显示输出
        // 进行分页数据查询 注意limit方法的参数要使用Page类的属性
        $my_invit = $M_member
            ->where(array('pid'=>$member_id))
            ->order(" reg_time desc ")
            ->limit($Page->firstRow.','.$Page->listRows)->select();
        if($my_invit){
            $this->assign('my_invit',$my_invit);
            $this->assign('page',$show);// 赋值分页输出
            $this->display(); // 输出模板
        }else{
            $this->error('抱歉,您还没有推荐其他人');
            return;
        }
    }
    /**
     * 修改会员
     */
    public function saveMember(){
        $member_id = I('get.member_id','','intval');
        $M_member = M('Member');
        if(IS_POST){
            $member_id = I('post.member_id','','intval');
            $where['member_id'] = $member_id;
            $list = $M_member->where($where)->find();
            //头像上传
            $upload = new Upload();// 实例化上传类
            $upload->maxSize   =     3145728 ;// 设置附件上传大小
            $upload->exts      =     array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
            $upload->rootPath  =     './Uploads/'; // 设置附件上传根目录
            $upload->savePath  =     'Member/Head/'; // 设置附件上传（子）目录
            // 上传文件
            if(!$_FILES['head']['error']){
                $info   =   $upload->upload();
                $file_path = ltrim($upload->rootPath.$info['head']["savepath"].$info['head']["savename"],'.');
            }
            $_POST['head'] = empty($file_path)?I('post.headold'):$file_path;
            //头像上传end
            if($_POST['pwd'] == $_POST['pwdtrade'] && $_POST['pwd']!=null ){
                $this->error('交易密码不能和密码一致');
                return;
            }
            if($_POST['nick']!=$list['nick']){
                $where = null;
                $where['member_id']  = array('NEQ',$member_id);
                $where['nick'] = $_POST['nick'];
                if($M_member->field('nick')->where($where)->select()){
                    $this->error('昵称重复');
                    return;
                }
            }
            if($_POST['phone']!=$list['phone']){
                $where = null;
                $where['member_id']  = array('NEQ',$member_id);
                $where['phone'] = $_POST['phone'];
                if($M_member->field('phone')->where($where)->select()){
                    $this->error('手机号重复');
                    return;
                }
            }
            $_POST['pwd'] =  $_POST['pwd']?I('post.pwd','','md5'):$list['pwd'];
            $_POST['pwdtrade'] = $_POST['pwdtrade']?I('post.pwdtrade','','md5'):$list['pwdtrade'];
            $r = $M_member->save($_POST);
            if($r!==false){
                $this->success('修改成功',U('Member/index'));
                return;
            }else{
                $this->error('修改失败');
                return;
            }
        }else{
            if($member_id){
                $where['member_id'] = $member_id;
                $list = $M_member->where($where)->find();
                $this->assign('list',$list);
                $this->display();
            }else{
                $this->error('参数错误');
                return;
            }
        }
    }
    /**
     * 删除会员
     */
    public function delMember(){
        $member_id = I('get.member_id','','intval');
        $M_member = M('Member');
        //判断还有没有余额
        $where['member_id']= $member_id;
        $member = $M_member->where($where)->find();
        $member_currency = M('Currency_user')->where($where)->find();
        if($member['rmb']>0||$member['forzen_rmb']>0||$member_currency['num']>0||$member_currency['forzen_num']>0){
            $this->error('因账户有剩余余额,禁止删除');
            return;
        }
        $r[] = $M_member->delete($member_id);
        $r[] = M('Currency_user')->where($where)->delete();
        $r[] = M('Finance')->where($where)->delete();
        $r[] = M('Orders')->where($where)->delete();
        $r[] = M('Trade')->where($where)->delete();
        $r[] = M('Withdraw')->where('uid='.$member_id)->delete();
        $r[] = M('Pay')->where($where)->delete();
        if($r){
            $this->success('删除成功',U('Member/index'));
            return;
        }else{
            $this->error('删除失败');
            return;
        }
    }
    /**
     * ajax判断邮箱
     * @param $email
     */
    public function ajaxCheckEmail($email){
        $email = urldecode($email);
        $data = array();
        if(!checkEmail($email)){
            $data['status'] = 0;
            $data['msg'] = "邮箱格式错误";
        }else{
            $M_member = M('Member');
            $where['email']  = $email;
            $r = $M_member->where($where)->find();
            if($r){
                $data['status'] = 0;
                $data['msg'] = "邮箱已存在";
            }else{
                $data['status'] = 1;
                $data['msg'] = "";
            }
        }
        $this->ajaxReturn($data);
    }

    /**
     * ajax验证昵称是否存在
     */
    public function ajaxCheckNick($nick){
        $nick = urldecode($nick);
        $data =array();
        $M_member = M('Member');
        $where['nick']  = $nick;
        $r = $M_member->where($where)->find();
        if($r){
            $data['msg'] = "昵称已被占用";
            $data['status'] = 0;
        }else{
            $data['msg'] = "";
            $data['status'] = 1;
        }
        $this->ajaxReturn($data);
    }
    /**
     * ajax手机验证
     */
    function ajaxCheckPhone($phone) {
        $phone = urldecode($phone);
        $data = array();
        if(!checkMobile($phone)){
            $data['msg'] = "手机号不正确！";
            $data['status'] = 0;
        }else{
            $M_member = M('Member');
            $where['phone']  = $phone;
            $r = $M_member->where($where)->find();
            if($r){
                $data['msg'] = "此手机已经绑定过！请更换手机号";
                $data['status'] = 0;
            }else{
                $data['msg'] = "";
                $data['status'] = 1;
            }
        }
        $this->ajaxReturn($data);
    }
    
    /**
     * 查看个人币种
     */
    public function show(){
    	$currency = M('Currency_user');
    	$member = M('Member');
    	$member_id = I('member_id');
    	if(empty($member_id)){
    		$this->error('参数错误',U('Member/index'));
    	}
    	$where['member_id'] = $member_id;
    	$count = $currency->join(C("DB_PREFIX")."currency ON ".C("DB_PREFIX")."currency_user.currency_id = ".C("DB_PREFIX")."currency.currency_id")
    			->where($where)->count();
    	$Page = new \Think\Page ( $count,20); // 实例化分页类 传入总记录数和每页显示的记录数
    	$show = $Page->show();//分页显示输出性
    	$info = $currency->join(C("DB_PREFIX")."currency ON ".C("DB_PREFIX")."currency_user.currency_id = ".C("DB_PREFIX")."currency.currency_id")
    			->where($where)->limit($Page->firstRow.','.$Page->listRows)
    			->select();
    	$member_info = $member->field('member_id,name,phone,email')->where($where)->find();
    	$this->assign('member_info',$member_info);
    	$this->assign('info',$info);
    	$this->assign('page',$show);
    	$this->display();
    }
    //修改个人币种数量
    public function updateMemberMoney(){
    	$member_id=I('post.member_id');
    	$currency_id=I('post.currency_id');
    	$num=I('post.num');
    	$forzen_num=I('post.forzen_num');
    	if(empty($member_id)||empty($member_id)){
    		$data['info']="参数不全";
    		$data['status']=0;
    	}
    	$where['member_id']=$member_id;
    	$where['currency_id']=$currency_id;
    	$r[]=M('Currency_user')->where($where)->setField('num',$num);
    	$r[]=M('Currency_user')->where($where)->setField('forzen_num',$forzen_num);
    	if($r){
    		$data['info']="修改成功";
    		$data['status']=1;
    	}else{
    		$data['info']="修改失败";
    		$data['status']=0;
    	}
    	$this->ajaxReturn($data);
    }
    
    
}