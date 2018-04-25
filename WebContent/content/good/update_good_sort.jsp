<%@page import="Impl.GoodSortImpl"%>
<%@page import="Bean.GoodSort"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%
	pageContext.setAttribute("basePath", request.getContextPath());
	String id=request.getParameter("id");
	if(id==null){
		response.sendRedirect("/content/good/good_sort.jsp");
		return;
	}
	GoodSort sort=new GoodSortImpl().getGoodSortById(id);
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0053)http://localhost/shop4/admin.php?mod=category&act=add -->
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>添加分类 - 欢迎使用国鑫后台管理</title>
<meta name="keywords" content="">
<meta name="description" content="">
<link rel="shortcut icon" type="image/ico" href="http://localhost/shop4/favicon.ico">
<link type="text/css" rel="stylesheet" href="${basePath}/css/style.css">
<script type="text/javascript" src="${basePath}/js/jquery.js"></script>
<script type="text/javascript" src="${basePath}/js/global.js"></script>
<script type="text/javascript" src="${basePath}/js/arttpl.js"></script>
<script type="text/javascript" src="${basePath}/js/layer.js"></script>
<link rel="stylesheet" href="${basePath}/css/layer.css" id="layuicss-skinlayercss">
</head>
<script>

	$(function(){
		$('#name').val('<%=sort.name%>')
	})
	function updateGoodSort(){
		var id=<%=sort.getId()%>
		var name=$('#name').val();
		var basePath='<%=request.getContextPath()%>'
		$.post(basePath+'/GoodSortAction',{type:"update"
			,name:name,id:id},function(result){
				if(result=='success'){
					window.event.returnValue=false;
					window.location.href=basePath+"/content/good/good_sort.jsp?message=更新成功"
				}else{
					alert('删除失败')
				}
			})
	}
</script>

<body style="overflow-y:hidden">
<div class="bgimg"></div>


<%@include file="/static/pagetop.jsp" %>

<div class="content">
	<div class="left" style="height: 485px;">
		<%@include file="/static/fenlei.jsp" %>			
	</div>
	<div class="right" style="height: 485px;">
	<div class="now" style="width: 1003px;">
		<a href="javascript:;" class="sel">添加分类</a>
		<div class="clear"></div>
	</div>
	<div class="right_main">
		<form>
		<table width="100%" border="0" cellspacing="0" cellpadding="0" class="wenzhang mat20 mab20">
		<tbody><tr>
			<td align="right" width="150" class="c666">分类名称：</td>
			<td><input type="text" id="name" name="" value="" class="inputall input250"></td>
		</tr>
		
		<!--  
		<tr>
			<td align="right" class="c666">上级分类：</td>
			<td>
				<select name="info[category_pid]" class="inputselect" style="width:262px">
				<option value="0">=============== 无 ==============</option>
								</select>
			</td>
		</tr>
		<tr>
			<td align="right" class="c666">分类排序：</td>
			<td><input type="text" name="info[category_order]" value="" class="inputall input80"></td>
		</tr>
		<tr>
			<td align="right" class="c666">页面标题：</td>
			<td><input type="text" name="info[category_title]" value="" class="inputall input500"> <span class="c888">（SEO选项）</span></td>
		</tr>
		<tr>
			<td align="right" class="c666">页面关键词：</td>
			<td><input type="text" name="info[category_keys]" value="" class="inputall input500"> <span class="c888">（SEO选项）</span></td>
		</tr>
		<tr>
			<td align="right" class="c666">页面描述：</td>
			<td><textarea name="info[category_desc]" style="width:500px;height:100px;"></textarea> <span class="c888">（SEO选项）</span></td>
		</tr>
		
		
		-->		
		<tr>
			<td>&nbsp;</td>
			<td>
				<input type="button" name="pesubmit" onclick="updateGoodSort()" value="提 交" class="tjbtn">
			</td>
		</tr>
		</tbody></table>
		</form>
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
</script>

</body></html>