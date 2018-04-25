<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>支付方式 - 欢迎使用PHPSHE商城系统</title>
<meta name="keywords" content="">
<meta name="description" content="">
<link rel="shortcut icon" type="image/ico" href="http://localhost/shop4/favicon.ico">
<link type="text/css" rel="stylesheet" href="http://localhost/shop4/template/default/admin/css/style.css">
<script type="text/javascript" src="http://localhost/shop4/include/js/jquery.js"></script>
<script type="text/javascript" src="http://localhost/shop4/include/js/global.js"></script>
<script type="text/javascript" src="http://localhost/shop4/include/js/arttpl.js"></script>
<script type="text/javascript" src="http://localhost/shop4/include/plugin/layer/layer.js"></script><link rel="stylesheet" href="http://localhost/shop4/include/plugin/layer/skin/default/layer.css?v=3.0.11110" id="layuicss-skinlayercss">
</head>
<body style="overflow-y:hidden">
<div class="bgimg"></div>
<div class="pagetop">
	<div class="head">
		<div class="logo fl"><img src="http://localhost/shop4/template/default/admin/images/logo.png"></div>
		<div class="head_r fr">
			<a href="admin.php" class="head_tb1" style="border-left:0"><s></s>概况</a>
			<a href="admin.php?mod=moban" class="head_tb8"><s></s>模板</a>
			<a href="admin.php?mod=tongji" class="head_tb3"><s></s>统计</a>
			<a href="admin.php?mod=db" class="head_tb5"><s></s>备份</a>
			<a href="admin.php?mod=cache" class="head_tb6"><s></s>缓存</a>
			<a href="http://localhost/shop4/" target="_blank" class="head_tb7"><s></s>首页</a>
			<a href="admin.php?mod=do&amp;act=logout" class="head_tb2" style="background:none"><s></s>退出</a>
		</div>
		<div class="clear"></div>
	</div>
</div>
<div class="content">
	<div class="left" style="height: 143px;">
				<div class="fenlei">
			<h3 class="fl_tb1"><s></s>商品中心</h3>
			<ul>
								<li class=""><a href="admin.php?mod=product&amp;state=1"><span>├</span>商品列表</a></li>
								<li class=""><a href="admin.php?mod=category"><span>├</span>商品分类</a></li>
								<li class=""><a href="admin.php?mod=brand"><span>├</span>品牌管理</a></li>
								<li class=""><a href="admin.php?mod=comment"><span>├</span>评价管理</a></li>
							</ul>
			<div class="clear"></div>
			<div class="xian"></div>		</div>
				<div class="fenlei">
			<h3 class="fl_tb3"><s></s>交易中心</h3>
			<ul>
								<li class=""><a href="admin.php?mod=order"><span>├</span>订单列表</a></li>
								<li class=""><a href="admin.php?mod=moneylog"><span>├</span>资金明细</a></li>
								<li class=""><a href="admin.php?mod=pointlog"><span>├</span>积分明细</a></li>
								<li class=""><a href="admin.php?mod=order_pay"><span>├</span>充值记录</a></li>
								<li class=""><a href="admin.php?mod=cashout"><span>├</span>提现管理</a></li>
							</ul>
			<div class="clear"></div>
			<div class="xian"></div>		</div>
				<div class="fenlei">
			<h3 class="fl_tb4"><s></s>用户中心</h3>
			<ul>
								<li class=""><a href="admin.php?mod=user"><span>├</span>会员列表</a></li>
								<li class=""><a href="admin.php?mod=userlevel"><span>├</span>会员等级</a></li>
								<li class=""><a href="admin.php?mod=admin"><span>├</span>管 理 员</a></li>
								<li class=""><a href="admin.php?mod=adminlevel"><span>├</span>管理权限</a></li>
							</ul>
			<div class="clear"></div>
			<div class="xian"></div>		</div>
				<div class="fenlei">
			<h3 class="fl_tb2"><s></s>文章中心</h3>
			<ul>
								<li class=""><a href="admin.php?mod=class"><span>├</span>文章分类</a></li>
								<li class=""><a href="admin.php?mod=article"><span>├</span>文章列表</a></li>
							</ul>
			<div class="clear"></div>
			<div class="xian"></div>		</div>
				<div class="fenlei">
			<h3 class="fl_tb6"><s></s>控制面板</h3>
			<ul>
								<li class=""><a href="admin.php?mod=setting&amp;act=base"><span>├</span>网站设置</a></li>
								<li class="sel"><a href="admin.php?mod=payway"><span>├</span>支付设置</a></li>
								<li class=""><a href="admin.php?mod=menu"><span>├</span>导航管理</a></li>
								<li class=""><a href="admin.php?mod=ad"><span>├</span>广告管理</a></li>
								<li class=""><a href="admin.php?mod=link"><span>├</span>友情链接</a></li>
							</ul>
			<div class="clear"></div>
					</div>
			</div><div class="right" style="height: 143px;">
	<div class="now" style="width: 1125px;">
		<a href="admin.php?mod=payway" class="sel">支付方式（6）</a>
		<div class="clear"></div>
	</div>
	<div class="right_main" style="padding-bottom: 0px;">
		<form method="post" id="form">
		<table width="100%" border="0" cellspacing="0" cellpadding="0" class="list">
		<tbody><tr>
			<th class="bgtt" width="50">ID号</th>
			<th class="bgtt" width="40">排序</th>
			<th class="bgtt" width="150">图标</th>
			<th class="bgtt" width="130">支付名称</th>
			<th class="bgtt">支付描述
			</th><th class="bgtt" width="90">启用状态</th>
			<th class="bgtt" width="80">操作</th>
		</tr>
				<tr>
			<td style="background-color: rgb(255, 255, 255);">1</td>
			<td style="background-color: rgb(255, 255, 255);"><input type="text" name="payway_order[1]" value="0" class="inputtext input30 center"></td>
			<td style="padding: 15px 0px; background-color: rgb(255, 255, 255);"><img src="http://localhost/shop4/include/plugin/payway/balance/logo.png" style="height:29px"></td>
			<td style="background-color: rgb(255, 255, 255);">余额支付</td>
			<td class="aleft" style="background-color: rgb(255, 255, 255);">使用帐户余额支付，只有会员才能使用。</td>
			<td style="background-color: rgb(255, 255, 255);">
								<a href="admin.php?mod=payway&amp;act=state&amp;state=0&amp;id=1&amp;token=67ed2865164bef115fded4aeff673f71"><img src="http://localhost/shop4/template/default/admin/images/dui.png"></a>
							</td>
			<td style="background-color: rgb(255, 255, 255);"><a href="admin.php?mod=payway&amp;act=edit&amp;id=1" class="admin_edit mal10">修改</a></td>
		</tr>
				<tr>
			<td style="background-color: rgb(255, 255, 255);">2</td>
			<td style="background-color: rgb(255, 255, 255);"><input type="text" name="payway_order[2]" value="0" class="inputtext input30 center"></td>
			<td style="padding: 15px 0px; background-color: rgb(255, 255, 255);"><img src="http://localhost/shop4/include/plugin/payway/alipay/logo.png" style="height:29px"></td>
			<td style="background-color: rgb(255, 255, 255);">支付宝</td>
			<td class="aleft" style="background-color: rgb(255, 255, 255);">即时到帐接口，买家交易金额直接转入卖家支付宝账户。</td>
			<td style="background-color: rgb(255, 255, 255);">
								<a href="admin.php?mod=payway&amp;act=state&amp;state=0&amp;id=2&amp;token=67ed2865164bef115fded4aeff673f71"><img src="http://localhost/shop4/template/default/admin/images/dui.png"></a>
							</td>
			<td style="background-color: rgb(255, 255, 255);"><a href="admin.php?mod=payway&amp;act=edit&amp;id=2" class="admin_edit mal10">修改</a></td>
		</tr>
				<tr>
			<td style="background-color: rgb(255, 255, 255);">3</td>
			<td style="background-color: rgb(255, 255, 255);"><input type="text" name="payway_order[3]" value="0" class="inputtext input30 center"></td>
			<td style="padding: 15px 0px; background-color: rgb(255, 255, 255);"><img src="http://localhost/shop4/include/plugin/payway/wechat/logo.png" style="height:29px"></td>
			<td style="background-color: rgb(255, 255, 255);">微信支付</td>
			<td class="aleft" style="background-color: rgb(255, 255, 255);">用户使用微信扫码支付</td>
			<td style="background-color: rgb(255, 255, 255);">
								<a href="admin.php?mod=payway&amp;act=state&amp;state=0&amp;id=3&amp;token=67ed2865164bef115fded4aeff673f71"><img src="http://localhost/shop4/template/default/admin/images/dui.png"></a>
							</td>
			<td style="background-color: rgb(255, 255, 255);"><a href="admin.php?mod=payway&amp;act=edit&amp;id=3" class="admin_edit mal10">修改</a></td>
		</tr>
				<tr>
			<td style="background-color: rgb(255, 255, 255);">4</td>
			<td style="background-color: rgb(255, 255, 255);"><input type="text" name="payway_order[4]" value="0" class="inputtext input30 center"></td>
			<td style="padding: 15px 0px; background-color: rgb(255, 255, 255);"><img src="http://localhost/shop4/include/plugin/payway/passpay/logo.png" style="height:29px"></td>
			<td style="background-color: rgb(255, 255, 255);">云支付</td>
			<td class="aleft" style="background-color: rgb(255, 255, 255);">云通付（www.passpay.net）适合个人/团体快速接入支付功能，含支付宝/微信支付/网银等渠道</td>
			<td style="background-color: rgb(255, 255, 255);">
								<a href="admin.php?mod=payway&amp;act=state&amp;state=0&amp;id=4&amp;token=67ed2865164bef115fded4aeff673f71"><img src="http://localhost/shop4/template/default/admin/images/dui.png"></a>
							</td>
			<td style="background-color: rgb(255, 255, 255);"><a href="admin.php?mod=payway&amp;act=edit&amp;id=4" class="admin_edit mal10">修改</a></td>
		</tr>
				<tr>
			<td style="background-color: rgb(255, 255, 255);">5</td>
			<td style="background-color: rgb(255, 255, 255);"><input type="text" name="payway_order[5]" value="0" class="inputtext input30 center"></td>
			<td style="padding: 15px 0px; background-color: rgb(255, 255, 255);"><img src="http://localhost/shop4/include/plugin/payway/bank/logo.png" style="height:29px"></td>
			<td style="background-color: rgb(255, 255, 255);">转账汇款</td>
			<td class="aleft" style="background-color: rgb(255, 255, 255);">通过线下汇款方式支付，汇款帐号：建设银行 621700254000005xxxx 刘某某</td>
			<td style="background-color: rgb(255, 255, 255);">
								<a href="admin.php?mod=payway&amp;act=state&amp;state=0&amp;id=5&amp;token=67ed2865164bef115fded4aeff673f71"><img src="http://localhost/shop4/template/default/admin/images/dui.png"></a>
							</td>
			<td style="background-color: rgb(255, 255, 255);"><a href="admin.php?mod=payway&amp;act=edit&amp;id=5" class="admin_edit mal10">修改</a></td>
		</tr>
				<tr>
			<td style="background-color: rgb(255, 255, 255);">6</td>
			<td style="background-color: rgb(255, 255, 255);"><input type="text" name="payway_order[6]" value="0" class="inputtext input30 center"></td>
			<td style="padding: 15px 0px; background-color: rgb(255, 255, 255);"><img src="http://localhost/shop4/include/plugin/payway/cod/logo.png" style="height:29px"></td>
			<td style="background-color: rgb(255, 255, 255);">货到付款</td>
			<td class="aleft" style="background-color: rgb(255, 255, 255);">送货上门后再收款，支持现金、POS机刷卡、支票支付</td>
			<td style="background-color: rgb(255, 255, 255);">
								<a href="admin.php?mod=payway&amp;act=state&amp;state=0&amp;id=6&amp;token=67ed2865164bef115fded4aeff673f71"><img src="http://localhost/shop4/template/default/admin/images/dui.png"></a>
							</td>
			<td style="background-color: rgb(255, 255, 255);"><a href="admin.php?mod=payway&amp;act=edit&amp;id=6" class="admin_edit mal10">修改</a></td>
		</tr>
				</tbody></table>
		</form>
	</div>
	<div class="right_bottom">
		<span class="fl mal10">
			<button href="admin.php?mod=payway&amp;act=order&amp;token=67ed2865164bef115fded4aeff673f71" onclick="pe_doall(this,'form')">更新排序</button>
		</span>
		<span class="fr fenye"></span>
		<div class="clear"></div>
	</div>
</div>
	<div class="clear"></div>
	<!--<div class="foot">Copyright <span class="num">©</span> 2008-2014 <a target="_blank" href="http://www.phpshe.com">灵宝简好网络科技有限公司</a> 版权所有</div>-->
</div>
<script type="text/javascript">
$(function(){
	if ($(".right_bottom").height() == 0) {
		$(".right_bottom").remove();
	}
	if ($(".list tr").length > 1) {
		$(".right_main").css("padding-bottom", 0);	
	}
	win_init();
	$(window).resize(function() {
		win_init();
	});
	if ($(".left .sel").length) {
		$(".left").scrollTop(localStorage.getItem('left_scrolltop'));
	}
	else {
		localStorage.setItem('left_scrolltop', 0);
	}
	$(".left").scroll(function(){
		localStorage.setItem('left_scrolltop', $(".left").scrollTop());
	})
	$(".list").find("td").hover(
		function(){
			if ($(this).hasClass("bgtt") || $(this).is("[nosel=1]")) return;
			$(this).parent("tr").children("td[nosel!=1]").css("background-color", "#fbfbfb");
		},
		function(){
			if ($(this).hasClass("bgtt") || $(this).is("[nosel=1]")) return;
			$(this).parent("tr").children("td[nosel!=1]").css("background-color", "#fff");
		}
	)
})
function win_init() {
	$(".left").add(".right").css("height", $(window).height() - $(".pagetop").height());
	$(".now").css("width", $(".right_main").outerWidth());
	//$(".right_main").css("height", $(window).height() -  $(".pagetop").height() - $(".now:eq(0)").outerHeight() - $(".right_bottom").outerHeight() + 38);
}
pe_loadscript("http://localhost/shop4/index.php?mod=notice");
</script>

</body></html>