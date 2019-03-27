<?php

namespace Home\Controller;

use Common\Controller\CommonController;

class FillByBankController extends HomeController {
	protected $pMerCode;
	protected $pMerCert;
	protected $pAccount;
	protected $url;
	public function _initialize() {
		parent::_initialize ();
		$this->User_status ();
		// $this->pMerCode="ADMIN";
		// $this->pMerCert= "aAjjnccOQ8yFHrQHrBZDRjbZDJ1UcSkV0kFT1EAWoV82g9H7pAz0qXFjcEaNQXU2d9xHrvkGUkBJZEXKKDXwZRUTCfdEa7VEGCV6KffDf2gnnohbBmAaPlsK7jkMF0Yc";
		// $this->pAccount="177954";
		
// 		$this->pMerCode = "177954";
// 		$this->pMerCert = "aAjjnccOQ8yFHrQHrBZDRjbZDJ1UcSkV0kFT1EAWoV82g9H7pAz0qXFjcEaNQXU2d9xHrvkGUkBJZEXKKDXwZRUTCfdEa7VEGCV6KffDf2gnnohbBmAaPlsK7jkMF0Yc";
// 		$this->pAccount = "1779540010";
		$this->pMerCode = "179440";
		$this->pMerCert = "FnwQC4trYU7AGeDHe0TcZUAOWjZ3hoGYONU7X9pq8B9nhhgcXHRwBFd1kgoKcaogNBckspMXoaRPt9uu7EMfWuK2wv9JCf2qlCa4LYGOTxBuUx6jOgsu1PNwNJrzdeR3";
		$this->pAccount = "1794400018";
		
		$this->url = $_SERVER ['HTTP_HOST'];
	}
	// 空操作
	Public function _empty() {
		header ( "HTTP/1.0 404 Not Found" ); // 使HTTP返回404状态码
		$this->display ( "Public:404" );
	}
	public function index() {
		$this->display ();
	}
	// 生成订单
	public function bank() {
		if ($_POST ["p3_Amt"] <= $this->config ['pay_min_money']) {
			$this->error ( '充值金额不得小于' . $this->config ['pay_min_money'] ,U('FillByBank/index'));
		}
		// 写入订单
		$orderno = date ( 'YmdHis' ) . mt_rand ( 100000, 999999 );
		;
		$data ['num'] = number_format ( $_POST ["p3_Amt"] );
		$data ['random'] = rand ( 0001, 9999 );
		$data ['uid'] = $_SESSION ['USER_KEY_ID'];
		$data ['email'] = $_SESSION ['USER_KEY'];
		// $data['uname']=$this->getUsernameByid($data['uid']);
		$data ['ctime'] = time ();
		$data ['tradeno'] = $orderno;
		$data ['status'] = 0;
		$data ['bankname'] = $_POST ["pd_FrpId"];
		$data ['type'] = 1;
		$r = M ( 'Fill' )->add ( $data );
		
		$pMerCode = $this->pMerCode;
		$pMerCert = $this->pMerCert;
		$pAccount = $this->pAccount;
		
		$pMerBillNo = $orderno;
		$amount = $_POST ["p3_Amt"];
		$pAmount = number_format ( $amount, 2, '.', '' );
		$pIsCredit = "1"; // '银行直连
		$pBankCode = $_POST ["pd_FrpId"]; // request("rtype")
		$pAttach = $this->auth ['username'];
		
		$pVersion = "v1.0.0";
		$pMerName = $pMerCode;
		$pMsgId = "msg" . mt_rand ( 1000, 9999 );
		$pReqDate = date ( 'YmdHis' );
		// $pReqDate = $pReqDate;
		$pCurrencyType = "GB";
		$pGatewayType = "01";
		$pLang = "156";
		$pDate = date ( 'Ymd' );
		$pMerchanturl = "http://" . $this->url . "/index.php/Home/FillByBank/OrderReturn"; // 成功
		$pFailUrl = "http://" . $this->url . "/index.php/Home/FillByBank/OrderReturn"; // 失败
		
		$pOrderEncodeTyp = "5";
		$pRetEncodeType = "17";
		$pRetType = "1";
		$pServerUrl = "http://" . $this->url . "/index.php/Home/FillByBank/OrderReturn2"; // 异步
		$pBillEXP = 1;
		$pGoodsName = "ipsonlinepay";
		$pProductType = "1";
		
		$reqParam = "【商户号】:" . $pMerCode . "【商户名】:" . $pMerName . " 【账户号】:" . $pAccount . " 【消息编号】:" . $pMsgId . " 【商户请求时间】:" . $pReqDate . " 【商户订单号】:" . $pMerBillNo;
		$reqParam = $reqParam . " 【订单金额】:" . $pAmount . " 【订单日期】:" . $pDate . " 【币种】:" . $pCurrencyType . " 【支付方式】:" . $pGatewayType . " 【语言】:" . $pLang . " 【支付结果成功返回的商户URL】:" . $pMerchanturl;
		$reqParam = $reqParam . " 【支付结果失败返回的商户URL】:" . $pFailUrl . " 【商户数据包】:" . $pAttach . " 【订单支付接口加密方式】:" . $pOrderEncodeTyp . " 【交易返回接口加密方式】:" . $pRetEncodeType;
		$reqParam = $reqParam . " 【返回方式】:" . $pRetType . " 【Server to Server返回页面】:" . $pServerUrl . " 【订单有效期】:" . $pBillEXP . " 【商品名称】:" . $pGoodsName . " 【直连选项】:" . $pIsCredit;
		$reqParam = $reqParam . " 【银行号】:" . $pBankCode . " 【产品类型】:" . $pProductType;
		
		if ($pIsCredit == "0") {
			$pBankCode = "";
			$pProductType = "";
		}
		
		$strbodyxml = "<body><MerBillNo>" . $pMerBillNo . "</MerBillNo><Amount>" . $pAmount . "</Amount>";
		$strbodyxml = $strbodyxml . "<Date>" . $pDate . "</Date><CurrencyType>" . $pCurrencyType . "</CurrencyType>";
		$strbodyxml = $strbodyxml . "<GatewayType>" . $pGatewayType . "</GatewayType><Lang>" . $pLang . "</Lang>";
		$strbodyxml = $strbodyxml . "<Merchanturl>" . $pMerchanturl . "</Merchanturl><FailUrl>" . $pFailUrl . "</FailUrl>";
		$strbodyxml = $strbodyxml . "<Attach>" . $pAttach . "</Attach><OrderEncodeType>" . $pOrderEncodeTyp . "</OrderEncodeType>";
		$strbodyxml = $strbodyxml . "<RetEncodeType>" . $pRetEncodeType . "</RetEncodeType><RetType>" . $pRetType . "</RetType>";
		$strbodyxml = $strbodyxml . "<ServerUrl>" . $pServerUrl . "</ServerUrl><BillEXP>" . $pBillEXP . "</BillEXP>";
		$strbodyxml = $strbodyxml . "<GoodsName>" . $pGoodsName . "</GoodsName><IsCredit>" . $pIsCredit . "</IsCredit>";
		$strbodyxml = $strbodyxml . "<BankCode>" . $pBankCode . "</BankCode><ProductType>" . $pProductType . "</ProductType></body>";
		
		$pSignature = MD5 ( $strbodyxml . $pMerCode . $pMerCert ); // 数字签名
		
		$strheaderxml = "<head><Version>" . $pVersion . "</Version><MerCode>" . $pMerCode . "</MerCode>";
		$strheaderxml = $strheaderxml . "<MerName>" . $pMerName . "</MerName><Account>" . $pAccount . "</Account>";
		$strheaderxml = $strheaderxml . "<MsgId>" . $pMsgId . "</MsgId><ReqDate>" . $pReqDate . "</ReqDate>";
		$strheaderxml = $strheaderxml . "<Signature>" . $pSignature . "</Signature></head>";
		
		$strsubmitxml = "<Ips><GateWayReq>" . $strheaderxml . $strbodyxml . "</GateWayReq></Ips>";
		
		$form_url = "http://newpay.ips.com.cn/psfp-entry/gateway/payment.html";
		// $form_url="http://pay.huatiansc.com/ips31/ips31.php";
		
		$this->assign ( 'strsubmitxml', $strsubmitxml );
		$this->assign ( 'form_url', $form_url );
		
		$this->display ();
	}
	public function OrderReturn() {
		header ( "Content-type:text/html; charset=utf-8" );
		
		$pMerCode = $this->pMerCode;
		$pMerCert = $this->pMerCert;
		$pAccount = $this->pAccount;
		if (isset ( $_POST ["paymentResult"] )) {
			
			$paymentResult = $_POST ["paymentResult"]; // 获取信息
			
			$xml = simplexml_load_string ( $paymentResult, 'SimpleXMLElement', LIBXML_NOCDATA );
			
			// 读取相关xml中信息
			$ReferenceIDs = $xml->xpath ( "GateWayRsp/head/ReferenceID" ); // 关联号
			                                                            // var_dump($ReferenceIDs);
			$ReferenceID = $ReferenceIDs [0]; // 关联号
			$RspCodes = $xml->xpath ( "GateWayRsp/head/RspCode" ); // 响应编码
			$RspCode = $RspCodes [0];
			$RspMsgs = $xml->xpath ( "GateWayRsp/head/RspMsg" ); // 响应说明
			$RspMsg = $RspMsgs [0];
			$ReqDates = $xml->xpath ( "GateWayRsp/head/ReqDate" ); // 接受时间
			$ReqDate = $ReqDates [0];
			$RspDates = $xml->xpath ( "GateWayRsp/head/RspDate" ); // 响应时间
			$RspDate = $RspDates [0];
			$Signatures = $xml->xpath ( "GateWayRsp/head/Signature" ); // 数字签名
			$Signature = $Signatures [0];
			$MerBillNos = $xml->xpath ( "GateWayRsp/body/MerBillNo" ); // 商户订单号
			$MerBillNo = $MerBillNos [0];
			$CurrencyTypes = $xml->xpath ( "GateWayRsp/body/CurrencyType" ); // 币种
			$CurrencyType = $CurrencyTypes [0];
			$Amounts = $xml->xpath ( "GateWayRsp/body/Amount" ); // 订单金额
			$Amount = $Amounts [0];
			$Dates = $xml->xpath ( "GateWayRsp/body/Date" ); // 订单日期
			$Date = $Dates [0];
			$Statuss = $xml->xpath ( "GateWayRsp/body/Status" ); // 交易状态
			$Status = $Statuss [0];
			$Msgs = $xml->xpath ( "GateWayRsp/body/Msg" ); // 发卡行返回信息
			$Msg = $Msgs [0];
			$Attachs = $xml->xpath ( "GateWayRsp/body/Attach" ); // 数据包
			$Attach = $Attachs [0];
			$IpsBillNos = $xml->xpath ( "GateWayRsp/body/IpsBillNo" ); // IPS订单号
			$IpsBillNo = $IpsBillNos [0];
			$IpsTradeNos = $xml->xpath ( "GateWayRsp/body/IpsTradeNo" ); // IPS交易流水号
			$IpsTradeNo = $IpsTradeNos [0];
			$RetEncodeTypes = $xml->xpath ( "GateWayRsp/body/RetEncodeType" ); // 交易返回方式
			$RetEncodeType = $RetEncodeTypes [0];
			$BankBillNos = $xml->xpath ( "GateWayRsp/body/BankBillNo" ); // 银行订单号
			$BankBillNo = $BankBillNos [0];
			$ResultTypes = $xml->xpath ( "GateWayRsp/body/ResultType" ); // 支付返回方式
			$ResultType = $ResultTypes [0];
			$IpsBillTimes = $xml->xpath ( "GateWayRsp/body/IpsBillTime" ); // IPS处理时间
			$IpsBillTime = $IpsBillTimes [0];
			
			$resParam = "关联号:" . $ReferenceID . "响应编码:" . $RspCode . "响应说明:" . $RspMsg . "接受时间:" . $ReqDate . "响应时间:" . $RspDate . "数字签名:" . $Signature . "商户订单号:" . $MerBillNo . "币种:" . $CurrencyType . "订单金额:" . $Amount . "订单日期:" . $Date . "交易状态:" . $Status . "发卡行返回信息:" . $Msg . "数据包:" . $Attach . "IPS订单号:" . $IpsBillNo . "交易返回方式:" . $RetEncodeType . "银行订单号:" . $BankBillNo . "支付返回方式:" . $ResultType . "IPS处理时间:" . $IpsBillTime;
			
			// 验签明文
			// billno+【订单编号】+currencytype+【币种】+amount+【订单金额】+date+【订单日期】+succ+【成功标志】+ipsbillno+【IPS订单编号】+retencodetype +【交易返回签名方式】+【商户内部证书】
			
			$sbReq = "<body>" . "<MerBillNo>" . $MerBillNo . "</MerBillNo>" . "<CurrencyType>" . $CurrencyType . "</CurrencyType>" . "<Amount>" . $Amount . "</Amount>" . "<Date>" . $Date . "</Date>" . "<Status>" . $Status . "</Status>" . "<Msg><![CDATA[" . $Msg . "]]></Msg>" . "<Attach><![CDATA[" . $Attach . "]]></Attach>" . "<IpsBillNo>" . $IpsBillNo . "</IpsBillNo>" . "<IpsTradeNo>" . $IpsTradeNo . "</IpsTradeNo>" . "<RetEncodeType>" . $RetEncodeType . "</RetEncodeType>" . "<BankBillNo>" . $BankBillNo . "</BankBillNo>" . "<ResultType>" . $ResultType . "</ResultType>" . "<IpsBillTime>" . $IpsBillTime . "</IpsBillTime>" . "</body>";
			$sign = $sbReq . $pMerCode . $pMerCert;
			
			$md5sign = md5 ( $sign );
			
			$logName = "11.txt";
			
			$james = fopen ( $logName, "a+" );
			
			fwrite ( $james, "\r\n" . date ( "Y-m-d H:i:s" ) . "|" . $Signature . "|[" . $md5sign . "]|[" . $MerBillNo . "]|[" . $Amount . "]|[" . $Status . "]" );
			
			fwrite ( $james, "\r\n----------------------------------------------------------------------------------------" );
			fclose ( $james );
			
			// 判断签名
			if ($Signature == $md5sign) {
				
				if ($RspCode == '000000') {
					
					$extra_return_param = $Attach;
					$order_no = $MerBillNo;
					$order_amount = $Amount;
					
					$link = mysql_connect ( "localhost", "root", "root" ) or die ( "数据库连接失败" );
					mysql_select_db ( "ybb", $link );
					mysql_set_charset ( "utf8" );
					$result = mysql_query ( "select count(*) from ".C('DB_PREFIX')."fill where uname='{$extra_return_param}'", $link );
					
					$num = mysql_result ( $result, "0" );
					if (! $num) {
						echo "<tr align=center bgcolor=#FFFFFF><td colspan=16>暂无用户数据</td></tr>";
						exit ();
					} else {
						
						$result2 = mysql_query ( "select * from ".C('DB_PREFIX')."fill where uname='{$extra_return_param}'" );
						$row = mysql_fetch_assoc ( $result2 );
						
						$assets = $row ['num'];
						$uid = $row ['uid'];
						$username = $row ['uname'];
					}
					
					$result3 = mysql_query ( "select * from ".C('DB_PREFIX')."fill where tradeno='{$order_no}'" );
					$row3 = mysql_fetch_assoc ( $result3 );
					if (empty ( $row3 )) {
						echo "无此订单号" . $order_no . "订单";
						exit ();
					}
					$m_id = $row3 ['id'];
					$u_id = $row3 ['uid'];
					$p_money = $row3 ['num'];
					
					// $sql2 = "update k_money,k_user set k_money.status=1,k_money.update_time=now(),k_user.money=k_user.money+k_money.m_value,k_money.about='ips chong zhi ok',k_money.sxf=0,k_money.balance=k_user.money+k_money.m_value where k_money.uid=k_user.uid and k_money.m_id=$m_id and k_money.`status`=2";
					
					$sql2 = "UPDATE ".C('DB_PREFIX')."fill SET `status` =1 WHERE id=$m_id";
					
					if (mysql_query ( $sql2 )) {
						echo "";
					} else {
						echo "Error creating database: " . mysql_error ();
					}
					$sql3 = "UPDATE ".C('DB_PREFIX')."member SET rmb=rmb +$p_money WHERE member_id=$u_id";
					if (mysql_query ( $sql3 )) {
						echo "";
					} else {
						echo "Error creating database: " . mysql_error ();
					}
					echo "<Script language=javascript>alert('交易成功,返回订单列表.');window.location.href='index'</script>";
					exit ();
				}
			} else {
				echo "订单签名错误";
			}
		} else {
			echo "非法交易";
		}
	}
	public function OrderReturn2() {
		header ( "Content-type:text/html; charset=utf-8" );
		
		$pMerCode = $this->pMerCode;
		$pMerCert = $this->pMerCert;
		$pAccount = $this->pAccount;
		if (isset ( $_POST ["paymentResult"] )) {
			
			$paymentResult = $_POST ["paymentResult"]; // 获取信息
			
			$xml = simplexml_load_string ( $paymentResult, 'SimpleXMLElement', LIBXML_NOCDATA );
			
			// 读取相关xml中信息
			$ReferenceIDs = $xml->xpath ( "GateWayRsp/head/ReferenceID" ); // 关联号
			                                                            // var_dump($ReferenceIDs);
			$ReferenceID = $ReferenceIDs [0]; // 关联号
			$RspCodes = $xml->xpath ( "GateWayRsp/head/RspCode" ); // 响应编码
			$RspCode = $RspCodes [0];
			$RspMsgs = $xml->xpath ( "GateWayRsp/head/RspMsg" ); // 响应说明
			$RspMsg = $RspMsgs [0];
			$ReqDates = $xml->xpath ( "GateWayRsp/head/ReqDate" ); // 接受时间
			$ReqDate = $ReqDates [0];
			$RspDates = $xml->xpath ( "GateWayRsp/head/RspDate" ); // 响应时间
			$RspDate = $RspDates [0];
			$Signatures = $xml->xpath ( "GateWayRsp/head/Signature" ); // 数字签名
			$Signature = $Signatures [0];
			$MerBillNos = $xml->xpath ( "GateWayRsp/body/MerBillNo" ); // 商户订单号
			$MerBillNo = $MerBillNos [0];
			$CurrencyTypes = $xml->xpath ( "GateWayRsp/body/CurrencyType" ); // 币种
			$CurrencyType = $CurrencyTypes [0];
			$Amounts = $xml->xpath ( "GateWayRsp/body/Amount" ); // 订单金额
			$Amount = $Amounts [0];
			$Dates = $xml->xpath ( "GateWayRsp/body/Date" ); // 订单日期
			$Date = $Dates [0];
			$Statuss = $xml->xpath ( "GateWayRsp/body/Status" ); // 交易状态
			$Status = $Statuss [0];
			$Msgs = $xml->xpath ( "GateWayRsp/body/Msg" ); // 发卡行返回信息
			$Msg = $Msgs [0];
			$Attachs = $xml->xpath ( "GateWayRsp/body/Attach" ); // 数据包
			$Attach = $Attachs [0];
			$IpsBillNos = $xml->xpath ( "GateWayRsp/body/IpsBillNo" ); // IPS订单号
			$IpsBillNo = $IpsBillNos [0];
			$IpsTradeNos = $xml->xpath ( "GateWayRsp/body/IpsTradeNo" ); // IPS交易流水号
			$IpsTradeNo = $IpsTradeNos [0];
			$RetEncodeTypes = $xml->xpath ( "GateWayRsp/body/RetEncodeType" ); // 交易返回方式
			$RetEncodeType = $RetEncodeTypes [0];
			$BankBillNos = $xml->xpath ( "GateWayRsp/body/BankBillNo" ); // 银行订单号
			$BankBillNo = $BankBillNos [0];
			$ResultTypes = $xml->xpath ( "GateWayRsp/body/ResultType" ); // 支付返回方式
			$ResultType = $ResultTypes [0];
			$IpsBillTimes = $xml->xpath ( "GateWayRsp/body/IpsBillTime" ); // IPS处理时间
			$IpsBillTime = $IpsBillTimes [0];
			
			$resParam = "关联号:" . $ReferenceID . "响应编码:" . $RspCode . "响应说明:" . $RspMsg . "接受时间:" . $ReqDate . "响应时间:" . $RspDate . "数字签名:" . $Signature . "商户订单号:" . $MerBillNo . "币种:" . $CurrencyType . "订单金额:" . $Amount . "订单日期:" . $Date . "交易状态:" . $Status . "发卡行返回信息:" . $Msg . "数据包:" . $Attach . "IPS订单号:" . $IpsBillNo . "交易返回方式:" . $RetEncodeType . "银行订单号:" . $BankBillNo . "支付返回方式:" . $ResultType . "IPS处理时间:" . $IpsBillTime;
			
			// 验签明文
			// billno+【订单编号】+currencytype+【币种】+amount+【订单金额】+date+【订单日期】+succ+【成功标志】+ipsbillno+【IPS订单编号】+retencodetype +【交易返回签名方式】+【商户内部证书】
			
			$sbReq = "<body>" . "<MerBillNo>" . $MerBillNo . "</MerBillNo>" . "<CurrencyType>" . $CurrencyType . "</CurrencyType>" . "<Amount>" . $Amount . "</Amount>" . "<Date>" . $Date . "</Date>" . "<Status>" . $Status . "</Status>" . "<Msg><![CDATA[" . $Msg . "]]></Msg>" . "<Attach><![CDATA[" . $Attach . "]]></Attach>" . "<IpsBillNo>" . $IpsBillNo . "</IpsBillNo>" . "<IpsTradeNo>" . $IpsTradeNo . "</IpsTradeNo>" . "<RetEncodeType>" . $RetEncodeType . "</RetEncodeType>" . "<BankBillNo>" . $BankBillNo . "</BankBillNo>" . "<ResultType>" . $ResultType . "</ResultType>" . "<IpsBillTime>" . $IpsBillTime . "</IpsBillTime>" . "</body>";
			$sign = $sbReq . $pMerCode . $pMerCert;
			
			$md5sign = md5 ( $sign );
			
			$logName = "22.txt";
			
			$james = fopen ( $logName, "a+" );
			
			fwrite ( $james, "\r\n" . date ( "Y-m-d H:i:s" ) . "|" . $Signature . "|[" . $md5sign . "]|[" . $MerBillNo . "]|[" . $Amount . "]|[" . $Status . "]" );
			
			fwrite ( $james, "\r\n----------------------------------------------------------------------------------------" );
			fclose ( $james );
			
			// 判断签名
			if ($Signature == $md5sign) {
				
				if ($RspCode == '000000') {
					
					$extra_return_param = $Attach;
					$order_no = $Attach . '_' . $MerBillNo;
					$order_amount = $Amount;
					
					$link = mysql_connect ( "localhost", "root", "root" ) or die ( "数据库连接失败" );
					mysql_select_db ( "ybb", $link );
					mysql_set_charset ( "utf8" );
					$result = mysql_query ( "select count(*) from ".C('DB_PREFIX')."fill where uname='{$extra_return_param}'", $link );
					$num = mysql_result ( $result, "0" );
					if (! $num) {
						echo "<tr align=center bgcolor=#FFFFFF><td colspan=16>{$extra_return_param}暂无用户数据</td></tr>";
						exit ();
					} else {
						
						$result2 = mysql_query ( "select * from ".C('DB_PREFIX')."fill where uname='{$extra_return_param}'" );
						$row = mysql_fetch_assoc ( $result2 );
						
						$assets = $row ['num'];
						$uid = $row ['uid'];
						$username = $row ['uname'];
					}
					
					$results = mysql_query ( "select count(*) from ".C('DB_PREFIX')."fill where tradeno='{$order_no}'" );
					$nums = mysql_result ( $results, "0" );
					
					if (! $nums) {
						// $sql = "insert into k_money(uid,m_value,m_order,status,assets,balance) values($uid,$order_amount,'$order_no',2,$assets,$assets)";
						
						// if (mysql_query($sql)){echo "";}
						// else{echo "Error creating database: " . mysql_error();}
						
						$result3 = mysql_query ( "select m_id from ".C('DB_PREFIX')."fill where tradeno='{$order_no}'" );
						$row3 = mysql_fetch_assoc ( $result3 );
						
						$m_id = $row3 ['id'];
						$u_id = $row3 ['uid'];
						$p_money = $row3 ['num'];
						
						// $sql2 = "update k_money,k_user set k_money.status=1,k_money.update_time=now(),k_user.money=k_user.money+k_money.m_value,k_money.about='ips chong zhi ok',k_money.sxf=0,k_money.balance=k_user.money+k_money.m_value where k_money.uid=k_user.uid and k_money.m_id=$m_id and k_money.`status`=2";
						
						$sql2 = "UPDATE ".C('DB_PREFIX')."fill SET `status` =1 WHERE id=$m_id";
						
						if (mysql_query ( $sql2 )) {
							echo "";
						} else {
							echo "Error creating database: " . mysql_error ();
						}
						
						$sql3 = "UPDATE ".C('DB_PREFIX')."user SET rmb=rmb +$p_money WHERE member_id=$u_id";
						
						if (mysql_query ( $sql3 )) {
							echo "";
						} else {
							echo "Error creating database: " . mysql_error ();
						}
						
						echo "<Script language=javascript>alert('交易成功,请回首页重新登入.');window.open('http://" . $_SERVER ["HTTP_HOST"] . "/','Index')</script>";
						
						exit ();
					} else {
						
						echo "<Script language=javascript>alert('交易成功,请回首页重新登入');window.open('http://" . $_SERVER ["HTTP_HOST"] . "/','Index')</script>";
						
						exit ();
					}
				}
			} else {
				
				echo "订单签名错误";
			}
		} else {
			echo "非法交易";
		}
	}
}