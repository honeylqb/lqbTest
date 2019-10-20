<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<!-- saved from url=(0039)http://x.xuebingsi.com/index/login.html -->
<html class="fly-html-layui fly-html-store">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>X-admin - 经典前端网站后台管理模板框架</title>
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="referrer" content="never">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<meta name="keywords" content="X-admin,前端框架,后台框架,前端模板,UI模板">
		<meta name="description" content="X-admin基于layui的轻量级前端后台管理框架，简单免费，兼容性好，面向所有层次的前后端程序。创立于2017年初，为了敏捷WEB应用开发和简化企业应用开发而诞生的。">
		<link rel="stylesheet" href="./X-admin - login_files/font_1145291_0tjk7hg6hxop.css">
		<link rel="stylesheet" href="./X-admin - login_files/store.css" charset="utf-8">
		<link rel="stylesheet" href="./X-admin - login_files/layui.css">
		<link rel="stylesheet" href="./X-admin - login_files/global2.css" charset="utf-8">
		<link rel="stylesheet" href="./X-admin - login_files/global1.css" charset="utf-8">
		<script src="./X-admin - login_files/hm.js.下载"></script>
		<script src="./X-admin - login_files/jquery.min.js.下载"></script>
		<script src="./X-admin - login_files/layui.js.下载"></script>
		<script src="./X-admin - login_files/main.js.下载"></script>
		<script>
			var is_login = false;
			var login_url = '/index/login.html';
		</script>
		<style>
			#login {
				background: url(https://gw.alicdn.com/tfs/TB1ittHRFXXXXcSXFXXXXXXXXXX-2880-1280.jpg);
				background-size: cover;
				min-height: 580px;
			}
			
			.fly-footer {
				margin-top: 0px;
			}
			
			#login-module {
				background: #fff;
				width: 380px;
				height: 380px;
				padding-top: 22px;
				border: none;
				position: absolute;
				right: 0;
			}
			
			.login-body-box {
				width: 990px;
				padding-top: 74px;
				margin: auto;
				position: relative;
				height: 388px;
			}
			
			.login-body-txt-box {
				position: absolute;
				left: 0;
				color: #fff;
				text-align: left;
				top: 90px;
			}
			
			.login-body-txt-box h1 {
				font-size: 30px;
				color: #FFFFFF;
				line-height: 36px;
				margin-bottom: 19px;
				font-weight: bold;
			}
			
			.login-body-txt-box li {
				font-size: 14px;
				color: #FFFFFF;
				letter-spacing: 0.47px;
				line-height: 30px;
			}
			
			.corner-icon-view .login-tip {
				position: absolute;
				top: 140px;
				right: 230px;
				display: block
			}
			
			.corner-icon-view .poptip {
				line-height: 16px;
				position: relative;
				z-index: 9999;
				background-color: #e6f9fc;
				border: 1px solid #00c1de;
				padding: 5px 10px
			}
			
			.corner-icon-view .poptip .poptip-content {
				color: #00c1de;
				font-size: 12px;
				font-weight: 400
			}
			
			.corner-icon-view .poptip .poptip-arrow {
				position: absolute;
				z-index: 10;
				*zoom: 1;
				top: 8px;
				right: 0
			}
			
			.corner-icon-view .poptip .poptip-arrow em,
			.corner-icon-view .poptip .poptip-arrow span {
				position: absolute;
				*zoom: 1;
				width: 0;
				height: 0;
				border-color: hsla(0, 0%, 100%, 0);
				border-color: transparent \0;
				*border-color: transparent;
				_border-color: tomato;
				_-webkit-filter: chroma(color=tomato);
				_: chroma(color=tomato);
				border-style: solid;
				overflow: hidden;
				top: 0;
				left: 0;
				border-left-color: #e6f9fc
			}
			
			.corner-icon-view .poptip .poptip-arrow em {
				top: 0;
				left: 1px;
				border-left-color: #00c1de;
				border-width: 6px 0 6px 6px
			}
			
			.corner-icon-view .poptip .poptip-arrow span {
				border-left-color: #e6f9fc;
				border-width: 6px 0 6px 6px
			}
			
			.master-login-title {
				width: 100%;
				font-size: 16px;
				font-weight: 700;
				padding-bottom: 5px;
				margin: 0 auto 10px;
				font-size: 18px;
				font-weight: 400;
				color: #373d41;
			}
			
			.corner-icon-view {
				position: relative;
				margin: 0px auto;
				padding: 0px 25px;
			}
			
			.qrcode {
				text-align: center;
				margin-top: 50px;
			}
			
			.iconerweima {
				font-size: 50px;
				font-weight: 200;
				color: #333;
				cursor: pointer;
				margin-top: 50px;
				display: inline-block;
			}
			
			.notice {
				margin-top: 20px;
				font-size: 12px;
				color: #9b9ea0;
			}
		</style>
		<link id="layuicss-layer" rel="stylesheet" href="./X-admin - login_files/layer.css" media="all">
	</head>

	<body>
		<div class="layui-header header header-store" style="background-color: #24262F;">
			<div class="layui-container">
				<a class="logo" href="http://x.xuebingsi.com/" style="color: #D0D1D3;font-size: 30px;font-weight: 400"> X-admin
				</a>
				<div class="layui-form component" lay-filter="LAY-site-header-component"></div>
				<ul class="layui-nav">
					<li class="layui-nav-item layui-hide-xs">
						<a href="http://x.xuebingsi.com/index/theme/create.html" target="_blank">主题创作</a><span class="layui-badge-dot" style="right: 0px;"></span></li>
					<!-- <li class="layui-nav-item layui-hide-xs "><a href="/extend/">教程</a></li> -->
					<li class="layui-nav-item layui-hide-xs">
						<a href="#" target="_blank">2.2在线演示
							<span class="layui-badge-dot" style="right: 0px;"></span></a>
					</li>
					<li class="layui-nav-item layui-hide-xs">
						<a href="#">下载</a>
					</li>
					<li class="layui-nav-item layui-hide-xs">
						<a href="#" target="_blank">社区</a>
					</li>
					<!-- <li class="layui-nav-item layui-hide-xs"><a href="http://bbs.xuebingsi.com" target="_blank">实例</a></li> -->
					<li class="layui-nav-item">
						<a href="javascript:;"><span class="layui-hide-xs">所有版本</span><span class="layui-hide-sm layui-show-xs">所有栏目</span><span class="layui-nav-more"></span></a>
						<dl class="layui-nav-child layui-anim layui-anim-upbit">
							<dd class="layui-hide-sm layui-show-xs" lay-unselect="">
								<a href="http://x.xuebingsi.com/index/theme/create.html" target="_blank">主题创作</a>
							</dd>
							<!--  <dd class="layui-hide-sm layui-show-xs" lay-unselect=""><a href="//fly.layui.com/" target="_blank">教程</a></dd> -->
							<dd class="layui-hide-sm layui-show-xs" lay-unselect="">
								<a href="http://x.xuebingsi.com/x-admin/v2.2/" target="_blank">2.2在线演示</a>
							</dd>
							<dd class="layui-hide-sm layui-show-xs" lay-unselect="">
								<a href="http://x.xuebingsi.com/index/down/index.html" target="_blank">下载</a>
							</dd>
							<dd class="layui-hide-sm layui-show-xs" lay-unselect="">
								<a href="http://bbs.xuebingsi.com/" target="_blank">社区</a>
								<hr>
							</dd>
							<dd lay-unselect="">
								<a href="http://x.xuebingsi.com/x-admin/v2.2/" target="_blank">V2.2
									<span class="layui-badge-dot"></span></a>
							</dd>
							<dd lay-unselect="">
								<a href="http://x.xuebingsi.com/x-admin/v2.1/" target="_blank">V2.1</a>
							</dd>
							<dd lay-unselect="">
								<a href="http://x.xuebingsi.com/x-admin/v2.0/" target="_blank">V2.0</a>
							</dd>
							<dd lay-unselect="">
								<a href="http://x.xuebingsi.com/x-admin/v1.1/" target="_blank">V1.1</a>
							</dd>
							<dd lay-unselect="">
								<a href="http://x.xuebingsi.com/x-admin/v1.0/" target="_blank">V1.0</a>
							</dd>
						</dl>
					</li>
					<li class="layui-nav-item">
						<a class="iconfont icontouxiang" style="font-size: 34px;" href="${pageContext.request.contextPath}/layuimini/index.html"></a>
					</li><span class="layui-nav-bar" style="left: 58.4141px; top: 55px; width: 0px; opacity: 0;"></span></ul>
			</div>
		</div>
		<script>
			layui.use(['element', 'layer'], function() {
				var element = layui.element;
				var layer = layui.layer;
			});
		</script>
			
		<div id="login" class="layui-fluid">
			<div class="layui-container" >
				<div class="login-body-box">
				
			
			<a class="login-body-txt-box"   style=" text-decoration: none !important;">
						<h1 class="box-title">经典框架</h1>
					
						<ul>
							<li>永久免费开源</li>
							<li>多种主题选择</li>
							<li>覆盖个人和初创企业需求</li>
							<li>降低开发成本</li>
					
						</ul>
		
				</a> 
					<ul>
						
						</ul>
					
					<div id="login-module">
						<div class="corner-icon-view">
							<div class="master-login-title">登录窗口</div>
							<div class="login-tip">
								<div class="poptip">
									<div class="poptip-arrow"><em></em><span></span></div>
									<div class="poptip-content">test2</div>
								</div>
							</div>
							<div class="row qrcode"><img width="140" height="140" style="display: none;" src="${pageContext.request.contextPath}/layuimini/index.html" alt="" id="qrcode"><i class="iconfont iconerweima" id="create"></i>
								<p class="notice">打开 微信APP 扫一扫登录</p>
							</div><input type="hidden" id="token" name="__token__" value="fd9008757ad381662120b317e221afb3">
								<a href="${pageContext.request.contextPath}/layuimini/index.html" class="layui-btn layui-btn-warm"> 登录后台</a>
								<a href="${pageContext.request.contextPath}/layuimini/page/login-1.html" class="layui-btn layui-btn-normal"> 登录1</a>
								<a href="${pageContext.request.contextPath}/layuimini/page/login-2.html" class="layui-btn layui-btn-normal"> 登录2</a>
							</div>
					</div>
		
	
			</div>
		</div>
		</div>
		<div class="fly-footer">
			<p>
				<a href="http://x.xuebingsi.com/">X-admin </a>2019 ©
				<a href="http://x.xuebingsi.com/">x.xuebingsi.com</a>
			</p>
		</div>
		<script>
			var _hmt = _hmt || [];
			(function() {
				var hm = document.createElement("script");
				hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
				var s = document.getElementsByTagName("script")[0];
				s.parentNode.insertBefore(hm, s);
			})();
		</script>
		<script>
			layui.use(['jquery', 'layer'], function() {
				var $ = layui.jquery;

				$('#create').click(function(event) {
					$.post("/index/login/qrcode.html", {
						__token__: $('#token').val()
					}, function(data, textStatus, xhr) {
						setTimeout(timeout, 500000);
						logintime = setInterval(checkLogin, 3000);
						$('#token').val(data.data.token);
						if(data.code == 1) {
							$('#create').hide();
							$('.poptip').hide();
							$('#qrcode').attr('src', data.data.src).show();
						} else {
							clearInterval(logintime);
							layer.msg('玩命卖萌中', function() {});
						}
					});
				});
			});

			function timeout() {
				var index = layer.alert('二维码过期,重新生成', {
					icon: 6
				}, function(argument) {
					layer.close(index);
					$('#create').show();
					$('.poptip').show();
					$('#qrcode').hide();
				});
				clearInterval(logintime);

			}

			function checkLogin() {
				$.get('/index/login/check.html', function(data) {
					if(data.code == 1) {
						clearInterval(logintime);
						layer.msg('扫码登录成功', function() {
							location.href = "/";
						});
					}
				});
			}
		</script>
	</body>

</html>