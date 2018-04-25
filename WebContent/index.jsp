<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
    
<%
	pageContext.setAttribute("basePath", request.getContextPath());
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>国鑫网站管理系统</title>
<meta name="keywords" content="">
<meta name="description" content="">
<link rel="shortcut icon" type="image/ico" href="http:///shop4/favicon.ico">
<script type="text/javascript" src=" ${basePath}/js/jquery.js"></script>
<script type="text/javascript" src="${basePath}/js/global.js"></script>
<script type="text/javascript" src="${basePath}/js/arttpl.js"></script>
<script type="text/javascript" src="${basePath}/js/layer.js"></script>
<link rel="stylesheet" href="${basePath}/css/layer.css">
<link type="text/css" rel="stylesheet" href="${basePath}/css/style.css">
</head>
<body style="overflow-y:hidden">
<%@include file="/static/pagetop.jsp" %>
<div class="content">
<div class="left" style="height: 538px;">
<%@include file="/static/fenlei.jsp" %>
</div>
	
<div class="right" style="height: 538px;">
	<div class="d_fk mat15">
		<div class="d_fk_01">
			<div class="pad10">
				<div class="dfk_img1"><i></i></div>
				<div class="dfk_info1">
					<a href="http:///shop4/admin.php?mod=order&amp;state=wpay" target="_blank">
					<p>0</p>
					待付款订单
					</a>
				</div>
				<div class="clear"></div>
			</div>
		</div>
		<div class="d_fk_01">
			<div class="pad10">
				<div class="dfk_img2"><i></i></div>
				<div class="dfk_info1">
					<a href="http:///shop4/admin.php?mod=order&amp;state=wsend" target="_blank">
					<p>1</p>
					待发货订单
					</a>
				</div>
			</div>
		</div>
		<div class="d_fk_01">
			<div class="pad10">
				<div class="dfk_img3"><i></i></div>
				<div class="dfk_info1">
					<a href="http:///shop4/admin.php?mod=order&amp;state=wget" target="_blank">
					<p>1</p>
					待确认订单
					</a>
				</div>
			</div>
		</div>
		<div class="d_fk_01">
			<div class="pad10" style="margin-right:0">
				<div class="dfk_img4"><i></i></div>
				<div class="dfk_info1">
					<a href="http:///shop4/admin.php?mod=cashout" target="_blank">
					<p>0</p>
					待结算提现
					</a>
				</div>
			</div>
		</div>	
	</div>
	<div class="clear"></div>
	<div class="xtxx_fl">
		<div style="padding-right:15px;">
		<div class="xtxx" style="height:auto; border-bottom:0">
			<div class="xt_tt">
				<span>用户统计</span>
			</div>
			<table width="100%" border="0" cellspacing="0" cellpadding="0" class="wenzhang_bak tj_tb">
			<tbody><tr>
				<td class="aright" width="105"><span>今日访客：</span></td>
				<td>0 <span>人</span></td>
			</tr>
			<tr style="background:#f9fafc">
				<td class=" aright"><span>昨日访客：</span></td>
				<td>0 <span>人</span></td>
			</tr>
			<tr>
				<td class=" aright"><span>累计访客：</span></td>
				<td>5 <span>人</span></td>
			</tr>
			<tr style="background:#f9fafc">
				<td class=" aright"><span>今日注册：</span></td>
				<td>0 <span>人</span></td>
			</tr>
			<tr>
				<td class=" aright"><span>昨日注册：</span></td>
				<td>0 <span>人</span></td>
			</tr>	
			<tr style="background:#f9fafc">
				<td class=" aright"><span>累计注册：</span></td>
				<td>1 <span>人</span></td>
			</tr>
			</tbody></table>
		</div>
		</div>
	</div>
	<div class="xtxx_fl">
		<div class="xtxx" style="height:auto; border-bottom:0">
			<div class="xt_tt">
				<span>订单统计</span>
			</div>
			<table width="100%" border="0" cellspacing="0" cellpadding="0" class="wenzhang_bak tj_tb">
			<tbody><tr>
				<td class=" aright" width="105"><span>今日订单：</span></td>
				<td>0 <span>个</span></td>
			</tr>
			<tr style="background:#f9fafc">
				<td class=" aright"><span>昨日订单：</span></td>
				<td>0 <span>个</span></td>
			</tr>
			<tr>
				<td class="aright"><span>累计订单：</span></td>
				<td>2 <span>个</span></td>
			</tr>
			<tr style="background:#f9fafc">
				<td class="aright"><span>产品总数：</span></td>
				<td>1 <span>个</span></td>
			</tr>	
			<tr>
				<td class=" aright"><span>评价总数：</span></td>
				<td>0 <span>条</span></td>
			</tr>
			<tr style="background:#f9fafc">
				<td class=" aright"><span>提现总数：</span></td>
				<td>0 <span>笔</span></td>
			</tr>
			</tbody></table>
		</div>
	</div>
	<div class="xtxx_fl mab10">
		<div style="padding-right:15px;">
		<div class="xtxx">
			<div class="xt_tt">
				<span>系统信息</span>
			</div>
			<table width="100%" border="0" cellspacing="0" cellpadding="0" class="xx_tb">
			<tbody><tr>
				<td align="right" width="100"><span>系统版本：</span></td>
				<td style="border-top:0"><a href="http://www.phpshe.com/" target="_blank" class="corg">PHPSHE1.6免费版</a><span class="mal5">（授权编号：<span id="license_num">未授权</span>）</span></td>
			</tr>
			<tr>
				<td align="right"><span>购买授权：</span></td>
				<td>
					<a href="http://wpa.qq.com/msgrd?v=3&amp;uin=76265959&amp;site=qq&amp;menu=yes" target="_blank"><img border="0" src="./index_files/qq.png" alt="咨询客服" title="咨询客服"></a>
				</td>
			</tr>
			<tr>
				<td align="right"><span>官方网站：</span></td>
				<td><a class="cblue" href="http://www.phpshe.com/" target="_blank">http://www.phpshe.com</a></td>
			</tr>
			<tr>
				<td align="right"><span>咨询热线：</span></td>
				<td>15839823500</td>
			</tr>
			<tr>
				<td align="right"><span>服务器信息：</span></td>
				<td>WINNT Apache/2.4.23 PHP/5.6.25 <a href="http:///shop4/admin.php?mod=index&amp;act=phpinfo" target="_blank" class="c888">[详情]</a></td>
			</tr>
			<tr>
				<td align="right"><span>数据库信息：</span></td>
				<td>MySQL 5.7.14</td>
			</tr>
			</tbody></table>
			</div>
		</div>
	</div>
	<div class="xtxx_fl mab10">
		<div class="xtxx">
			<div class="xt_tt">
				<span>官方动态</span>
			</div>
			<div class="gfdt">
				<iframe src="./index_files/shop.html" frameborder="0" width="100%" height="275px"></iframe>
			</div>
		</div>
	</div>
	<div class="clear"></div>
</div>


<div class="clear"></div>
<div class="foot">Copyright <span class="num">©</span> 2008-2014 <a target="_blank" href="#">国鑫网络开发小组</a> 版权所有</div>
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

</script>

	<!--  <style type="text/css">
	#msgshow{position:absolute;font-family:'Arial';}
	#msgshow_l{background:url(http:///shop4/include/image/dui_l.gif) no-repeat; width:38px; height:50px; float:left;}
	#msgshow_r{background:url(http:///shop4/include/image/dui_r.gif) no-repeat; width:7px; height:50px; float:left;}
	#msgshow_m{background:url(http:///shop4/include/image/dui_m.gif) repeat-x; height:34px; float:left; padding:16px 10px 0 10px; font-size:14px; font-weight:bold; color:#598f13; display:inline-block; min-width:95px; _width:95px;}
	</style>-->
	<script type="text/javascript">
		$("#msgshow").remove();
		$("body").append('<div id="msgshow"><div id="msgshow_l"></div><div id="msgshow_m">登录成功！</div><div id="msgshow_r"></div><div class="clear"></div></div>');
		_w_top = document.body.scrollTop || document.documentElement.scrollTop;
		_w_height = $(window).height();
		_w_width = $(window).width();
		_d_top = _w_top + (_w_height - $("#msgshow").height()) / 2;
		_d_left = (_w_width - $("#msgshow_m").width() - 65) / 2;
		$("#msgshow").css({"top":_d_top, "left":_d_left}).show();
		setTimeout(function(){ $("#msgshow").fadeOut(2000) }, 2000);
	</script><div id="msgshow" style="top: 293.5px; left: 603px; display: none;"><div id="msgshow_l"></div><div id="msgshow_m">登录成功！</div><div id="msgshow_r"></div><div class="clear"></div></div></body></html>