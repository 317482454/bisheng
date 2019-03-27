<?php
// 本类由系统自动生成，仅供测试用途
namespace Home\Controller;
use Think\Controller;
class OauthController extends Controller {

/*namespace User\Controller;
use Think\Controller;
class OauthController extends Controller {*/
/* 
* Type类型，初始化
* QQConnet  WeiboConnect 
*/
    public function index(){
    switch ($_GET['type']) {
    /* QQ互联登录 */
    case qq:
    	$app_id = C('SZ_QQ_APP_ID');
        $scope = C('SZ_QQ_SCOPE');
        $callback = C('SZ_QQ_CALLBACK');
        $sns = new \Common\Api\QQConnect;
        $sns->login($app_id, $callback, $scope);
    break;
    /* 新浪微博登录 */
    case sina:
    $app_id = C('SZ_SINA_APP_ID');
    $scope = C('SZ_SINA_SCOPE');
    $callback = C('SZ_SINA_CALLBACK');
    $sns = new \Common\Api\WeiboConnect;
    $sns->login($app_id, $callback, $scope);
    break;
    /* 默认无登录 */
    default:
    $this->error("无效的第三方方式",U('/user/login/index'));
    break;
    }
    }  
      /*    
       * 互联登录返回信息
       * 获取code 和 state状态，查询数据库 
       *  */
 public function callback() {
    switch ($_GET['type']) {
    /* 接受QQ互联登录返回值 */
    case qq:
    empty($_GET['code']) && $this->error("无效的第三方方式",U('/user/login/index'));
    $app_id = C('SZ_QQ_APP_ID');
    $app_key = C('SZ_QQ_APP_KEY');
    $callback = C('SZ_QQ_CALLBACK');
    $qq = new \Common\Api\QQConnect;
    /* callback返回openid和access_token */
    $back = $qq->callback($app_id , $app_key, $callback);
                        //防止刷新
    empty($back) && $this->error("请重新授权登录",U('/user/login/index'));
    //此处省略数据库查询，查询返回的$back['openid']
  break;
     
    /* 接受新浪微博登录返回值     */
    case sina:
       empty($_GET['code']) && $this->error("无效的第三方方式",U('/user/login/index'));
            $app_id = C('SZ_SINA_APP_ID');
    $app_key = C('SZ_SINA_APP_KEY');
    $scope = C('SZ_SINA_SCOPE');
    $callback = C('SZ_SINA_CALLBACK');
    $weibo = new \Common\Api\WeiboConnect;
    /* callback返回openid和access_toke */
    $back = $weibo->callback($app_id , $app_key, $callback);
    empty($back) && $this->error("请重新授权登录",U('/user/login/index'));
            //此处省略数据库查询，查询返回的$back['openid']
                break;
               /* 默认错误跳转到登录页面  */
    default:
    $this->error("无效的第三方方式",U('/user/login/index'));
    break;
    }
    }
}	 