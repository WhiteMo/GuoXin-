<%@page import="Bean.GoodSort"%>
<%@page import="Impl.GoodSortImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%
	pageContext.setAttribute("basePath", request.getContextPath());
	GoodSortImpl gImpl = new GoodSortImpl();
	GoodSort[] sorts = gImpl.getAllGoodSorts();
	pageContext.setAttribute("sorts", sorts);
	String message = request.getParameter("message");
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>商品分类 - 欢迎国鑫后台管理系统</title>
<meta name="keywords" content="">
<meta name="description" content="">
<link rel="shortcut icon" type="image/ico"
	href="http://localhost/shop4/favicon.ico">
<link type="text/css" rel="stylesheet" href="${basePath}/css/style.css">
<script type="text/javascript" src="${basePath}/js/jquery.js"></script>
<script type="text/javascript" src="${basePath}/js/global.js"></script>
<script type="text/javascript" src="${basePath}/js/arttpl.js"></script>
<script type="text/javascript" src="${basePath}/plugin/layer/layer.js"></script>
<link rel="stylesheet"
	href="${basePath}/plugin/layer/skin/default/layer.css?v=3.0.11110"
	id="layuicss-skinlayercss">
</head>
<script type="text/javascript">
function showInfo(info) {
	$("#msgshow").remove();
	$("body")
			.append(
					'<div id="msgshow"><div id="msgshow_l"></div><div id="msgshow_m">'
							+ info
							+ '</div><div id="msgshow_r"></div><div class="clear"></div></div>');
	_w_top = document.body.scrollTop
			|| document.documentElement.scrollTop;
	_w_height = $(window).height();
	_w_width = $(window).width();
	_d_top = _w_top + (_w_height - $("#msgshow").height()) / 2;
	_d_left = (_w_width - $("#msgshow_m").width() - 65) / 2;
	$("#msgshow").css({
		"top" : _d_top,
		"left" : _d_left
	}).show();
	setTimeout(function() {
		$("#msgshow").fadeOut(2000)
	}, 2000);
}



function deleteGoodSort(id){
	var b = confirm('您确定要删除吗？')
	if(!b){
		return ;
	}
	var basePath = '<%=request.getContextPath()%>'
		$.post(basePath + "/GoodSortAction", {
			type : "delete",
			id : id
		}, function(result) {
			if (result == 'success') {
				location.href = basePath+'/content/good/good_sort.jsp?message=删除成功'
				window.event.returnValue = false;
			} else {
				alert('删除失败')
			}
		})
	}
	<%
		if(message!=null){
			out.write("$(function(){showInfo('"+message+"')})");
		}
	%>
</script>

<body style="overflow-y: hidden">
	<div class="bgimg"></div>


	<%@include file="/static/pagetop.jsp"%>

	<div class="content">
		<div class="left" style="height: 300px;">
			<%@include file="/static/fenlei.jsp"%>
		</div>
		<div class="right" style="height: 300px;">
			<div class="now" style="width: 1142px;">
				<a href="admin.php?mod=category" class="sel">分类列表（2）</a> <a
					href="${basePath}/good/add_good_sort.jsp" id="fabu">添加分类</a>
				<div class="clear"></div>
			</div>
			<div class="right_main" style="padding-bottom: 0px;">
				<form method="post" id="form">
					<table width="100%" border="0" cellspacing="0" cellpadding="0"
						class="list">
						<tbody>
							<tr>
								<th class="bgtt" width="20"><input type="checkbox"
									name="checkall" onclick="pe_checkall(this, 'category_id')"></th>
								<th class="bgtt" width="50">ID号</th>
								<th class="bgtt" width="60">排序</th>
								<th class="bgtt">分类名称</th>
								<th class="bgtt" width="175">操作</th>
							</tr>
							<c:forEach var="sort" items="${sorts}">
								<tr>
									<td><input type="checkbox" name="sort" value="${sort.id}"></td>
									<td>${sort.id}</td>
									<td><input type="text" name="category_order[1]" value="1"
										class="inputtext input30 center"></td>
									<td class="aleft" id="name1"><a
										href=""
										target="_blank">${sort.name}</a></td>
									  <td><a
										href="${basePath}/good/update_good_sort.jsp?id=${sort.id}"
										class="admin_edit mar3">修改</a> <a class="admin_del mar3"
										onclick="deleteGoodSort('${sort.id}')">删除</a> 
										<!-- 
										<a
										class="admin_btn"
										onclick="">转移商品</a> -->
									</td>
								</tr>

							</c:forEach>


						</tbody>
					</table>
				</form>
			</div>
			<div class="right_bottom">
				<span class="fl mal10"> <input type="checkbox"
					name="checkall" onclick="pe_checkall(this, 'category_id')">
					<button
						href="admin.php?mod=category&amp;act=del&amp;token=b39628610a717b0bb433c30540035a4b"
						onclick="return pe_cfall(this, 'category_id', 'form', '批量删除')">批量删除</button>
					<button
						href="admin.php?mod=category&amp;act=order&amp;token=b39628610a717b0bb433c30540035a4b"
						onclick="pe_doall(this,'form')">更新排序</button>
				</span> <span class="fr fenye"></span>
				<div class="clear"></div>
			</div>
		</div>
		<div class="clear"></div>
		<!--<div class="foot">Copyright <span class="num">©</span> 2008-2014 <a target="_blank" href="http://www.phpshe.com">灵宝简好网络科技有限公司</a> 版权所有</div>-->
	</div>
	<script type="text/javascript">
		$(function() {
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
			} else {
				localStorage.setItem('left_scrolltop', 0);
			}
			$(".left").scroll(function() {
				localStorage.setItem('left_scrolltop', $(".left").scrollTop());
			})
			$(".list").find("td")
					.hover(
							function() {
								if ($(this).hasClass("bgtt")
										|| $(this).is("[nosel=1]"))
									return;
								$(this).parent("tr").children("td[nosel!=1]")
										.css("background-color", "#fbfbfb");
							},
							function() {
								if ($(this).hasClass("bgtt")
										|| $(this).is("[nosel=1]"))
									return;
								$(this).parent("tr").children("td[nosel!=1]")
										.css("background-color", "#fff");
							})
		})
		function win_init() {
			$(".left").add(".right").css("height",
					$(window).height() - $(".pagetop").height());
			$(".now").css("width", $(".right_main").outerWidth());
			//$(".right_main").css("height", $(window).height() -  $(".pagetop").height() - $(".now:eq(0)").outerHeight() - $(".right_bottom").outerHeight() + 38);
		}
	</script>

	<style type="text/css">
#msgshow {
	position: absolute;
	font-family: 'Arial';
}

#msgshow_l {
	background: url(<%=request.getContextPath()%>/image/dui_l.gif)
		no-repeat;
	width: 38px;
	height: 50px;
	float: left;
}

#msgshow_r {
	background: url(<%=request.getContextPath()%>/image/dui_r.gif)
		no-repeat;
	width: 7px;
	height: 50px;
	float: left;
}

#msgshow_m {
	background: url(<%=request.getContextPath()%>/image/dui_m.gif)
		repeat-x;
	height: 34px;
	float: left;
	padding: 16px 10px 0 10px;
	font-size: 14px;
	font-weight: bold;
	color: #598f13;
	display: inline-block;
	min-width: 95px;
	_width: 95px;
}
</style>
	
	<div id="msgshow" style="top: 150px; left: 603px; display: none;">
		<div id="msgshow_l"></div>
		<div id="msgshow_m">排序成功!</div>
		<div id="msgshow_r"></div>
		<div class="clear"></div>
	</div>
</body>
</html>