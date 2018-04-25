<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>文章列表 - 欢迎使用PHPSHE商城系统</title>
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
								<li class="sel"><a href="admin.php?mod=article"><span>├</span>文章列表</a></li>
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
			</div><div class="right" style="height: 143px;">
	<div class="now" style="width: 1125px;">
		<a href="admin.php?mod=article" class="sel">资讯中心（3）</a>
		<a href="admin.php?mod=article&amp;type=help">帮助中心（16）</a>
		<a href="admin.php?mod=article&amp;act=add" id="fabu">添加文章</a>
		<div class="clear"></div>
	</div>
	<div class="right_main" style="padding-bottom: 0px;">
		<div class="search">
			<form method="get">
				<input type="hidden" name="mod" value="article">
				<input type="hidden" name="type" value="">
				文章名称：<input type="text" name="name" value="" class="inputtext input200">
				<select name="class_id" class="selectmini">
				<option value="" href="?mod=article">= 所有分类 =</option>
												<option value="1" href="?mod=article&amp;class_id=1">1)网站公告</option>
								<option value="2" href="?mod=article&amp;class_id=2">2)公司动态</option>
								<option value="3" href="?mod=article&amp;class_id=3">3)相关知识</option>
								</select>
				<input type="submit" value="搜索" class="input_btn">
			</form>
		</div>
		<form method="post" id="form">
		<table width="100%" border="0" cellspacing="0" cellpadding="0" class="list">
		<tbody><tr>
			<th class="bgtt" width="20"><input type="checkbox" name="checkall" onclick="pe_checkall(this, 'article_id')"></th>
			<th class="bgtt" width="50">ID号</th>
			<th class="bgtt aleft">文章名称</th>
			<th class="bgtt" width="120">分类名称</th>
			<th class="bgtt" width="120">发布日期</th>
			<th class="bgtt" width="70">浏览量</th>
			<th class="bgtt" width="110">操作</th>
		</tr>
				<tr>
			<td><input type="checkbox" name="article_id[]" value="3"></td>
			<td>3</td>
			<td class="aleft"><a href="http://localhost/shop4/index.php/article/3" target="_blank">PHPSHE商城系统商业版</a></td>
			<td>网站公告</td>
			<td class="num">2017-05-15 15:15</td>
			<td class="num">1055</td>
			<td>
				<a href="admin.php?mod=article&amp;act=edit&amp;id=3&amp;fromto=http%3A%2F%2Flocalhost%2Fshop4%2Fadmin.php%3Fmod%3Darticle" class="admin_edit mar3">修改</a>
				<a href="admin.php?mod=article&amp;act=del&amp;id=3&amp;token=67ed2865164bef115fded4aeff673f71" class="admin_del" onclick="return pe_cfone(this, '删除')">删除</a>
			</td>
		</tr>
				<tr>
			<td><input type="checkbox" name="article_id[]" value="2"></td>
			<td>2</td>
			<td class="aleft"><a href="http://localhost/shop4/index.php/article/2" target="_blank">PHPSHE B2C商城系统v1.5版发布</a></td>
			<td>网站公告</td>
			<td class="num">2017-05-15 15:11</td>
			<td class="num">889</td>
			<td>
				<a href="admin.php?mod=article&amp;act=edit&amp;id=2&amp;fromto=http%3A%2F%2Flocalhost%2Fshop4%2Fadmin.php%3Fmod%3Darticle" class="admin_edit mar3">修改</a>
				<a href="admin.php?mod=article&amp;act=del&amp;id=2&amp;token=67ed2865164bef115fded4aeff673f71" class="admin_del" onclick="return pe_cfone(this, '删除')">删除</a>
			</td>
		</tr>
				<tr>
			<td><input type="checkbox" name="article_id[]" value="1"></td>
			<td>1</td>
			<td class="aleft"><a href="http://localhost/shop4/index.php/article/1" target="_blank">关于简好网络</a></td>
			<td>网站公告</td>
			<td class="num">2012-05-01 09:12</td>
			<td class="num">940</td>
			<td>
				<a href="admin.php?mod=article&amp;act=edit&amp;id=1&amp;fromto=http%3A%2F%2Flocalhost%2Fshop4%2Fadmin.php%3Fmod%3Darticle" class="admin_edit mar3">修改</a>
				<a href="admin.php?mod=article&amp;act=del&amp;id=1&amp;token=67ed2865164bef115fded4aeff673f71" class="admin_del" onclick="return pe_cfone(this, '删除')">删除</a>
			</td>
		</tr>
				</tbody></table>
		</form>
	</div>
	<div class="right_bottom">
		<span class="fl mal10">
			<input type="checkbox" name="checkall" onclick="pe_checkall(this, 'article_id')">
			<button href="admin.php?mod=article&amp;act=del&amp;token=67ed2865164bef115fded4aeff673f71" onclick="return pe_cfall(this, 'article_id', 'form', '批量删除')">批量删除</button>
		</span>
		<span class="fr fenye"></span>
		<div class="clear"></div>
	</div>
</div>
<script type="text/javascript">
$(function(){
	$("select").change(function(){
		window.location.href = 'admin.php' + $(this).find("option:selected").attr("href");
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