<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>添加商品 - 欢迎使用PHPSHE商城系统</title>
<meta name="keywords" content="">
<meta name="description" content="">
<link rel="shortcut icon" type="image/ico"
	href="http://localhost/shop4/favicon.ico">
<link type="text/css" rel="stylesheet"
	href="http://localhost/shop4/template/default/admin/css/style.css">
<script type="text/javascript"
	src="http://localhost/shop4/include/js/jquery.js"></script>
<script type="text/javascript"
	src="http://localhost/shop4/include/js/global.js"></script>
<script type="text/javascript"
	src="http://localhost/shop4/include/js/arttpl.js"></script>
<script type="text/javascript"
	src="http://localhost/shop4/include/plugin/layer/layer.js"></script>
<link rel="stylesheet"
	href="http://localhost/shop4/include/plugin/layer/skin/default/layer.css?v=3.0.11110"
	id="layuicss-skinlayercss">
<link
	href="http://localhost/shop4/include/plugin/my97/skin/WdatePicker.css"
	rel="stylesheet" type="text/css">
<link
	href="http://localhost/shop4/include/plugin/editor/themes/default/default.css"
	rel="stylesheet">
</head>
<body style="overflow-y: hidden">
	<div class="bgimg"></div>
	<div class="pagetop">
		<div class="head">
			<div class="logo fl">
				<img
					src="http://localhost/shop4/template/default/admin/images/logo.png">
			</div>
			<div class="head_r fr">
				<a href="admin.php" class="head_tb1" style="border-left: 0"><s></s>概况</a>
				<a href="admin.php?mod=moban" class="head_tb8"><s></s>模板</a> <a
					href="admin.php?mod=tongji" class="head_tb3"><s></s>统计</a> <a
					href="admin.php?mod=db" class="head_tb5"><s></s>备份</a> <a
					href="admin.php?mod=cache" class="head_tb6"><s></s>缓存</a> <a
					href="http://localhost/shop4/" target="_blank" class="head_tb7"><s></s>首页</a>
				<a href="admin.php?mod=do&amp;act=logout" class="head_tb2"
					style="background: none"><s></s>退出</a>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<div class="content">
		<div class="left" style="height: 349px;">
			<div class="fenlei">
				<h3 class="fl_tb1">
					<s></s>商品中心
				</h3>
				<ul>
					<li class="sel"><a href="admin.php?mod=product&amp;state=1"><span>├</span>商品列表</a></li>
					<li class=""><a href="admin.php?mod=category"><span>├</span>商品分类</a></li>
					<li class=""><a href="admin.php?mod=brand"><span>├</span>品牌管理</a></li>
					<li class=""><a href="admin.php?mod=comment"><span>├</span>评价管理</a></li>
				</ul>
				<div class="clear"></div>
				<div class="xian"></div>
			</div>
			<div class="fenlei">
				<h3 class="fl_tb3">
					<s></s>交易中心
				</h3>
				<ul>
					<li class=""><a href="admin.php?mod=order"><span>├</span>订单列表</a></li>
					<li class=""><a href="admin.php?mod=moneylog"><span>├</span>资金明细</a></li>
					<li class=""><a href="admin.php?mod=pointlog"><span>├</span>积分明细</a></li>
					<li class=""><a href="admin.php?mod=order_pay"><span>├</span>充值记录</a></li>
					<li class=""><a href="admin.php?mod=cashout"><span>├</span>提现管理</a></li>
				</ul>
				<div class="clear"></div>
				<div class="xian"></div>
			</div>
			<div class="fenlei">
				<h3 class="fl_tb4">
					<s></s>用户中心
				</h3>
				<ul>
					<li class=""><a href="admin.php?mod=user"><span>├</span>会员列表</a></li>
					<li class=""><a href="admin.php?mod=userlevel"><span>├</span>会员等级</a></li>
					<li class=""><a href="admin.php?mod=admin"><span>├</span>管
							理 员</a></li>
					<li class=""><a href="admin.php?mod=adminlevel"><span>├</span>管理权限</a></li>
				</ul>
				<div class="clear"></div>
				<div class="xian"></div>
			</div>
			<div class="fenlei">
				<h3 class="fl_tb2">
					<s></s>文章中心
				</h3>
				<ul>
					<li class=""><a href="admin.php?mod=class"><span>├</span>文章分类</a></li>
					<li class=""><a href="admin.php?mod=article"><span>├</span>文章列表</a></li>
				</ul>
				<div class="clear"></div>
				<div class="xian"></div>
			</div>
			<div class="fenlei">
				<h3 class="fl_tb6">
					<s></s>控制面板
				</h3>
				<ul>
					<li class=""><a href="admin.php?mod=setting&amp;act=base"><span>├</span>网站设置</a></li>
					<li class=""><a href="admin.php?mod=payway"><span>├</span>支付设置</a></li>
					<li class=""><a href="admin.php?mod=menu"><span>├</span>导航管理</a></li>
					<li class=""><a href="admin.php?mod=ad"><span>├</span>广告管理</a></li>
					<li class=""><a href="admin.php?mod=link"><span>├</span>友情链接</a></li>
				</ul>
				<div class="clear"></div>
			</div>
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
								<td colspan="3"><input type="text"
									name="info[product_name]" value="" class="inputall input700"></td>
							</tr>
							<tr>
								<td align="right" width="150">商品分类：</td>
								<td><select name="info[category_id]" class="inputselect"
									style="width: 250px">
										<option value="0">-- 商品分类 --</option>
										<option value="1">哇哈哈</option>
										<option value="2">酒</option>
								</select></td>
							</tr>
							<tr>
								<td align="right">品牌名称：</td>
								<td><select name="info[brand_id]" class="inputselect"
									style="width: 250px">
										<option value="0">-- 请选择 --</option>
								</select></td>
							</tr>
							<tr id="base_html">
								<td align="right">价 格：</td>
								<td><input type="text" name="info[product_smoney]"
									value="0" class="inputall input100"> <span class="c888">元</span>，
									库存：<input type="text" name="info[product_num]" value=""
									class="inputall input100"> <span class="c888">件</span>
								</td>
							</tr>
							<tr id="base_html">
			<td align="right">基本信息：</td>
			<td>	
				<table width="100%" class="list" style="width:702px;border:1px #eee solid">
				<tr>
					<th class="bgtt" width="70">本店价</th>
					<th class="bgtt" width="70">市场价</th>
					<th class="bgtt" width="70">库存</th>
				</tr>
				<tr>
					<td><input type="text" name="info[product_smoney]" value="0" class="inputtext input100" /> 元</td>
					<td><input type="text" name="info[product_mmoney]" value="0" class="inputtext input100" /> 元</td>
					<td><input type="text" name="info[product_num]" value="" class="inputtext input100" /> 件</td>
				</tr>
				</table>
			</td>
		</tr>
							<tr>
			<td align="right">商品货号：</td>
			<td><input type="text" name="info[product_mark]" value="" class="inputall input100" /></td>
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
											class="upload_btn webuploader-container"><div
												class="webuploader-pick">
												<img
													src="http://localhost/shop4/template/default/admin/images/up_bg.jpg"
													class="upload_logo" style="width: 125px; height: 125px;">
											</div>
											<div id="rt_rt_1c9dkam94hr61ffpng8g5b10b1"
												style="position: absolute; top: 0px; left: 0px; width: 125px; height: 125px; overflow: hidden; bottom: auto; right: auto;">
												<input type="file" name="file"
													class="webuploader-element-invisible" multiple="multiple"
													accept="image/*"><label
													style="opacity: 0; width: 100%; height: 100%; display: block; cursor: pointer; background: rgb(255, 255, 255);"></label>
											</div></a>
										<div class="upload_jindu"></div>
										<div class="upload_bg" style="display: none;"></div>
										<div class="upload_do">
											<a href="javascript:;" class="upload_left"></a> <a
												href="javascript:;" class="upload_right"></a> <a
												href="javascript:;" class="upload_del"></a>
										</div>
									</div>
									<div class="upload_html fl" lock="0">
										<input type="hidden" name="product_album[]" value=""
											class="upload_value"> <a href="javascript:;"
											class="upload_btn webuploader-container"><div
												class="webuploader-pick">
												<img
													src="http://localhost/shop4/template/default/admin/images/up_bg.jpg"
													class="upload_logo" style="width: 125px; height: 125px;">
											</div>
											<div id="rt_rt_1c9dkam951shittp1mkd16nvf43"
												style="position: absolute; top: 0px; left: 0px; width: 125px; height: 125px; overflow: hidden; bottom: auto; right: auto;">
												<input type="file" name="file"
													class="webuploader-element-invisible" multiple="multiple"
													accept="image/*"><label
													style="opacity: 0; width: 100%; height: 100%; display: block; cursor: pointer; background: rgb(255, 255, 255);"></label>
											</div></a>
										<div class="upload_jindu"></div>
										<div class="upload_bg" style="display: none;"></div>
										<div class="upload_do">
											<a href="javascript:;" class="upload_left"></a> <a
												href="javascript:;" class="upload_right"></a> <a
												href="javascript:;" class="upload_del"></a>
										</div>
									</div>
									<div class="upload_html fl" lock="0">
										<input type="hidden" name="product_album[]" value=""
											class="upload_value"> <a href="javascript:;"
											class="upload_btn webuploader-container"><div
												class="webuploader-pick">
												<img
													src="http://localhost/shop4/template/default/admin/images/up_bg.jpg"
													class="upload_logo" style="width: 125px; height: 125px;">
											</div>
											<div id="rt_rt_1c9dkam951pa55aelm91oi04r75"
												style="position: absolute; top: 0px; left: 0px; width: 125px; height: 125px; overflow: hidden; bottom: auto; right: auto;">
												<input type="file" name="file"
													class="webuploader-element-invisible" multiple="multiple"
													accept="image/*"><label
													style="opacity: 0; width: 100%; height: 100%; display: block; cursor: pointer; background: rgb(255, 255, 255);"></label>
											</div></a>
										<div class="upload_jindu"></div>
										<div class="upload_bg" style="display: none;"></div>
										<div class="upload_do">
											<a href="javascript:;" class="upload_left"></a> <a
												href="javascript:;" class="upload_right"></a> <a
												href="javascript:;" class="upload_del"></a>
										</div>
									</div>
									<div class="upload_html fl" lock="0">
										<input type="hidden" name="product_album[]" value=""
											class="upload_value"> <a href="javascript:;"
											class="upload_btn webuploader-container"><div
												class="webuploader-pick">
												<img
													src="http://localhost/shop4/template/default/admin/images/up_bg.jpg"
													class="upload_logo" style="width: 125px; height: 125px;">
											</div>
											<div id="rt_rt_1c9dkam96p2n6v6sso57j1qoh7"
												style="position: absolute; top: 0px; left: 0px; width: 125px; height: 125px; overflow: hidden; bottom: auto; right: auto;">
												<input type="file" name="file"
													class="webuploader-element-invisible" multiple="multiple"
													accept="image/*"><label
													style="opacity: 0; width: 100%; height: 100%; display: block; cursor: pointer; background: rgb(255, 255, 255);"></label>
											</div></a>
										<div class="upload_jindu"></div>
										<div class="upload_bg" style="display: none;"></div>
										<div class="upload_do">
											<a href="javascript:;" class="upload_left"></a> <a
												href="javascript:;" class="upload_right"></a> <a
												href="javascript:;" class="upload_del"></a>
										</div>
									</div>
									<div class="upload_html fl" lock="0">
										<input type="hidden" name="product_album[]" value=""
											class="upload_value"> <a href="javascript:;"
											class="upload_btn webuploader-container"><div
												class="webuploader-pick">
												<img
													src="http://localhost/shop4/template/default/admin/images/up_bg.jpg"
													class="upload_logo" style="width: 125px; height: 125px;">
											</div>
											<div id="rt_rt_1c9dkam972hjbo1gd5tabojt9"
												style="position: absolute; top: 0px; left: 0px; width: 125px; height: 125px; overflow: hidden; bottom: auto; right: auto;">
												<input type="file" name="file"
													class="webuploader-element-invisible" multiple="multiple"
													accept="image/*"><label
													style="opacity: 0; width: 100%; height: 100%; display: block; cursor: pointer; background: rgb(255, 255, 255);"></label>
											</div></a>
										<div class="upload_jindu"></div>
										<div class="upload_bg" style="display: none;"></div>
										<div class="upload_do">
											<a href="javascript:;" class="upload_left"></a> <a
												href="javascript:;" class="upload_right"></a> <a
												href="javascript:;" class="upload_del"></a>
										</div>
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
								<td style="padding: 5px">
									<div class="ke-container ke-container-default"
										style="width: 850px;">
										<div style="display: block;" class="ke-toolbar"
											unselectable="on">
											<span class="ke-outline" data-name="fontsize" title="文字大小"
												unselectable="on"><span
												class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-fontsize"
												unselectable="on"></span></span><span class="ke-outline"
												data-name="forecolor" title="文字颜色" unselectable="on"><span
												class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-forecolor"
												unselectable="on"></span></span><span class="ke-outline"
												data-name="hilitecolor" title="文字背景" unselectable="on"><span
												class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-hilitecolor"
												unselectable="on"></span></span><span class="ke-outline"
												data-name="bold" title="粗体(Ctrl+B)" unselectable="on"><span
												class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-bold"
												unselectable="on"></span></span><span class="ke-outline"
												data-name="underline" title="下划线(Ctrl+U)" unselectable="on"><span
												class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-underline"
												unselectable="on"></span></span><span class="ke-outline"
												data-name="strikethrough" title="删除线" unselectable="on"><span
												class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-strikethrough"
												unselectable="on"></span></span><span
												class="ke-outline ke-selected" data-name="justifyleft"
												title="左对齐" unselectable="on"><span
												class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-justifyleft"
												unselectable="on"></span></span><span class="ke-outline"
												data-name="justifycenter" title="居中" unselectable="on"><span
												class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-justifycenter"
												unselectable="on"></span></span><span class="ke-outline"
												data-name="justifyright" title="右对齐" unselectable="on"><span
												class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-justifyright"
												unselectable="on"></span></span><span class="ke-outline"
												data-name="insertorderedlist" title="编号" unselectable="on"><span
												class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-insertorderedlist"
												unselectable="on"></span></span><span class="ke-outline"
												data-name="insertunorderedlist" title="项目符号"
												unselectable="on"><span
												class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-insertunorderedlist"
												unselectable="on"></span></span><span class="ke-outline"
												data-name="image" title="图片" unselectable="on"><span
												class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-image"
												unselectable="on"></span></span><span class="ke-outline"
												data-name="multiimage" title="批量图片上传" unselectable="on"><span
												class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-multiimage"
												unselectable="on"></span></span><span class="ke-outline"
												data-name="flash" title="Flash" unselectable="on"><span
												class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-flash"
												unselectable="on"></span></span><span class="ke-outline"
												data-name="emoticons" title="插入表情" unselectable="on"><span
												class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-emoticons"
												unselectable="on"></span></span><span class="ke-outline"
												data-name="link" title="超级链接" unselectable="on"><span
												class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-link"
												unselectable="on"></span></span><span class="ke-outline"
												data-name="unlink" title="取消超级链接" unselectable="on"><span
												class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-unlink"
												unselectable="on"></span></span><span class="ke-outline"
												data-name="removeformat" title="删除格式" unselectable="on"><span
												class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-removeformat"
												unselectable="on"></span></span><span class="ke-outline"
												data-name="clearhtml" title="清理HTML代码" unselectable="on"><span
												class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-clearhtml"
												unselectable="on"></span></span><span class="ke-outline"
												data-name="fullscreen" title="全屏显示" unselectable="on"><span
												class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-fullscreen"
												unselectable="on"></span></span><span class="ke-outline"
												data-name="source" title="HTML代码" unselectable="on"><span
												class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-source"
												unselectable="on"></span></span><span class="ke-outline"
												data-name="about" title="关于" unselectable="on"><span
												class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-about"
												unselectable="on"></span></span>
										</div>
										<div style="display: block; height: 461px;" class="ke-edit">
											<iframe class="ke-edit-iframe" hidefocus="true"
												frameborder="0" tabindex=""
												style="width: 100%; height: 461px;"></iframe>
											<textarea class="ke-edit-textarea" hidefocus="true"
												tabindex=""
												style="width: 100%; height: 461px; display: none;"></textarea>
										</div>
										<div class="ke-statusbar">
											<span class="ke-inline-block ke-statusbar-center-icon"></span><span
												class="ke-inline-block ke-statusbar-right-icon"></span>
										</div>
									</div>
									<textarea name="info[product_text]" id="editortext"
										style="width: 850px; height: 500px; display: none;"></textarea>
								</td>
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
					<input type="hidden" name="pesubmit"> <input type="hidden"
						name="pe_token" value="b39628610a717b0bb433c30540035a4b">
					<input type="button" value="提 交" class="tjbtn">
				</div>
			</form>
		</div>
		<script charset="utf-8"
			src="http://localhost/shop4/include/plugin/my97/WdatePicker.js"></script>
		<script charset="utf-8"
			src="http://localhost/shop4/include/plugin/editor/kindeditor.js"></script>
		<script charset="utf-8"
			src="http://localhost/shop4/include/plugin/editor/lang/zh_CN.js"></script>
		<link rel="stylesheet" type="text/css"
			href="http://localhost/shop4/include/plugin/webuploader/webuploader.css">
		<script charset="utf-8"
			src="http://localhost/shop4/include/plugin/webuploader/webuploader.min.js"></script>
		<script charset="utf-8"
			src="http://localhost/shop4/include/plugin/webuploader/upload.js"></script>
		<script type="text/javascript" charset="utf-8">
			var editor;
			KindEditor.ready(function(K) {
				editor = K.create('#editortext', {
					allowFlashUpload : false,
					afterBlur : function() {
						this.sync();
					}
				});
			});
			$(function() {
				rule_list("", 'init');
				$("body").pe_upload('pc', 5);
				$(".now a").click(function() {
					var _index = $(this).index();
					$(".now a").removeClass("sel");
					$(this).addClass("sel");
					if (_index == 0) {
						$(".right_main:eq(0), .right_main2").show();
						$(".right_main:eq(1)").hide();
					} else {
						$(".right_main:eq(0), .right_main2").hide();
						$(".right_main:eq(1)").show();
					}
				})
				$(":button")
						.click(
								function() {
									var kong_num = rule_num = 0;
									if ($(":input[name='prorule_key[]']").length > 0) {
										$("#rule_html")
												.find(":input")
												.each(
														function() {
															if ($(this).attr(
																	"disabled") == "disabled"
																	|| $(this)
																			.is(
																					":hidden"))
																return true;
															if ($(this).val() == '')
																kong_num++;
														})
										if (kong_num > 0) {
											alert('规格属性尚未填写完全');
											return;
										}
									}
									$("form").submit();
								})
			});
			//打开规格框
			function rule_open() {
				url = "admin.php?mod=product&act=rule";
				if ($(":input[name='prorule_key[]']").length > 0) {
					var prorule_key = new Array();
					$(":input[name='prorule_key[]']").each(function() {
						prorule_key.push($(this).val());
					})
					prorule_key = prorule_key.join(',');
					url += "&id=" + prorule_key;
				}
				pe_dialog(url, '选择规格', 1000, 550);
			}
			//关闭规格
			function rule_close() {
				$("#rule_html").hide();
				$("#rule_html tr").remove();
				$("#base_html").show();
			}
			//显示规格列表
			function rule_list(id, type) {
				$.getJSON("admin.php?mod=product&act=rule_list&type=" + type
						+ "&id=" + id, function(json) {
					if (json.result) {
						$("#rule_html").show();
						$("#base_html").hide();
						pe_jsontpl('rule_list', json);
					}
				})
			}
			//删除规格列表
			function rule_del(id) {
				if ($("#rule_html tr").length <= 2) {
					rule_close();
				} else {
					$("#" + id).remove();
				}
			}
			//批量设置价格
			function rule_bat(name) {
				if (name == 'product_smoney')
					text = '本店价';
				if (name == 'product_mmoney')
					text = '市场价';
				if (name == 'product_num')
					text = '库存数';
				var num = window.prompt("批量设置" + text, "");
				if (num == '') {
					alert('不能为空!');
					return;
				}
				if (num == null) {
					return;
				}
				$(":input[name='" + name + "[]']").val(num);
			}
		</script>
		<style>
#base_html table th, #rule_html table th {
	padding: 3px 5px;
	border: 1px #e5e5e5 solid;
	border-right: 0;
	border-left: 0;
	font-weight: normal;
}

#base_html table td, #rule_html table td {
	padding: 5px
}
</style>
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

</body>
</html>