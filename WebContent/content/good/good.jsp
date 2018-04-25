<%@page import="Impl.GoodImpl"%>
<%@page import="Bean.Good"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%
	pageContext.setAttribute("basePath",request.getContextPath());
	String sortId = request.getParameter("sortId");
	Good[] goods = null;
	GoodImpl gImpl = new GoodImpl();
	if(sortId==null||sortId.equals("-1")){
		sortId = "all";
		goods = gImpl.getAllGoods();
	}else{
		goods = gImpl.getGoodsBySortId(sortId);
	}
	
	for(int i=0;i<goods.length;i++){
		goods[i].getSortName();
	}
	String message = request.getParameter("message");
	pageContext.setAttribute("goods", goods);
	pageContext.setAttribute("gImpl", gImpl);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>国鑫后台管理</title>
		<meta name="keywords" content="">
		<meta name="description" content="">
		<link rel="shortcut icon" type="image/ico" href="http://localhost/shop4/favicon.ico">
		<link type="text/css" rel="stylesheet" href="${basePath}/css/style.css">
		<script type="text/javascript" src=" ${basePath}/js/jquery.js"></script>
		<script type="text/javascript" src="${basePath}/js/global.js"></script>
		<script type="text/javascript" src="${basePath}/js/arttpl.js"></script>
		<script type="text/javascript" src="${basePath}/inclde/js/layer.js"></script>
		<link rel="stylesheet" href="${basePath}/css/layer.css" id="layuicss-skinlayercss">
	</head>
	<style>
		#msg{
   		 position: fixed;
   		 top: 50%;
  		  left: 50%;
  		  margin: auto;
		}
	</style>
<script type="text/javascript">
	$(function(){
		showInfo('<%=message%>')
	})
	function showInfo(info) {
		$('#msg').find('font').text(info)
		$('#msg').show()
		$("#msg").fadeOut(2000)
		
	}
	function deleteGood(id){
		var b = confirm("确定要删除吗？")
		var basePath='<%=request.getContextPath()%>'
		if(b){
			$.post('/guoxin/GoodAction',{type:'delete',id:id},function(result){
				if(result=='success'){
					location.href = basePath+'/content/good/good.jsp?message=删除成功'
					window.event.returnValue = false;
				}else{
					alert('删除失败')	
				}
			})
		}
		
	}
	
	<%
	if(message!=null){
		out.write("$(function(){showInfo('"+message+"')})");
	}
%>
	</script>
	<body style="overflow-y:hidden">
		<%@include file="/static/pagetop.jsp" %>
		
	
			<div id="msg" style="display:none">
				<font color="green" size="5">操作成功</font>
			</div>
		
		<div class="content">
		
			<div class="left" style="height: 143px;">
				<%@include file="/static/fenlei.jsp" %>
			</div>
			<div class="right" style="height: 143px;">
				<div class="now" style="width: 1125px;">
					<a href="product.jsp?type=-1" class="sel">商品列表</a>
					<a href="product.jsp?type=0">下架商品</a>
					<a href="product.jsp?type=1">缺货商品</a>
					<a href="product.jsp?type=2">包邮商品</a>
					<a href="product.jsp?type=3">推荐商品</a>
					<a href="add_good.jsp" style="float:right" id="fabu">添加商品</a>
					<div class="clear"></div>
				</div>
				<div class="right_main" style="padding-bottom: 0px;">
					<div class="search">
						<form method="get">
							<input type="hidden" name="mod" value="product"> 商品名称：
							<input type="text" name="name" value="" class="inputtext input200">
							<select name="category_id" class="selectmini">
								<option value="" href="?mod=product&amp;state=1">全部分类</option>
						
								<option value="1" href="?mod=product&amp;state=1&amp;category_id=1">哇哈哈</option>
								<option value="2" href="?mod=product&amp;state=1&amp;category_id=2">酒</option>
							</select>
							<select name="brand_id" class="selectmini">
								<option value="" href="?mod=product&amp;state=1">全部品牌</option>
							</select>
							<select name="orderby" class="selectmini">
								<option value="" href="?mod=product&amp;state=1">默认排序</option>
								<option value="num|desc" href="?mod=product&amp;state=1&amp;orderby=num|desc">库存量(多到少)</option>
								<option value="num|asc" href="?mod=product&amp;state=1&amp;orderby=num|asc">库存量(少到多)</option>
								<option value="sellnum|desc" href="?mod=product&amp;state=1&amp;orderby=sellnum|desc">销售量(多到少)</option>
								<option value="sellnum|asc" href="?mod=product&amp;state=1&amp;orderby=sellnum|asc">销售量(少到多)</option>
								<option value="asknum|desc" href="?mod=product&amp;state=1&amp;orderby=asknum|desc">咨询数(多到少)</option>
								<option value="asknum|asc" href="?mod=product&amp;state=1&amp;orderby=asknum|asc">咨询数(少到多)</option>
								<option value="commentnum|desc" href="?mod=product&amp;state=1&amp;orderby=commentnum|desc">评价数(多到少)</option>
								<option value="commentnum|asc" href="?mod=product&amp;state=1&amp;orderby=commentnum|asc">评价数(少到多)</option>
							</select>
							<input type="submit" value="搜索" class="input_btn">
						</form>
					</div>
					<form method="post" id="form">
					
						<table border="0" cellspacing="0" cellpadding="0" class="list">
							<tbody>
								<tr>
									<th class="bgtt" width="20"><input type="checkbox" name="checkall" onclick="pe_checkall(this, 'product_id')"></th>
									<th class="bgtt" width="50">ID号</th>
									<th class="bgtt" width="50">排序</th>
									<th class="bgtt" colspan="2"></th>
									<th class="bgtt" width="90">商品分类</th>
									<th class="bgtt" width="90">品牌名称</th>
									<th class="bgtt" width="60">单价</th>
									<th class="bgtt" width="50">库存</th>
									<!--<th class="bgtt" width="50">浏览</td>-->
									<th class="bgtt" width="50">上架</th>
									<th class="bgtt" width="80">销量/评价</th>
									<th class="bgtt" width="100">操作</th>
								</tr>
								
							
							
							<c:forEach var="good" items="${goods}">
							<tr>
									<td style="background-color: rgb(255, 255, 255);"><input type="checkbox" name="product_id[]" value="${good.id}"></td>
									<td style="background-color: rgb(255, 255, 255);">${good.id}</td>
									<td style="background-color: rgb(255, 255, 255);"><input type="text" name="product_order[1]" value="10000" class="inputtext input30 center"></td>
									<td width="40" style="background-color: rgb(255, 255, 255);">
										<a href="#" target="_blank"><img src="${good.imgUrl}" width="40" height="40" class="imgbg"></a>
									</td>
									<td class="aleft" style="padding-left: 0px; background-color: rgb(255, 255, 255);">
										<a href="#" target="_blank" class="cblue">${good.name}</a>
									</td>
									<td style="background-color: rgb(255, 255, 255);">
									<input type="hidden" value="${good.sortId}">
										${good.getSortName()}
									</td>
									<td style="background-color: rgb(255, 255, 255);"></td>
									<td style="background-color: rgb(255, 255, 255);"><span class="num corg">67.0</span></td>
									<td class="num" style="background-color: rgb(255, 255, 255);"><span>${good.num}</span></td>
									<!--<td class="num">39</td>-->
									<td style="background-color: rgb(255, 255, 255);">
										<a href="admin.php?mod=product&amp;act=state&amp;state=2&amp;id=1&amp;token=786f96c0bbd8f125858c60c14e19e4f6"><img src="http://localhost/shop4/template/default/admin/images/dui.png"></a>
									</td>
									<td style="background-color: rgb(255, 255, 255);">
										<a href="admin.php?mod=product&amp;act=sell&amp;id=1&amp;fromto=http%3A%2F%2Flocalhost%2Fshop4%2Fadmin.php%3Fmod%3Dproduct%26state%3D1" onclick="return pe_dialog(this, '设置销量', 400, 210, 'product_sell')">3</a>
										<span class="c999">/</span>
										<a href="admin.php?mod=product&amp;act=comment&amp;id=1" onclick="return pe_dialog(this, '添加评价', 920, 510, 'product_comment')">1</a>
									</td>
									<td style="background-color: rgb(255, 255, 255);">
										<a href="update_good.jsp?id=${good.id}" class="admin_edit mar3">修改</a>
										<a href="#" class="admin_del" onclick="deleteGood('${good.id }')"> 删除</a>
									</td>
								</tr>
							
							</c:forEach>
							
							
							
								
							</tbody>
						</table>
					</form>
				</div>
				<div class="right_bottom">
					<span class="fl mal10">
			<input type="checkbox" name="checkall" onclick="pe_checkall(this, 'product_id')">
			<button href="admin.php?mod=product&amp;act=del&amp;token=786f96c0bbd8f125858c60c14e19e4f6" onclick="return pe_cfall(this, 'product_id', 'form', '批量删除')">批量删除</button>
			<button href="admin.php?mod=product&amp;act=order&amp;token=786f96c0bbd8f125858c60c14e19e4f6" onclick="pe_doall(this,'form')">更新排序</button>
			<button href="admin.php?mod=product&amp;act=state&amp;state=1&amp;token=786f96c0bbd8f125858c60c14e19e4f6" onclick="return pe_cfall(this, 'product_id', 'form', '批量上架')">批量上架</button>
			<button href="admin.php?mod=product&amp;act=state&amp;state=2&amp;token=786f96c0bbd8f125858c60c14e19e4f6" onclick="return pe_cfall(this, 'product_id', 'form', '批量下架')">批量下架</button>
			<button href="admin.php?mod=product&amp;act=tuijian&amp;tuijian=1&amp;token=786f96c0bbd8f125858c60c14e19e4f6" onclick="return pe_cfall(this, 'product_id', 'form', '批量推荐')">批量推荐</button>
			<button href="admin.php?mod=product&amp;act=tuijian&amp;tuijian=0&amp;token=786f96c0bbd8f125858c60c14e19e4f6" onclick="return pe_cfall(this, 'product_id', 'form', '取消推荐')">取消推荐</button>
			<button type="button" onclick="product_move()">批量转移商品</button>
		</span>
					<span class="fr fenye"></span>
					<div class="clear"></div>
				</div>
			</div>
			<script type="text/javascript">
				function product_move() {
					var product_id = new Array();
					if($("input[name='product_id[]']").filter(":checked").length == 0) {
						alert('请先勾选需要转移的商品!');
						return false;
					}
					$("input[name='product_id[]']").filter(":checked").each(function(i) {
						product_id[i] = $(this).val();
					})
					product_id = product_id.join(',');
					var layer_index = layer.open({
						type: 2,
						title: '批量转移商品',
						area: ['400px', '220px'],
						fixed: false, //不固定
						shadeClose: true,
						shade: 0.5,
						content: "http://localhost/shop4/admin.php?mod=product&act=move&id=" + product_id //iframe的url
					});
				}
				$(function() {
					$("select").change(function() {
						window.location.href = 'admin.php' + $(this).find("option:selected").attr("href");
					})
				})
			</script>
			<div class="clear"></div>
			<!--<div class="foot">Copyright <span class="num">©</span> 2008-2014 <a target="_blank" href="http://www.phpshe.com">灵宝简好网络科技有限公司</a> 版权所有</div>-->
		</div>
		<script type="text/javascript">
			$(function() {
				if($(".right_bottom").height() == 0) {
					$(".right_bottom").remove();
				}
				if($(".list tr").length > 1) {
					$(".right_main").css("padding-bottom", 0);
				}
				win_init();
				$(window).resize(function() {
					win_init();
				});
				if($(".left .sel").length) {
					$(".left").scrollTop(localStorage.getItem('left_scrolltop'));
				} else {
					localStorage.setItem('left_scrolltop', 0);
				}
				$(".left").scroll(function() {
					localStorage.setItem('left_scrolltop', $(".left").scrollTop());
				})
				$(".list").find("td").hover(
					function() {
						if($(this).hasClass("bgtt") || $(this).is("[nosel=1]")) return;
						$(this).parent("tr").children("td[nosel!=1]").css("background-color", "#fbfbfb");
					},
					function() {
						if($(this).hasClass("bgtt") || $(this).is("[nosel=1]")) return;
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
		
	</body>

</html>