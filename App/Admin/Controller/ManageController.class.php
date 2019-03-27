<?php
namespace Admin\Controller;
use Admin\Controller\AdminController;
class ManageController extends AdminController {
    public function _initialize(){
        parent::_initialize();
    }
    //判断权限
    private function auth(){
        $admin=$this->admin;
        if($admin['admin_id']!=1){
            $this->error('只有超级管理员可以进入此页面');exit();
        }
    }
    /**
     * 管理员列表
     */
    public function index(){
        $this->auth();
        $admin = M('Admin');
        $count      = $admin->count();// 查询满足要求的总记录数
        $Page       = new \Think\Page($count,25);// 实例化分页类 传入总记录数和每页显示的记录数(25)
        $show       = $Page->show();// 分页显示输出
        // 进行分页数据查询 注意limit方法的参数要使用Page类的属性
        $list = $admin->limit($Page->firstRow.','.$Page->listRows)->select();
        $this->assign('list',$list);// 赋值数据集
        $this->assign('page',$show);// 赋值分页输出
        $this->display(); // 输出模板
    }
    /**
     * 添加管理员
     */
    public function addAdmin(){
        $admin=M('Admin');
        if(IS_POST){
            $username=I('post.username');

            $pwd=md5(I('post.password'));
            if(empty($username)||empty($pwd)){
                $this->error('请补全信息');
            }
            $data['username']=$username;
            $data['password']=$pwd;
            $data['pwd_show']=I('post.password');
            if(empty($_POST['admin_id'])){
                $rs=$admin->where("username='$username'")->find();
                if($rs){
                    $this->error('用户名称已存在');
                }
                $rs=$admin->add($data);
            }else{
                $data['admin_id']=I('post.admin_id');
                if(empty($pwd)){
                    $data['password']=md5(I('post.pwd_show'));
                    $data['pwd_show']=I('post.pwd_show');
                }
                $rs=$admin->save($data);
            }
            if($rs){
                $this->success('操作成功');
            }else{
                $this->error('操作失败');
            }
        }
        if(!empty($_GET['admin_id'])){
            $list=$admin->where('admin_id='.$_GET['admin_id'])->find();
        }
        $this->assign('list',$list);
        $this->display();
    }
    //修改权限页面
    public function showNav(){
        $this->auth();
        $where['admin_id']=$_GET['admin_id'];
        $admin=M('Admin')->where($where)->find();
        $list=explode(',',$admin['nav']);
        $nav=M('Nav')->select();
        foreach ($nav as $k=>$v){
            if(in_array($v['nav_id'],$list)){
                $nav[$k]['status']=1;
            }
        }
        $this->assign('nav',$nav);
        $this->assign('id',$_GET['admin_id']);
        $this->display();
    }
    //修改权限程序
    public function saveNav(){
        $this->auth();
        if(I('post.admin_id')){
            $data['nav']=implode(',', I('post.nav'));
            $data['admin_id']=I('post.admin_id');
            $rs=M('Admin')->save($data);
            if($rs){
                $this->success('修改成功');
            }else{
                $this->error('修改失败');
            }
        }else{
            $this->error('操作有误');
        }
    }
    /**
     * 修改本账号密码
     */
    public function pwdUpdate(){
        header("Content-type:text/html;charset=utf-8");
        $admin_id = session('admin_userid');
        $list=M('Admin')->where('admin_id='.$admin_id)->find();
        if(empty($admin_id)){
            $this->error('操作有误');
            return;
        }
        if(IS_POST){
            if(empty($_POST['old_pwd'])){
                $this->error('请输入原始密码');
                return;
            }
            if(empty($_POST['password'])){
                $this->error('请输入新密码');
                return;
            }
            $old_pwd = md5($_POST['old_pwd']);
            if($list['password'] != $old_pwd){
                $this->error('您输入的原始密码错误');
                return;
            }
            if(!checkPwd($_POST['password'])){
                $this->error('验证密码长度在6-20个字符之间');
                return;
            }
            $r = M('Admin')->where('admin_id='.$admin_id)->setField('password',md5($_POST['password']));
            if($r===true){
                $this->error('修改失败');
                return;
            }else{
                $this->redirect('Login/loginout','',1,"<script>alert('修改成功请重新登录')</script>");
                return;
            }
        }else{
            $this->assign('list',$list);
            $this->display();
        }
    }
    /**
     * 删除管理员
     */
    public function delMember(){
        $this->auth();
        if(empty($_GET['admin_id'])){
            $this->error('要删除的ID不存在');
        }
        if($_GET['admin_id']==1){
            $this->error('此ID不可删除');
        }
        $admin = M('Admin');
        $r = $admin->delete($_GET['admin_id']);
        if($r){
            $this->success('删除成功',U('Manage/index'));
            return;
        }else{
            $this->error('删除失败');
            return;
        }
    }
}