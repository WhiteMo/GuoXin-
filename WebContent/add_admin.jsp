<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>添加权限 - 欢迎使用PHPSHE商城系统</title>
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
		<div class="logo fl"><img src="${basePath}/img/logo.png"></div>
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
								<li class="sel"><a href="admin.php?mod=adminlevel"><span>├</span>管理权限</a></li>
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
			</div><div class="right" style="height: 143px;">
	<div class="now" style="width: 1125px;">
		<a href="javascript:;" class="sel">添加权限</a>
		<div class="clear"></div>
	</div>
	<div class="right_main">
		<form method="post">
		<table width="100%" border="0" cellspacing="0" cellpadding="0" class="wenzhang mat20 mab20">
		<tbody><tr>
			<td align="right" width="150">权限名称：</td>
			<td><input type="text" name="info[adminlevel_name]" value="" class="inputall input200"></td>
		</tr>
		<tr>
			<td align="right" valign="top">权限分配：</td>
			<td>
				<div style="background:#fff; width:772px">
								<div class="fl" style="width:160px">
				<table width="100%" border="0" cellspacing="0" cellpadding="0" class="wenzhang" style="margin:0">
				<tbody><tr>
					<td class="bgtt" style="border-bottom:0;height:10px;line-height:10px"><input type="checkbox" name="modact_all" style="margin-right:8px"><strong>商品中心</strong></td>
				</tr>
				<tr>
					<td style="border-bottom:0;background:#fff">
												<label style="width:120px;display:inline-block"><input type="checkbox" name="modact[]" value="product-index"> 商品列表</label>
												<label style="width:120px;display:inline-block"><input type="checkbox" name="modact[]" value="product-add|product-edit|product-ask|product-comment|product-sell|product-tuijian|product-state|product-move"> 商品添加/修改</label>
												<label style="width:120px;display:inline-block"><input type="checkbox" name="modact[]" value="product-del"> 商品删除</label>
												<label style="width:120px;display:inline-block"><input type="checkbox" name="modact[]" value="category-index"> 分类列表</label>
												<label style="width:120px;display:inline-block"><input type="checkbox" name="modact[]" value="category-add|category-edit|category-order"> 分类添加/修改</label>
												<label style="width:120px;display:inline-block"><input type="checkbox" name="modact[]" value="category-del"> 分类删除</label>
												<label style="width:120px;display:inline-block"><input type="checkbox" name="modact[]" value="brand-index"> 品牌列表</label>
												<label style="width:120px;display:inline-block"><input type="checkbox" name="modact[]" value="brand-add|brand-edit|brand-order"> 品牌添加/修改</label>
												<label style="width:120px;display:inline-block"><input type="checkbox" name="modact[]" value="brand-del"> 品牌删除</label>
												<label style="width:120px;display:inline-block"><input type="checkbox" name="modact[]" value="rule-index"> 规格列表</label>
												<label style="width:120px;display:inline-block"><input type="checkbox" name="modact[]" value="rule-add|rule-edit"> 规格添加/修改</label>
												<label style="width:120px;display:inline-block"><input type="checkbox" name="modact[]" value="rule-del"> 规格删除</label>
												<label style="width:120px;display:inline-block"><input type="checkbox" name="modact[]" value="comment"> 评价管理</label>
												<label style="width:120px;display:inline-block"><input type="checkbox" name="modact[]" value="quan"> 优 惠 券</label>
												<label style="width:120px;display:inline-block"><input type="checkbox" name="modact[]" value="huodong"> 限时促销</label>
											</td>
				</tr>
				</tbody></table>
				</div>
								<div class="fl" style="width:160px">
				<table width="100%" border="0" cellspacing="0" cellpadding="0" class="wenzhang" style="margin:0">
				<tbody><tr>
					<td class="bgtt" style="border-bottom:0;height:10px;line-height:10px"><input type="checkbox" name="modact_all" style="margin-right:8px"><strong>交易中心</strong></td>
				</tr>
				<tr>
					<td style="border-bottom:0;background:#fff">
												<label style="width:120px;display:inline-block"><input type="checkbox" name="modact[]" value="order-index"> 订单列表</label>
												<label style="width:120px;display:inline-block"><input type="checkbox" name="modact[]" value="order-edit"> 订单详情</label>
												<label style="width:120px;display:inline-block"><input type="checkbox" name="modact[]" value="order-pay"> 订单付款</label>
												<label style="width:120px;display:inline-block"><input type="checkbox" name="modact[]" value="order-send"> 订单发货</label>
												<label style="width:120px;display:inline-block"><input type="checkbox" name="modact[]" value="order-success"> 订单确认收货</label>
												<label style="width:120px;display:inline-block"><input type="checkbox" name="modact[]" value="order-close"> 订单取消</label>
												<label style="width:120px;display:inline-block"><input type="checkbox" name="modact[]" value="order-del"> 订单删除</label>
												<label style="width:120px;display:inline-block"><input type="checkbox" name="modact[]" value="order-money"> 订单修改价格</label>
												<label style="width:120px;display:inline-block"><input type="checkbox" name="modact[]" value="order-address"> 订单修改地址</label>
												<label style="width:120px;display:inline-block"><input type="checkbox" name="modact[]" value="moneylog"> 资金明细</label>
												<label style="width:120px;display:inline-block"><input type="checkbox" name="modact[]" value="pointlog"> 积分明细</label>
												<label style="width:120px;display:inline-block"><input type="checkbox" name="modact[]" value="order_pay"> 充值记录</label>
												<label style="width:120px;display:inline-block"><input type="checkbox" name="modact[]" value="cashout"> 提现管理</label>
											</td>
				</tr>
				</tbody></table>
				</div>
								<div class="fl" style="width:160px">
				<table width="100%" border="0" cellspacing="0" cellpadding="0" class="wenzhang" style="margin:0">
				<tbody><tr>
					<td class="bgtt" style="border-bottom:0;height:10px;line-height:10px"><input type="checkbox" name="modact_all" style="margin-right:8px"><strong>用户中心</strong></td>
				</tr>
				<tr>
					<td style="border-bottom:0;background:#fff">
												<label style="width:120px;display:inline-block"><input type="checkbox" name="modact[]" value="user-index"> 会员列表</label>
												<label style="width:120px;display:inline-block"><input type="checkbox" name="modact[]" value="user-edit"> 会员修改</label>
												<label style="width:120px;display:inline-block"><input type="checkbox" name="modact[]" value="user-del"> 会员删除</label>
												<label style="width:120px;display:inline-block"><input type="checkbox" name="modact[]" value="user-addmoney|user-delmoney"> 会员资金管理</label>
												<label style="width:120px;display:inline-block"><input type="checkbox" name="modact[]" value="user-delpoint|user-delpoint"> 会员积分管理</label>
												<label style="width:120px;display:inline-block"><input type="checkbox" name="modact[]" value="userbank"> 收款账户管理</label>
												<label style="width:120px;display:inline-block"><input type="checkbox" name="modact[]" value="useraddr"> 收货地址管理</label>
												<label style="width:120px;display:inline-block"><input type="checkbox" name="modact[]" value="userlevel-index"> 等级列表</label>
												<label style="width:120px;display:inline-block"><input type="checkbox" name="modact[]" value="userlevel-add|userlevel-edit"> 等级添加/修改</label>
												<label style="width:120px;display:inline-block"><input type="checkbox" name="modact[]" value="userlevel-del"> 等级删除</label>
												<label style="width:120px;display:inline-block"><input type="checkbox" name="modact[]" value="admin-index"> 管理员列表</label>
												<label style="width:120px;display:inline-block"><input type="checkbox" name="modact[]" value="admin-add|admin-edit"> 管理员添加/修改</label>
												<label style="width:120px;display:inline-block"><input type="checkbox" name="modact[]" value="admin-del"> 管理员删除</label>
												<label style="width:120px;display:inline-block"><input type="checkbox" name="modact[]" value="adminlevel-index"> 权限列表</label>
												<label style="width:120px;display:inline-block"><input type="checkbox" name="modact[]" value="adminlevel-add|adminlevel-edit"> 权限添加/修改</label>
												<label style="width:120px;display:inline-block"><input type="checkbox" name="modact[]" value="adminlevel-del"> 权限删除</label>
											</td>
				</tr>
				</tbody></table>
				</div>
								<div class="fl" style="width:160px">
				<table width="100%" border="0" cellspacing="0" cellpadding="0" class="wenzhang" style="margin:0">
				<tbody><tr>
					<td class="bgtt" style="border-bottom:0;height:10px;line-height:10px"><input type="checkbox" name="modact_all" style="margin-right:8px"><strong>文章中心</strong></td>
				</tr>
				<tr>
					<td style="border-bottom:0;background:#fff">
												<label style="width:120px;display:inline-block"><input type="checkbox" name="modact[]" value="class-index"> 分类列表</label>
												<label style="width:120px;display:inline-block"><input type="checkbox" name="modact[]" value="class-add|class-edit|class-order"> 分类添加/修改</label>
												<label style="width:120px;display:inline-block"><input type="checkbox" name="modact[]" value="class-del"> 分类删除</label>
												<label style="width:120px;display:inline-block"><input type="checkbox" name="modact[]" value="article-index"> 文章列表</label>
												<label style="width:120px;display:inline-block"><input type="checkbox" name="modact[]" value="article-add|article-edit"> 文章添加/修改</label>
												<label style="width:120px;display:inline-block"><input type="checkbox" name="modact[]" value="article-del"> 文章删除</label>
											</td>
				</tr>
				</tbody></table>
				</div>
								<div class="fl" style="width:120px">
				<table width="100%" border="0" cellspacing="0" cellpadding="0" class="wenzhang" style="margin:0">
				<tbody><tr>
					<td class="bgtt" style="border-bottom:0;height:10px;line-height:10px"><input type="checkbox" name="modact_all" style="margin-right:8px"><strong>控制面板</strong></td>
				</tr>
				<tr>
					<td style="border-bottom:0;background:#fff">
												<label style="width:120px;display:inline-block"><input type="checkbox" name="modact[]" value="setting|notice|express"> 网站设置</label>
												<label style="width:120px;display:inline-block"><input type="checkbox" name="modact[]" value="wechat"> 微信设置</label>
												<label style="width:120px;display:inline-block"><input type="checkbox" name="modact[]" value="payway"> 支付设置</label>
												<label style="width:120px;display:inline-block"><input type="checkbox" name="modact[]" value="menu"> 导航管理</label>
												<label style="width:120px;display:inline-block"><input type="checkbox" name="modact[]" value="ad"> 广告管理</label>
												<label style="width:120px;display:inline-block"><input type="checkbox" name="modact[]" value="link"> 友情链接</label>
												<label style="width:120px;display:inline-block"><input type="checkbox" name="modact[]" value="moban"> 模板管理</label>
												<label style="width:120px;display:inline-block"><input type="checkbox" name="modact[]" value="tongji"> 数据统计</label>
												<label style="width:120px;display:inline-block"><input type="checkbox" name="modact[]" value="db"> 数据备份</label>
												<label style="width:120px;display:inline-block"><input type="checkbox" name="modact[]" value="cache"> 缓存管理</label>
											</td>
				</tr>
				</tbody></table>
				</div>
								<div class="clear"></div>
				</div>
			</td>
		</tr>
		<tr>
			<td></td>
			<td>
				<input type="hidden" name="pe_token" value="891521e3fb0d6b90839d575e2f7afa7d">
				<input type="submit" name="pesubmit" value="提 交" class="tjbtn">
			</td>
		</tr>
		</tbody></table>
		</form>
	</div>
</div>
<script type="text/javascript">
$(function(){
	$(":input[name='modact_all']").click(function(){
		if ($(this).is(":checked")) {
			$(this).parents("tr").next("tr").find(":input[name='modact[]']").attr("checked","checked");
		}
		else {
			$(this).parents("tr").next("tr").find(":input[name='modact[]']").removeAttr("checked");
		}
	})
	/*$(":input[name='modact[]']").click(function(){
		var result = true;
		$(this).parents("tr").find("input").each(function(){
			if ($(this).attr("checked") != "checked") result = false;
		})
		if (result == true) {
			$(this).parents("tr").prev("tr").find(":input[name='modact_all']").attr("checked","checked");
		}
		else {
			$(this).parents("tr").prev("tr").find(":input[name='modact_all']").removeAttr("checked");
		}
	})
	$("tr").each(function(){
		var result = true;
		$(this).find(":input[name='modact[]']").each(function(){
			if ($(this).attr("checked") != "checked") result = false;
		})
		if (result == true) {
			$(this).find(":input[name='modact_all']").attr("checked","checked");
		}
		else {
			$(this).find(":input[name='modact_all']").removeAttr("checked");
		}
	})*/
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