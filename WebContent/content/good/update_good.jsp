<%@page import="Impl.GoodImpl"%>
<%@page import="Bean.Good"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	pageContext.setAttribute("basePath", request.getContextPath());
	String id = request.getParameter("id");

	if (id == null) {
		response.sendRedirect("/content/good/good.jsp");
		return;
	} 
	Good good = new GoodImpl().getGoodById(id);
	pageContext.setAttribute("good", good);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>添加商品</title>
<meta name="keywords" content="">
<meta name="description" content="">
<script type="text/javascript" src=" ${basePath}/js/jquery.js"></script>
<script type="text/javascript" src="${basePath}/js/global.js"></script>
<script type="text/javascript" src="${basePath}/js/arttpl.js"></script>
<script type="text/javascript" src="${basePath}/js/layer.js"></script>
<script type="text/javascript" src="${basePath}/js/ajaxfileupload.js"></script>
<script type="text/javascript">
	
	function updateGood(){
		var basePath='<%=request.getContextPath()%>'
		var id='<%=id%>'	
		var name = $('#name').val()
			var sortId = $('#sortId').val();
			var getPrice = $('#getPrice').val()
			var sellPrice = $('#sellPrice').val()
			var imgUrl = $('#viewImg').attr('src');
			var num = $('#num').val()
			$.post(basePath+'/GoodAction',{type:'update'
				,id:id
				,name:name
				,sortId:sortId
				,getPrice:getPrice
				,sellPrice:sellPrice
				,imgUrl:imgUrl
				,num:num},function(result){
					if(result=='success'){
						location.href = basePath+'/content/good/good.jsp?message=更新成功'
						window.event.returnValue = false;
					}else {
						alert('修改商品失败')
					}
				})
	}
	$(function(){
		var name = $('#name').val('<%=good.getName()%>')
		var sortId = $('#sortId').val('<%=good.getSortId()%>');
		var getPrice = $('#getPrice').val('<%=good.getGetPrice()%>')
		var sellPrice = $('#sellPrice').val('<%=good.getSellPrice()%>')
		var imgUrl = $('#viewImg').attr('src','<%=good.getImgUrl()%>');
		var num = $('#num').val('<%=good.getNum()%>')	
	})

	function upload() {
		$('#fileToUpload').click();
	}
	function ajaxFileUpload() {
		$.ajaxFileUpload({
			url : '/guoxin/ajaxUpload',
			secureuri : false,
			fileElementId : 'fileToUpload',
			dataType : 'json',
			data : {
				username : 'a'
			},
			success : function(data, status) {
				$('#viewImg').attr('src', data.picUrl);
			},
			error : function(data, status, e) {
				alert('上传出错');
			}
		})

		return false;

	}
</script>



<link rel="stylesheet" href="${basePath}/css/layer.css">
<link type="text/css" rel="stylesheet" href="${basePath}/css/style.css">

</head>

<body style="overflow-y: hidden">

	<%@include file="/static/pagetop.jsp"%>
	<div class="content">
		<div class="left" style="height: 349px;">
			<%@include file="/static/fenlei.jsp"%>
		</div>
		<div class="right" style="height: 349px;">
			<div class="now" style="width: 1125px;">
				<a href="javascript:;" class="sel">添加商品</a>
				<div class="clear"></div>
			</div>
			<form method="post" enctype="multipart/form-data">
				<div class="right_main">
					<table width="100%" border="0" cellspacing="0" cellpadding="0"
						class="wenzhang mat20 mab20">
						<tbody>
							<tr>
								<td align="right">商品名称：</td>
								<td colspan="3"><input type="text" id='name' value=""
									class="inputall input700"></td>
							</tr>
							<tr>
								<td align="right" width="150">商品分类：</td>
								<td><select name="info[category_id]" id="sortId"
									class="inputselect" style="width: 250px">
										<option value="0">-- 商品分类 --</option>
										<option value="1">哇哈哈</option>
										<option value="2">酒</option>
								</select></td>
							</tr>

							<tr id="base_html">
								<td align="right">基本信息：</td>
								<td>
									<table width="100%" class="list"
										style="width: 702px; border: 1px #eee solid">
										<tr>
											<th class="bgtt" width="70">进货价</th>
											<th class="bgtt" width="70">售价</th>
											<th class="bgtt" width="70">库存</th>
										</tr>
										<tr>
											<td><input type="text" id="getPrice" value="0"
												class="inputtext input100" /> 元</td>
											<td><input type="text" id="sellPrice" value="0"
												class="inputtext input100" /> 元</td>
											<td><input type="text" id="num" value=""
												class="inputtext input100" /> 件</td>
										</tr>
									</table>
								</td>
							</tr>

							<tr>
								<td align="right">运 费：</td>
								<td><input type="text" name="info[product_wlmoney]"
									value="0" class="inputall input100"> <span class="c888">元</span></td>
							</tr>
							<tr>
								<td align="right">赠送积分：</td>
								<td><input type="text" name="info[product_point]" value="0"
									class="inputall input100"> <span class="c888">点</span></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="right_main2">
					<table width="100%" border="0" cellspacing="0" cellpadding="0"
						class="wenzhang mat10 mab10">
						<tbody>
							<tr>
								<td align="right" width="150">商品图片：</td>
								<td>
									<div class="upload_html fl" lock="0">
										<input type="hidden" name="product_album[]" value=""
											class="upload_value"> <a href="javascript:;"
											class="upload_btn webuploader-container">
											<div class="webuploader-pick">
												<img src="${basePath}/images/up_bg.jpg" id="viewImg"
													onclick="upload()" class="upload_logo"
													style="width: 125px; height: 125px;"> <input
													type="file" style="display: none" id="fileToUpload"
													name="fileToUpload" multiple="multiple"
													onchange="ajaxFileUpload()" accept="image/*">
												<small>（点击图片更换图片）</small>
											</div>
											<div id=""
												style="position: absolute; top: 0px; left: 0px; width: 125px; height: 125px; overflow: hidden; bottom: auto; right: auto;">

												<label
													style="opacity: 0; width: 100%; height: 100%; display: block; cursor: pointer; background: rgb(255, 255, 255);"></label>
											</div>
										</a>
										<div class="upload_jindu"></div>
										<div class="upload_bg" style="display: none;"></div>

									</div>

								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="right_main2">
					<table width="100%" border="0" cellspacing="0" cellpadding="0"
						class="wenzhang mat10 mab10">
						<tbody>
							<tr>
								<td align="right" width="150">商品详情：</td>

							</tr>
						</tbody>
					</table>
				</div>

				<div class="right_main" style="display: none">
					<table width="100%" border="0" cellspacing="0" cellpadding="0"
						class="wenzhang mat10 mab10">
						<tbody>
							<tr>
								<td align="right" width="140">页面关键词：</td>
								<td><input type="text" name="info[product_keys]" value=""
									class="inputall input500"> <span class="c888">（SEO选项）</span></td>
							</tr>
							<tr>
								<td align="right">页面描述：</td>
								<td><textarea name="info[product_desc]"
										style="width: 500px; height: 100px;"></textarea> <span
									class="c888">（SEO选项）</span></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="center mat20 mab20">
					<input type="button" value="提 交" id="submit" onclick="updateGood()" class="tjbtn">
					<input type="button" value="返回" id="back"
						onclick="window.location='${basePath}/good/good.jsp'"
						class="tjbtn">
				</div>
			</form>
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
		}
	</script>

</body>

</html>