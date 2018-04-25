<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	pageContext.setAttribute("basePath",request.getContextPath());
%> 

<div class="bgimg"></div>
<div class="pagetop">
	<div class="head">
		<div class="logo fl">
		<img src="${basePath}/images/logo.png"></div>
		<div class="head_r fr">
			<a href="#" class="head_tb1" style="border-left:0"><s></s>概况</a>
			<a href="#" class="head_tb3"><s></s>统计</a>
			<a href="#" class="head_tb5"><s></s>备份</a>
			<a href="#" class="head_tb6"><s></s>缓存</a>
			<a href="#" target="_blank" class="head_tb7"><s></s>首页</a>
			<a href="#" class="head_tb2" style="background:none"><s></s>退出</a>
		</div>
		<div class="clear"></div>
	</div>
</div>


