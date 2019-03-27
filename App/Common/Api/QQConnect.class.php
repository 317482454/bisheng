<?php
namespace Common\Api;
class QQConnect{
     /**
     * 获取QQconnect Login 跳转到的地址值
     * @return array 返回包含code state
     * 
**/ 
 public function login($app_id, $callback, $scope){
        $_SESSION['state'] = md5(uniqid(rand())); //CSRF protection
        $login_url = "https://graph.qq.com/oauth2.0/authorize?response_type=code&client_id=" 
            .$app_id. "&redirect_uri=" . urlencode($callback)
            . "&state=" . $_SESSION['state']
            . "&scope=".urlencode($scope);
//显示出登录地址
         header('Location:'.$login_url);

    }
    /**
     * 获取access_token值
     * @return array 返回包含access_token,过期时间的数组
     * */
private function get_token($app_id,$app_key,$code,$callback,$state){
        if($state !== $_SESSION['state']){
return false;
exit();
        }
           $url = "https://graph.qq.com/oauth2.0/token";
            $param = array(
                "grant_type"    =>    "authorization_code",
                "client_id"     =>    $app_id,
                "client_secret" =>    $app_key,
                "code"          =>    $code,
                "state"         =>    $state,
                "redirect_uri"  =>    $callback
            );
            $response = $this->get_url($url, $param);
            if($response == false) {
                return false;
            }
            $params = array();
            parse_str($response, $params);
            return $params["access_token"];
}
     
    /**
     * 获取client_id 和 openid
     * @param $access_token access_token验证码
     * @return array 返回包含 openid的数组
     * */
    private  function get_openid($access_token) {
        $url = "https://graph.qq.com/oauth2.0/me"; 
        $param = array(
            "access_token"    => $access_token
        );
        $response  = $this->get_url($url, $param);
        if($response == false) {
            return false;
        }
        if (strpos($response, "callback") !== false) {
            $lpos = strpos($response, "(");
            $rpos = strrpos($response, ")");
            $response  = substr($response, $lpos + 1, $rpos - $lpos -1);
        }
        $user = json_decode($response);
        if (isset($user->error) || $user->openid == "") {
            return false;
        }
        return $user->openid;
    }
    /**
     * 获取用户信息
     * @param $client_id
     * @param $access_token
     * @param $openid
     * @return array 用户的信息数组
     * */
    public function get_user_info($app_id,$token,$openid){
$url = 'https://graph.qq.com/user/get_user_info?oauth_consumer_key='.$app_id.'&access_token='.$token.'&openid='.$openid.'&format=json';
        $str = $this->get_url($url);
        if($str == false) {
        return false;
        }
        $arr = json_decode($str,true);
        return $arr;
}
 
     /**
     * 请求URL地址，返回callback得到返回字符串
     * @param $url qq提供的api接口地址
     * */
    
    public function callback($app_id, $app_key, $callback) {
    $code = $_GET['code'];
    $state = $_GET['state'];
    $token = $this->get_token($app_id,$app_key,$code,$callback,$state);
    $openid = $this->get_openid($token);
    if(!$token || !$openid) {
    return false;
    exit();
    }
       return array('openid' => $openid, 'token' => $token);
    }
    
    
    /*
     * HTTP GET Request
    */
    private  function get_url($url, $param = null) {
    if($param != null) {
    $query = http_build_query($param);
    $url = $url . '?' . $query;
    }
    $ch = curl_init();
    if(stripos($url, "https://") !== false){
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);
    }
    
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1 );
    $content = curl_exec($ch);
    $status = curl_getinfo($ch);
    curl_close($ch);
    if(intval($status["http_code"]) == 200) {
    return $content;
    }else{
    echo $status["http_code"];
    return false;
    }
    }
    
    /*
     * HTTP POST Request
    */
    private  function post_url($url, $params) {
    $ch = curl_init();
    if(stripos($url, "https://") !== false) {
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);
    }
    
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1 );
    curl_setopt($ch, CURLOPT_POST, true);
    curl_setopt($ch, CURLOPT_POSTFIELDS, $params);
    $content = curl_exec($ch);
    $status = curl_getinfo($ch);
    curl_close($ch);
    if(intval($status["http_code"]) == 200) {
    return $content;
    } else {
    return false;
    }
    }
}