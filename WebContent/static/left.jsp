<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	pageContext.setAttribute("basePath",request.getContextPath());
%>
<div class="left" style="height: 538px;">

	<div class="fenlei">
		<h3 class="fl_tb1"><s></s>商品中心</h3>
		<ul>
			<li class="">
				<a href="${basePath}/product.jsp"><span>├</span>商品列表</a>
			</li>
			<li class="">
				<a href="${basePath}/product_sort.jsp"><span>├</span>商品分类</a>
			</li>
			<!-- <li class=""><a href=""><span>├</span>品牌管理</a></li> -->
			<li class="">
				<a href="${basePath}/comment.jsp"><span>├</span>评价管理</a>
			</li>
		</ul>
		<div class="clear"></div>
		<div class="xian"></div>
	</div>
	<div class="fenlei">
		<h3 class="fl_tb3"><s></s>交易中心</h3>
		<ul>
			<li class="">
				<a href="${basePath}/order.jsp"><span>├</span>订单列表</a>
			</li>
			<!-- <li class=""><a href="#"><span>├</span>资金明细</a></li> 
								<li class=""><a href="http://localhost/shop4/admin.php?mod=pointlog"><span>├</span>积分明细</a></li>
								<li class=""><a href="http://localhost/shop4/admin.php?mod=order_pay"><span>├</span>充值记录</a></li>
								<li class=""><a href="http://localhost/shop4/admin.php?mod=cashout"><span>├</span>提现管理</a></li>-->
		</ul>
		<div class="clear"></div>
		<div class="xian"></div>
	</div>
	<div class="fenlei">
		<h3 class="fl_tb4"><s></s>用户中心</h3>
		<ul>
			<li class="">
				<a href="${basePath}/user.jsp"><span>├</span>会员列表</a>
			</li>
			<!-- <li class=""><a href=""><span>├</span>会员等级</a></li> -->
			<li class="">
				<a href="${basePath}/administrator.jsp"><span>├</span>管 理 员</a>
			</li>
			<li class="">
				<a href="${basePath}/admin_role.jsp"><span>├</span>管理权限</a>
			</li>
		</ul>
		<div class="clear"></div>
		<div class="xian"></div>
	</div>
	<div class="fenlei">
		<h3 class="fl_tb2"><s></s>文章中心</h3>
		<ul>
			<li class="">
				<a href="${basePath}/article_sort.jsp"><span>├</span>文章分类</a>
			</li>
			<li class="">
				<a href="${basePath}/article.jsp"><span>├</span>文章列表</a>
			</li>
		</ul>
		<div class="clear"></div>
		<div class="xian"></div>
	</div>
	<div class="fenlei">
		<h3 class="fl_tb6"><s></s>控制面板</h3>
		<ul>
			<!--  <li class=""><a href="http://localhost/shop4/admin.php?mod=setting&amp;act=base"><span>├</span>网站设置</a></li>
								<li class=""><a href="http://localhost/shop4/admin.php?mod=payway"><span>├</span>支付设置</a></li>
								<li class=""><a href="http://localhost/shop4/admin.php?mod=menu"><span>├</span>导航管理</a></li>
								
								<li class=""><a href="http://localhost/shop4/admin.php?mod=link"><span>├</span>友情链接</a></li>
								-->
			<li class="">
				<a href="${basePath}/ad.jsp"><span>├</span>广告管理</a>
			</li>
		</ul>
		<div class="clear"></div>
	</div>



</div>