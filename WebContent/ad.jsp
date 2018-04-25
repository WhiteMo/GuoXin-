<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>广告列表 - 欢迎使用PHPSHE商城系统</title>
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
								<li class=""><a href="admin.php?mod=payway"><span>├</span>支付设置</a></li>
								<li class=""><a href="admin.php?mod=menu"><span>├</span>导航管理</a></li>
								<li class="sel"><a href="admin.php?mod=ad"><span>├</span>广告管理</a></li>
								<li class=""><a href="admin.php?mod=link"><span>├</span>友情链接</a></li>
							</ul>
			<div class="clear"></div>
					</div>
			</div><div class="right" style="height: 143px;">
	<div class="now" style="width: 1125px;">
		<a href="admin.php?mod=ad" class="sel">广告列表（2）</a>
				<a href="admin.php?mod=ad&amp;position=index_jdt">首页焦点图（2）</a>
				<a href="admin.php?mod=ad&amp;position=index_header">首页顶部广告（0）</a>
				<a href="admin.php?mod=ad&amp;position=index_footer">首页底部广告（0）</a>
				<a href="admin.php?mod=ad&amp;position=header">整站顶部广告（0）</a>
				<a href="admin.php?mod=ad&amp;position=footer">整站底部广告（0）</a>
				<a href="admin.php?mod=ad&amp;act=add" id="fabu">添加广告</a>
		<div class="clear"></div>
	</div>
	<div class="right_main" style="padding-bottom: 0px;">
		<form method="post" id="form">
		<table width="100%" border="0" cellspacing="0" cellpadding="0" class="list">
		<tbody><tr>
			<th class="bgtt" width="20"><input type="checkbox" name="checkall" onclick="pe_checkall(this, 'ad_id')"></th>
			<th class="bgtt" width="50">ID号</th>
			<th class="bgtt" width="40">排序</th>
			<th class="bgtt" width="230">广告图片</th>
			<th class="bgtt" width="200">广告位置</th>
			<th class="bgtt">广告链接</th>
			<th class="bgtt" width="60">显示</th>
			<th class="bgtt" width="110">操作</th>
		</tr>
				<tr height="60">
			<td style="background-color: rgb(255, 255, 255);"><input type="checkbox" name="ad_id[]" value="2"></td>
			<td style="background-color: rgb(255, 255, 255);">2</td>
			<td style="background-color: rgb(255, 255, 255);"><input type="text" name="ad_order[2]" value="0" class="inputtext input30 center"></td>
			<td style="background-color: rgb(255, 255, 255);"><a href="" target="_blank"><img src="http://localhost/shop4/data/attachment/2017-05/20170503153226h.jpg" style="width:160px; height:55px; border:1px solid #F2F2F2"></a></td>
			<td style="background-color: rgb(255, 255, 255);">首页焦点图<p></p></td>
			<td class="aleft" style="background-color: rgb(255, 255, 255);"><a href="" target="_blank"></a></td>
			<td style="background-color: rgb(255, 255, 255);">
								<a href="admin.php?mod=ad&amp;act=state&amp;state=0&amp;id=2&amp;token=67ed2865164bef115fded4aeff673f71"><img src="http://localhost/shop4/template/default/admin/images/dui.png"></a>
							</td>
			<td style="background-color: rgb(255, 255, 255);">
				<a href="admin.php?mod=ad&amp;act=edit&amp;id=2&amp;fromto=http%3A%2F%2Flocalhost%2Fshop4%2Fadmin.php%3Fmod%3Dad" class="admin_edit mar3">修改</a>
				<a href="admin.php?mod=ad&amp;act=del&amp;id=2&amp;token=67ed2865164bef115fded4aeff673f71" class="admin_del" onclick="return pe_cfone(this, '删除')">删除</a>
			</td>
		</tr>
				<tr height="60">
			<td style="background-color: rgb(255, 255, 255);"><input type="checkbox" name="ad_id[]" value="1"></td>
			<td style="background-color: rgb(255, 255, 255);">1</td>
			<td style="background-color: rgb(255, 255, 255);"><input type="text" name="ad_order[1]" value="0" class="inputtext input30 center"></td>
			<td style="background-color: rgb(255, 255, 255);"><a href="" target="_blank"><img src="http://localhost/shop4/data/attachment/2017-05/20170503153149o.jpg" style="width:160px; height:55px; border:1px solid #F2F2F2"></a></td>
			<td style="background-color: rgb(255, 255, 255);">首页焦点图<p></p></td>
			<td class="aleft" style="background-color: rgb(255, 255, 255);"><a href="" target="_blank"></a></td>
			<td style="background-color: rgb(255, 255, 255);">
								<a href="admin.php?mod=ad&amp;act=state&amp;state=0&amp;id=1&amp;token=67ed2865164bef115fded4aeff673f71"><img src="http://localhost/shop4/template/default/admin/images/dui.png"></a>
							</td>
			<td style="background-color: rgb(255, 255, 255);">
				<a href="admin.php?mod=ad&amp;act=edit&amp;id=1&amp;fromto=http%3A%2F%2Flocalhost%2Fshop4%2Fadmin.php%3Fmod%3Dad" class="admin_edit mar3">修改</a>
				<a href="admin.php?mod=ad&amp;act=del&amp;id=1&amp;token=67ed2865164bef115fded4aeff673f71" class="admin_del" onclick="return pe_cfone(this, '删除')">删除</a>
			</td>
		</tr>
				</tbody></table>
		</form>
	</div>
	<div class="right_bottom">
		<span class="fl mal10">
			<input type="checkbox" name="checkall" onclick="pe_checkall(this, 'ad_id')">
			<button href="admin.php?mod=ad&amp;act=del&amp;token=67ed2865164bef115fded4aeff673f71" onclick="return pe_cfall(this, 'ad_id', 'form', '批量删除')">批量删除</button>
			<button href="admin.php?mod=ad&amp;act=order&amp;token=67ed2865164bef115fded4aeff673f71" onclick="pe_doall(this,'form')">更新排序</button>
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