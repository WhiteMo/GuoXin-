<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>会员列表 - 欢迎使用国鑫管理</title>
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
								<li class="sel"><a href="admin.php?mod=user"><span>├</span>会员列表</a></li>
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
			</div><div class="right" style="height: 143px;">
	<div class="now" style="width: 1125px;">
		<a href="admin.php?mod=user" class="sel">会员列表（1）</a>
				<a href="admin.php?mod=user&amp;userlevel_id=1">注册用户（1）</a>		
				<a href="admin.php?mod=userbank" style="display:none">收款账户（）</a>
		<a href="admin.php?mod=useraddr" style="display:none">收货地址（）</a>
		<div class="clear"></div>
	</div>
	<div class="right_main" style="padding-bottom: 0px;">
		<div class="search">
			<form method="get">
			<input type="hidden" name="mod" value="user">
			<input type="hidden" name="userlevel_id" value="">
			用户名：<input type="text" name="name" value="" class="inputtext input100 mar5">
			联系电话：<input type="text" name="phone" value="" class="inputtext input100 mar5">
			常用邮箱：<input type="text" name="email" value="" class="inputtext input150">
			<select name="orderby" class="selectmini">
			<option value="" href="?mod=user">= 默认排序 =</option>
									<option value="ltime|desc" href="?mod=user&amp;orderby=ltime|desc">1)最近登录</option>
						<option value="point|desc" href="?mod=user&amp;orderby=point|desc">2)最多积分</option>
						<option value="ordernum|desc" href="?mod=user&amp;orderby=ordernum|desc">3)最多订单</option>
						</select>
			<input type="submit" value="搜索" class="input_btn">
			</form>
		</div>
		<form method="post" id="form">
		<table width="100%" border="0" cellspacing="0" cellpadding="0" class="list">
		<tbody><tr>
			<th class="bgtt" width="20"><input type="checkbox" name="checkall" onclick="pe_checkall(this, 'user_id')"></th>
			<th class="bgtt" width="50">ID号</th>
			<th class="bgtt">用户名</th>
			<th class="bgtt" width="100">等级
			</th><th class="bgtt" width="60">余额
			</th><th class="bgtt" width="60">积分</th>
			<th class="bgtt" width="60">订单数
			</th><th class="bgtt" width="80">联系电话</th>
			<!--<th class="bgtt" width="160">常用邮箱</th>-->
			<th class="bgtt" width="130">推荐人</th>
			<th class="bgtt" width="70">注册日期</th>
			<th class="bgtt" width="195">操作</th>
		</tr>
				<tr>
			<td><input type="checkbox" name="user_id[]" value="1"></td>
			<td class="num">1</td>
			<td>18810522533</td>
			<td>注册用户</td>
			<td><span class="num corg">0.0</span></td>
			<td class="num">0</td>
			<td class="num"><a href="admin.php?mod=order&amp;user_id=1" class="cblue" target="_blank">2</a></td>
			<td class="num"></td>
			<!--<td class="num">1986283402@qq.com</td>-->
			<td>-</td>
			<td class="num"><span>2018-03-13</span></td>
			<td>
				<a href="admin.php?mod=user&amp;act=edit&amp;id=1&amp;fromto=http%3A%2F%2Flocalhost%2Fshop4%2Fadmin.php%3Fmod%3Duser" class="admin_edit mar3">修改</a>
				<a href="admin.php?mod=user&amp;act=del&amp;id=1&amp;token=891521e3fb0d6b90839d575e2f7afa7d" class="admin_del mar3" onclick="return pe_cfone(this, '删除')">删除</a>
				<a href="admin.php?mod=userbank&amp;user_id=1" class="admin_btn mar3" target="_blank">账户</a>
				<a href="admin.php?mod=useraddr&amp;user_id=1" class="admin_btn" target="_blank">地址</a>
			</td>
		</tr>
				</tbody></table>
		</form>
	</div>
	<div class="right_bottom">
		<span class="fl mal10">
			<input type="checkbox" name="checkall" onclick="pe_checkall(this, 'user_id')">
			<button href="admin.php?mod=user&amp;act=del&amp;token=891521e3fb0d6b90839d575e2f7afa7d" onclick="return pe_cfall(this, 'user_id', 'form', '批量删除')">批量删除</button>
			<!--<input type="button" value="批量发送邮件" id="sendemail" />-->
		</span>
		<span class="fr fenye"></span>
		<div class="clear"></div>
	</div>
</div>
<script type="text/javascript">
$(function(){
	var ips = new Array();
	$(".ipname").each(function(){
		ips.push($(this).attr("ip"));
	})
	$.getJSON("http://www.phpshe.com/index.php?mod=api&act=ipname&ips="+ips.join(",")+"&callback=?", function(json){
		$(".ipname").each(function(index){
			$(this).find("a").html(json.ipname[index]);
		})
	})
	$("#sendemail").click(function(){
		if ($("input[name='user_id[]']:checked").length == 0) {
			alert('请勾选需要发送的用户!');
			return false;
		}
		var user_id = new Array();
		$("input[name='user_id[]']:checked").each(function(){
			user_id.push($(this).val());
		})
		url = 'admin.php?mod=user&act=email&id='+user_id.join(",");
		art.dialog.open(url, {title:'发送邮件', width: 730, height: 470, id: 'sendemail'});
	})
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