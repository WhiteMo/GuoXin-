<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>订单详情 - 欢迎使用PHPSHE商城系统</title>
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
			</div><div class="right" style="height: 143px;">
	<div class="now" style="width: 1125px;">
		<a href="javascript:;" class="sel">订单详情</a>
		<div class="clear"></div>
	</div>
	<div class="right_main mab15">
	<div class="huiyuan_main" style="padding:0 35px 20px;">
		<div class="liucheng mat20">订单状态</div>
		<table width="100%" border="0" cellspacing="0" cellpadding="0" class="order_view_bak mat10">
		<tbody><tr>
			<td align="right" width="80">订单编号：</td>
			<td>180325113238174</td>
		</tr>
		<tr>
			<td align="right">当前状态：</td>
			<td><span class="cgreen">交易完成</span>							</td>
		</tr>
				</tbody></table>
		<div class="shixian mat20"></div>
		<div class="liucheng mat20">收货信息</div>
		<table width="100%" border="0" cellspacing="0" cellpadding="0" class="order_view_bak mat10">
		<tbody><tr>
			<td align="right" width="80">用户帐号：</td>
			<td>18810522533</td>
		</tr>
		<tr>
			<td align="right">姓　　名：</td>
			<td>吴鑫</td>
		</tr>
		<tr>
			<td align="right">手机号码：</td>
			<td>18810522533</td>
		</tr>
		<tr>
			<td align="right">收货地址：</td>
			<td>广东中山中山市多撒多</td>			
		</tr>
		<tr>
			<td align="right">订单备注：</td>
			<td></td>
		</tr>	
		<tr>
			<td align="right">快递信息：</td>
			<td>无</td>
		</tr>	
		</tbody></table>
		<div class="shixian mat20"></div>
		<div class="liucheng mat20">订单信息</div>
		<table width="100%" border="0" cellspacing="0" cellpadding="0" class="order_view_bak mat10">
		<tbody><tr>
			<td align="right" width="80">下单时间：</td>
			<td>2018-03-25 11:32</td>
		</tr>
		<tr>
			<td align="right">付款时间：</td>
			<td>2018-03-25 11:33</td>
		</tr>
		<tr>
			<td align="right">发货时间：</td>
			<td>2018-03-25 11:33</td>
		</tr>	
		<tr>
			<td align="right" width="80">付款方式：</td>
			<td>货到付款</td>
		</tr>
		</tbody></table>
		<div class="shixian mat20"></div>		
		<div class="liucheng mat20">商品清单</div>
		<table width="100%" border="0" cellspacing="0" cellpadding="0" class="order_view_list mat20">
		<tbody><tr>
			<td class="bgtt1" width="" align="center" colspan="2">商品名称</td>
			<td class="bgtt1" width="90" align="center">单价(元)</td>
			<td class="bgtt1" width="90" align="center">数量</td>
			<td class="bgtt1" width="150" align="center">商品优惠</td>
			<td class="bgtt1" width="110" align="center">小计(元)</td>			
		</tr>
				<tr>
			<td style="border-right:0;width:60px"><a href="http://localhost/shop4/index.php/product/1"><img src="http://localhost/shop4/data/cache/thumb/2018-03/thumb_100x100_20180313111826a.jpg" width="50" height="50" class="imgbg"></a></td>
			<td style="border-left:0;text-align:left;">
				<a href="http://localhost/shop4/index.php/product/1" title="哇哈哈" target="_blank" class="cblue dd_name">哇哈哈</a>
							</td>
			<td>¥ <span class="num1">67.0</span></td>
			<td><span class="num1">1</span></td>
			<td>-</td>
			<td>¥ <span class="num1">67</span></td>
		</tr>
				</tbody></table>
		<div class="dingdan_jiesuan" style="padding:10px; line-height:30px; font-family:微软雅黑; font-size:14px;">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tbody><tr>
				<td>商品金额：</td>
				<td width="100">¥ 67.0</td>
			</tr>
			<tr>
				<td>运费：</td>
				<td>¥ 0.0</td>
			</tr>
									<tr>
				<td>应付金额：</td>
				<td class="font18 cred strong">¥ 67.0</td>
			</tr>
			</tbody></table>
			<div class="clear"></div>
		</div>
	</div>
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
}
pe_loadscript("http://localhost/shop4/index.php?mod=notice");
</script>

</body></html>