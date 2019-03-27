<?php
namespace Home\Controller;

use Common\Controller\CommonController;
class RegController extends CommonController {

    /**
     * 显示注册界面
     */
    public function reg(){
        if(session('USER_KEY_ID')){
            $this->redirect('User/index');
            return;
        }
        $pid = I('get.Member_id','','intval');
        $this->assign('pid',$pid);
        $this->display();
    }
    /**
     * 显示服务条款
     */
    public function terms(){
//         $list = M('Article')->where(array('article_id'=>125))->find();
//         $this->assign('list',$list);
        $this->display();
    }
    /**
     * 添加注册用户
     */
    public function addReg(){
        if(IS_POST){
            //增加添加时间,IP
            $_POST['reg_time'] = time();
            $_POST['ip'] = get_client_ip();
            $M_member = D('Member');
            if($_POST['pwd']==$_POST['pwdtrade']){
            	$data['status'] = 0;
            	$data['info'] = "交易密码不能和密码一样";
            	$this->ajaxReturn($data);
            	
            	//                $this->error($M_member->getError());
            	return;
            }
            if (!$M_member->create()){
                // 如果创建失败 表示验证没有通过 输出错误提示信息
                $data['status'] = 0;
                $data['info'] = $M_member->getError();
                $this->ajaxReturn($data);
//                $this->error($M_member->getError());
                return;
            }else{
                $r = $M_member->add();
                if($r){
                    session('USER_KEY_ID',$r);//传入session避免直接进入个人信息界面
                    session('USER_KEY',$_POST['email']);//用户名
                    session('STAUTS',0);
                    session('procedure',1);//SESSION 跟踪第一步
                    $data['status'] = 1;
                    $data['info'] = '提交成功';
                    $this->ajaxReturn($data);
//                    $this->redirect('ModifyMember/modify');
                }else{
                    $data['status'] = 0;
                    $data['info'] = '服务器繁忙,请稍后重试';
                    $this->ajaxReturn($data);
//                    $this->error('服务器繁忙,请稍后重试');
//                    return;
                }
            }
        }else{
            $this->display('Reg/reg');
        }
    }

    /**
     * 注册成功
     */
    public function regSuccess(){
        if(session('USER_KEY_ID')){
            $this->redirect('User/index');
            return;
        }
        //判断步骤并重置
        if(session('procedure')==2){
            session('procedure',null);
            $this->display();
        }
        if(session('procedure')==1){
            $this->redirect('Reg/reg');
        }

    }

    /**
     * ajax验证邮箱
     * @param string $email 规定传参数的结构
     * 
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
}