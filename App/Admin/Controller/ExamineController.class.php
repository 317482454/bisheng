<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 16-3-8
 * Time: 下午12:28
 */

namespace Admin\Controller;
use Think\Controller;
use Think\Page;
use Think\Upload;

class ExamineController extends AdminController {
    public function _initialize(){
        parent::_initialize();
    }
    /**
     * 审核列表
     */
    public function index(){
        $u_id = I('email');
        if(!empty($u_id)){
            $where['u_id'] = array('like','%'.$u_id.'%');
        }
        
       
        $M_Examine_pwdtrade = M('Examine_pwdtrade');
        $count      = $M_Examine_pwdtrade->where($where)->count();// 查询满足要求的总记录数
        $Page       = new Page($count,25);// 实例化分页类 传入总记录数和每页显示的记录数(25)
        //给分页传参数
        setPageParameter($Page, array('u_id'=>$u_id));
        
        $show       = $Page->show();// 分页显示输出
        // 进行分页数据查询 注意limit方法的参数要使用Page类的属性
        $list = $M_Examine_pwdtrade
            ->where($where)
            ->order(" add_time desc ")
            ->limit($Page->firstRow.','.$Page->listRows)->select();
        $this->assign('list',$list);// 赋值数据集
        $this->assign('page',$show);// 赋值分页输出
        $this->display(); // 输出模板
    }

    /**
     * 查看并修改审核状态
     */
    public function saveExamine(){
        $id = I('id');
        $list = M('Examine_pwdtrade')->where(array('id'=>$id))->find();
        if(IS_POST){
            $id = $id;
            $data['status'] = I('post.status');
            if(empty($id)){
                $this->error('参数错误');
                return;
            }
            if($data['status']!=0){
                $data['examine_time'] = time();
                $data['examine_name'] = session('admin_user');
            }
            $r = M('Examine_pwdtrade')->where("id= '$id'")->save($data);
            if($r===false){
                $this->error('服务器繁忙,请稍后重试');
                return;
            }else{
                if($data['status']==1){
                    $member_data['pwdtrade'] = $list['pwdtrade'];
                    M('Member')->where(array('member_id'=>$list['u_id']))->save($member_data);
                    //审核成功后增加个人提示消息
                    $this->addMessage_all(
                        $list['u_id'],-2,
                        "您申请的修改支付密码已审核通过",
                        "您申请的修改支付密码已审核通过,审核通过时间为( ".date('Y-m-d H:i:s',$data['examine_time'])." )"
                    );
                }
                if($data['status']==2){
                    //审核未通过后添加个人消息提示
                    $this->addMessage_all(
                        $list['u_id'],-2,
                        "很抱歉您申请的修改支付密码审核未通过",
                        "很抱歉您申请的修改支付密码审核未通过,请重新审核。或联系客服"
                    );
                }
                $this->success('审核成功',U('Examine/index'));
                return;
            }
        }
        if(empty($id)){
            header("HTTP/1.0 404 Not Found");
            $this->display('Public:404');
        }
        $this->assign('list',$list);
        $this->display();

    }
}