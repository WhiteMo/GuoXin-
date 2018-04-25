<%@page import="Impl.*,Bean.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%
	pageContext.setAttribute("basePath", request.getContextPath());
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>订单列表 - 欢迎使用国鑫后台管理系统</title>
<meta name="keywords" content="">
<meta name="description" content="">
<link rel="shortcut icon" type="image/ico" href="http://localhost/shop4/favicon.ico">
<link type="text/css" rel="stylesheet" href="http://localhost/shop4/template/default/admin/css/style.css">
<script type="text/javascript" src="${basePath}/js/jquery.js"></script>
<script type="text/javascript" src="${basePath}/js/global.js"></script>
<script type="text/javascript" src="${basePath}/js/arttpl.js"></script>
<script type="text/javascript" src="${basePath}/plugin/layer/layer.js"></script><link rel="stylesheet" href="${basePath}/plugin/layer/skin/default/layer.css?v=3.0.11110" id="layuicss-skinlayercss">
<link href="${basePath}/plugin/my97/skin/WdatePicker.css" rel="stylesheet" type="text/css"></head>
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
	<div class="left" style="height: 123px;">
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
								<li class="sel"><a href="admin.php?mod=order"><span>├</span>订单列表</a></li>
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
								<li class=""><a href="admin.php?mod=payway"><span>├</span>支付设置</a></li>
								<li class=""><a href="admin.php?mod=menu"><span>├</span>导航管理</a></li>
								<li class=""><a href="admin.php?mod=ad"><span>├</span>广告管理</a></li>
								<li class=""><a href="admin.php?mod=link"><span>├</span>友情链接</a></li>
							</ul>
			<div class="clear"></div>
					</div>
			</div><div class="right" style="height: 123px;">
	<div class="now" style="width: 1109px;">
		<a href="admin.php?mod=order" class="sel">全部订单（3）</a>
		<a href="admin.php?mod=order&amp;state=wpay">等待付款（0）</a>
		<a href="admin.php?mod=order&amp;state=wsend">等待发货（0）</a>
		<a href="admin.php?mod=order&amp;state=wget">已发货（0）</a>
		<a href="admin.php?mod=order&amp;state=success">交易完成（3）</a>
		<a href="admin.php?mod=order&amp;state=close">交易关闭（0）</a>
		<div class="clear"></div>
	</div>
	<div class="right_main">
		<div class="search">
			<form method="get">
				<input type="hidden" name="mod" value="order">
				<input type="hidden" name="state" value="">
				订单编号：<input type="text" name="id" value="" class="inputtext input100 mar5">
				姓名：<input type="text" name="user_tname" value="" class="inputtext input80 mar5">
				电话：<input type="text" name="user_phone" value="" class="inputtext input80 mar5">
				帐号：<input type="text" name="user_name" value="" class="inputtext input80 mar5">
				下单时间：<input type="text" name="date1" value="" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})" class="Wdate inputtext" style="width:90px;height:20px;">	
				至 <input type="text" name="date2" value="" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})" class="Wdate inputtext" style="width:90px;height:20px;">			
				<input type="submit" value="搜索" class="input_btn">
				<input type="button" value="导出" class="input_btn" id="excel_btn">
			</form>
		</div>
		<table width="100%" border="0" cellspacing="0" cellpadding="0" class="list">
		<tbody><tr>
			<th class="bgtt" style="border-bottom:0;">商品详情</th>
			<th class="bgtt" style="border-bottom:0;" width="111">实付款(元)</th>
			<th class="bgtt" style="border-bottom:0;" width="251">收货信息</th>
			<th class="bgtt" style="border-bottom:0;" width="81">支付/发货</th>
			<th class="bgtt" style="border-bottom:0;" width="86">状态</th>
			<th class="bgtt" style="border-bottom:0;" width="86">操作</th>
		</tr>
		</tbody></table>
						<div class="hy_ordertw c666 mat10">
			订单编号：<span class="num" style="margin-right:60px">180325113238174</span>
			下单时间：<span class="num">2018-03-25 11:32</span>
		</div>
		<table width="100%" border="0" cellspacing="0" cellpadding="0" class="hy_orderlist">
		<tbody><tr>
			<td class="aleft" style="border-left:0;padding:8px 10px;">
								<div class="dingdan_list" style="padding-top:0">
				<table width="100%" class="dd_tb1">
				<tbody><tr>
					<td width="50"><a href="http://localhost/shop4/index.php/product/1" target="_blank"><img src="http://localhost/shop4/data/cache/thumb/2018-03/thumb_100x100_20180313111826a.jpg" width="40" height="40" class="imgbg"></a></td>
					<td>
						<a href="http://localhost/shop4/index.php/product/1" title="哇哈哈" target="_blank" class="cblue dd_name">哇哈哈</a>
											</td>
					<td width="70" class="aright">
						<span class="num">67.0</span>(×1)
					</td>
				</tr>
				</tbody></table>
				</div>
							</td>
			<td width="110">
				<p class="corg num strong">67.0</p>
				<p class="c999">（含运费：0.0）</p>
				<p class="c999">货到付款</p>
			</td>
			<td width="250" class="aleft" valign="top" style="color:#555">
				<p>【姓名】吴鑫 <span class="c888">(18810522533)</span></p>
				<p>【地址】广东中山中山市多撒多</p>
				<p>【留言】<span class="c888"></span></p>
			</td>
			<td width="80">
				<img src="http://localhost/shop4/template/default/admin/images/fu_1.png" title="2018-03-25 11:33">
				<img src="http://localhost/shop4/template/default/admin/images/fa_1.png" title="2018-03-25 11:33">
				<p><a href="admin.php?mod=order&amp;act=print_product&amp;id=180325113238174" class="c999" onclick="return pe_dialog(this, '打印发货单', 1000, 580)">[发货单]</a></p>
				<p><a href="admin.php?mod=order&amp;act=print_express&amp;id=180325113238174" class="c999" onclick="return pe_dialog(this, '打印快递单', 1000, 580)">[快递单]</a></p>
			</td>
			<td width="85"><span class="cgreen">交易完成</span><p class="mat5"><a href="admin.php?mod=order&amp;act=edit&amp;id=180325113238174" target="_blank" class="c999">订单详情</a></p></td>
			<td width="85" style="border-right:0;">
								-
							</td>
		</tr>
		</tbody></table>
						<div class="hy_ordertw c666 mat10">
			订单编号：<span class="num" style="margin-right:60px">180313114212485</span>
			下单时间：<span class="num">2018-03-13 11:42</span>
		</div>
		<table width="100%" border="0" cellspacing="0" cellpadding="0" class="hy_orderlist">
		<tbody><tr>
			<td class="aleft" style="border-left:0;padding:8px 10px;">
								<div class="dingdan_list" style="padding-top:0">
				<table width="100%" class="dd_tb1">
				<tbody><tr>
					<td width="50"><a href="http://localhost/shop4/index.php/product/1" target="_blank"><img src="http://localhost/shop4/data/cache/thumb/2018-03/thumb_100x100_20180313111826a.jpg" width="40" height="40" class="imgbg"></a></td>
					<td>
						<a href="http://localhost/shop4/index.php/product/1" title="哇哈哈" target="_blank" class="cblue dd_name">哇哈哈</a>
											</td>
					<td width="70" class="aright">
						<span class="num">67.0</span>(×1)
					</td>
				</tr>
				</tbody></table>
				</div>
							</td>
			<td width="110">
				<p class="corg num strong">67.0</p>
				<p class="c999">（含运费：0.0）</p>
				<p class="c999">货到付款</p>
			</td>
			<td width="250" class="aleft" valign="top" style="color:#555">
				<p>【姓名】吴鑫 <span class="c888">(18810522533)</span></p>
				<p>【地址】广东中山中山市多撒多</p>
				<p>【留言】<span class="c888"></span></p>
			</td>
			<td width="80">
				<img src="http://localhost/shop4/template/default/admin/images/fu_1.png" title="2018-03-25 11:32">
				<img src="http://localhost/shop4/template/default/admin/images/fa_1.png" title="2018-03-25 11:32">
				<p><a href="admin.php?mod=order&amp;act=print_product&amp;id=180313114212485" class="c999" onclick="return pe_dialog(this, '打印发货单', 1000, 580)">[发货单]</a></p>
				<p><a href="admin.php?mod=order&amp;act=print_express&amp;id=180313114212485" class="c999" onclick="return pe_dialog(this, '打印快递单', 1000, 580)">[快递单]</a></p>
			</td>
			<td width="85"><span class="cgreen">交易完成</span><p class="mat5"><a href="admin.php?mod=order&amp;act=edit&amp;id=180313114212485" target="_blank" class="c999">订单详情</a></p></td>
			<td width="85" style="border-right:0;">
								-
							</td>
		</tr>
		</tbody></table>
						<div class="hy_ordertw c666 mat10">
			订单编号：<span class="num" style="margin-right:60px">180313111956584</span>
			下单时间：<span class="num">2018-03-13 11:19</span>
		</div>
		<table width="100%" border="0" cellspacing="0" cellpadding="0" class="hy_orderlist">
		<tbody><tr>
			<td class="aleft" style="border-left:0;padding:8px 10px;">
								<div class="dingdan_list" style="padding-top:0">
				<table width="100%" class="dd_tb1">
				<tbody><tr>
					<td width="50"><a href="http://localhost/shop4/index.php/product/1" target="_blank"><img src="http://localhost/shop4/data/cache/thumb/2018-03/thumb_100x100_20180313111826a.jpg" width="40" height="40" class="imgbg"></a></td>
					<td>
						<a href="http://localhost/shop4/index.php/product/1" title="哇哈哈" target="_blank" class="cblue dd_name">哇哈哈</a>
											</td>
					<td width="70" class="aright">
						<span class="num">67.0</span>(×1)
					</td>
				</tr>
				</tbody></table>
				</div>
							</td>
			<td width="110">
				<p class="corg num strong">67.0</p>
				<p class="c999">（含运费：0.0）</p>
				<p class="c999">支付宝</p>
			</td>
			<td width="250" class="aleft" valign="top" style="color:#555">
				<p>【姓名】宗巍阳 <span class="c888">(18810522533)</span></p>
				<p>【地址】云南昆明官渡区三鹿奶粉</p>
				<p>【留言】<span class="c888"></span></p>
			</td>
			<td width="80">
				<img src="http://localhost/shop4/template/default/admin/images/fu_1.png" title="2018-03-13 11:20">
				<img src="http://localhost/shop4/template/default/admin/images/fa_1.png" title="2018-03-13 11:22">
				<p><a href="admin.php?mod=order&amp;act=print_product&amp;id=180313111956584" class="c999" onclick="return pe_dialog(this, '打印发货单', 1000, 580)">[发货单]</a></p>
				<p><a href="admin.php?mod=order&amp;act=print_express&amp;id=180313111956584" class="c999" onclick="return pe_dialog(this, '打印快递单', 1000, 580)">[快递单]</a></p>
			</td>
			<td width="85"><span class="cgreen">交易完成</span><p class="mat5"><a href="admin.php?mod=order&amp;act=edit&amp;id=180313111956584" target="_blank" class="c999">订单详情</a></p></td>
			<td width="85" style="border-right:0;">
								-
							</td>
		</tr>
		</tbody></table>
			</div>
	
</div>
<script type="text/javascript" src="${basePath}/plugin/my97/WdatePicker.js"></script>
<script type="text/javascript">
$(function(){
	$("#excel_btn").click(function(){
		window.location.href = "admin.php?mod=order&act=excel_out";
	})
})
</script>
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