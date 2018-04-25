<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>修改文章 - 欢迎使用PHPSHE商城系统</title>
<meta name="keywords" content="">
<meta name="description" content="">
<link rel="shortcut icon" type="image/ico"
	href="http://localhost/shop4/favicon.ico">
<link type="text/css" rel="stylesheet"
	href="http://localhost/shop4/template/default/admin/css/style.css">
<script type="text/javascript"
	src="http://localhost/shop4/include/js/jquery.js"></script>
<script type="text/javascript"
	src="http://localhost/shop4/include/js/global.js"></script>
<script type="text/javascript"
	src="http://localhost/shop4/include/js/arttpl.js"></script>
<script type="text/javascript"
	src="http://localhost/shop4/include/plugin/layer/layer.js"></script>
<link rel="stylesheet"
	href="http://localhost/shop4/include/plugin/layer/skin/default/layer.css?v=3.0.11110"
	id="layuicss-skinlayercss">
<link
	href="http://localhost/shop4/include/plugin/my97/skin/WdatePicker.css"
	rel="stylesheet" type="text/css">
<link
	href="http://localhost/shop4/include/plugin/editor/themes/default/default.css"
	rel="stylesheet">
</head>
<body style="overflow-y: hidden">
	<div class="bgimg"></div>
	<div class="pagetop">
		<div class="head">
			<div class="logo fl">
				<img
					src="http://localhost/shop4/template/default/admin/images/logo.png">
			</div>
			<div class="head_r fr">
				<a href="admin.php" class="head_tb1" style="border-left: 0"><s></s>概况</a>
				<a href="admin.php?mod=moban" class="head_tb8"><s></s>模板</a> <a
					href="admin.php?mod=tongji" class="head_tb3"><s></s>统计</a> <a
					href="admin.php?mod=db" class="head_tb5"><s></s>备份</a> <a
					href="admin.php?mod=cache" class="head_tb6"><s></s>缓存</a> <a
					href="http://localhost/shop4/" target="_blank" class="head_tb7"><s></s>首页</a>
				<a href="admin.php?mod=do&amp;act=logout" class="head_tb2"
					style="background: none"><s></s>退出</a>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<div class="content">
		<div class="left" style="height: 143px;">
			<div class="fenlei">
				<h3 class="fl_tb1">
					<s></s>商品中心
				</h3>
				<ul>
					<li class=""><a href="admin.php?mod=product&amp;state=1"><span>├</span>商品列表</a></li>
					<li class=""><a href="admin.php?mod=category"><span>├</span>商品分类</a></li>
					<li class=""><a href="admin.php?mod=brand"><span>├</span>品牌管理</a></li>
					<li class=""><a href="admin.php?mod=comment"><span>├</span>评价管理</a></li>
				</ul>
				<div class="clear"></div>
				<div class="xian"></div>
			</div>
			<div class="fenlei">
				<h3 class="fl_tb3">
					<s></s>交易中心
				</h3>
				<ul>
					<li class=""><a href="admin.php?mod=order"><span>├</span>订单列表</a></li>
					<li class=""><a href="admin.php?mod=moneylog"><span>├</span>资金明细</a></li>
					<li class=""><a href="admin.php?mod=pointlog"><span>├</span>积分明细</a></li>
					<li class=""><a href="admin.php?mod=order_pay"><span>├</span>充值记录</a></li>
					<li class=""><a href="admin.php?mod=cashout"><span>├</span>提现管理</a></li>
				</ul>
				<div class="clear"></div>
				<div class="xian"></div>
			</div>
			<div class="fenlei">
				<h3 class="fl_tb4">
					<s></s>用户中心
				</h3>
				<ul>
					<li class=""><a href="admin.php?mod=user"><span>├</span>会员列表</a></li>
					<li class=""><a href="admin.php?mod=userlevel"><span>├</span>会员等级</a></li>
					<li class=""><a href="admin.php?mod=admin"><span>├</span>管
							理 员</a></li>
					<li class=""><a href="admin.php?mod=adminlevel"><span>├</span>管理权限</a></li>
				</ul>
				<div class="clear"></div>
				<div class="xian"></div>
			</div>
			<div class="fenlei">
				<h3 class="fl_tb2">
					<s></s>文章中心
				</h3>
				<ul>
					<li class=""><a href="admin.php?mod=class"><span>├</span>文章分类</a></li>
					<li class="sel"><a href="admin.php?mod=article"><span>├</span>文章列表</a></li>
				</ul>
				<div class="clear"></div>
				<div class="xian"></div>
			</div>
			<div class="fenlei">
				<h3 class="fl_tb6">
					<s></s>控制面板
				</h3>
				<ul>
					<li class=""><a href="admin.php?mod=setting&amp;act=base"><span>├</span>网站设置</a></li>
					<li class=""><a href="admin.php?mod=payway"><span>├</span>支付设置</a></li>
					<li class=""><a href="admin.php?mod=menu"><span>├</span>导航管理</a></li>
					<li class=""><a href="admin.php?mod=ad"><span>├</span>广告管理</a></li>
					<li class=""><a href="admin.php?mod=link"><span>├</span>友情链接</a></li>
				</ul>
				<div class="clear"></div>
			</div>
		</div>
		<div class="right" style="height: 143px;">
			<div class="now" style="width: 1125px;">
				<a href="javascript:;" class="sel">修改文章</a>
				<div class="clear"></div>
			</div>
			<div class="right_main">
				<form method="post">
					<table width="100%" border="0" cellspacing="0" cellpadding="0"
						class="wenzhang mat20">
						<tbody>
							<tr>
								<td align="right" width="150">文章名称：</td>
								<td><input type="text" name="info[article_name]"
									value="PHPSHE商城系统商业版" class="inputall input500"></td>
							</tr>
							<tr>
								<td align="right">文章分类：</td>
								<td><select name="info[class_id]" class="inputselect">
										<option value="1" selected="selected">[资讯中心] 网站公告</option>
										<option value="2">[资讯中心] 公司动态</option>
										<option value="3">[资讯中心] 相关知识</option>
										<option value="0" disabled="">-------------------</option>
										<option value="4">[帮助中心] 用户指南</option>
										<option value="5">[帮助中心] 配送方式</option>
										<option value="12">[帮助中心] 支付方式</option>
										<option value="6">[帮助中心] 售后服务</option>
										<option value="7">[帮助中心] 关于我们</option>
								</select></td>
							</tr>
							<tr>
								<td align="right">发布日期：</td>
								<td><input type="text" name="info[article_atime]"
									value="2017-05-15 15:15"
									onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm'})"
									class="Wdate inputall"></td>
							</tr>
							<tr>
								<td align="right">文章详情：</td>
								<td>
									<textarea name="info[article_text]" id="editortext"
										style="width: 760px; height: 400px; display: none;"></textarea></td>
							</tr>
						</tbody>
					</table>
					<div class="mat10 mab10">
						<input type="hidden" name="pe_token"
							value="67ed2865164bef115fded4aeff673f71"> <input
							type="submit" name="pesubmit" value="提 交" class="tjbtn"
							style="margin-left: 435px">
					</div>
				</form>
			</div>
		</div>
		<script type="text/javascript"
			src="http://localhost/shop4/include/plugin/my97/WdatePicker.js"></script>
		<script type="text/javascript"
			src="http://localhost/shop4/include/plugin/editor/kindeditor.js"></script>
		<script type="text/javascript"
			src="http://localhost/shop4/include/plugin/editor/lang/zh_CN.js"></script>
		<script type="text/javascript" charset="utf-8">
			var editor;
			KindEditor.ready(function(K) {
				editor = K.create('#editortext', {
					allowFlashUpload : false
				});
			});
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

</body>
</html>