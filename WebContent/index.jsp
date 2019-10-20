<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<!-- saved from url=(0024)http://x.xuebingsi.com/# -->
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
		<link rel="stylesheet" href="./X-admin-index/font_1145291_0tjk7hg6hxop.css">
		<link rel="stylesheet" href="./X-admin-index/store.css" charset="utf-8">
		<link rel="stylesheet" href="./X-admin-index/layui.css">
		<link rel="stylesheet" href="./X-admin-index/global2.css" charset="utf-8">
		<link rel="stylesheet" href="./X-admin-index/global1.css" charset="utf-8">
		<script src="./X-admin-index/hm.js.下载"></script>
		<script src="./X-admin-index/jquery.min.js.下载"></script>
		
		<script src="${pageContext.request.contextPath}/layuimini/lib/layui-v2.5.4/layui.js"></script>
<!-- 		<script src="./X-admin-index/layui.js.下载"></script> -->
		<script src="./X-admin-index/main.js.下载"></script>
		<script>
			var is_login = false;
			var login_url = '/index/login.html';
		</script>
		<link id="layuicss-layer" rel="stylesheet" href="./X-admin-index/layer.css" media="all">
	</head>

	<body>
		<div class="layui-header header header-store" style="background-color: #24262F;">
			<div class="layui-container">
				<a class="logo" href="#" style="color: #D0D1D3;font-size: 30px;font-weight: 400"> X-admin
				</a>
				<div class="layui-form component" lay-filter="LAY-site-header-component"></div>
				<ul class="layui-nav">
					<li class="layui-nav-item layui-hide-xs">
						<a href="#" target="_blank">主题创作</a><span class="layui-badge-dot" style="right: 0px;"></span></li>
					<li class="layui-nav-item layui-hide-xs "><a href="/extend/">教程</a></li> 
					<li class="layui-nav-item layui-hide-xs">
						<a href="#" target="_blank">2.2在线演示
							<span class="layui-badge-dot" style="right: 0px;"></span></a>
					</li>
					<li class="layui-nav-item layui-hide-xs">
						<a href="http://x.xuebingsi.com/index/down/index.html">下载</a>
					</li>
					<li class="layui-nav-item layui-hide-xs">
						<a href="http://bbs.xuebingsi.com/" target="_blank">社区</a>
					</li>
				 <li class="layui-nav-item layui-hide-xs"><a href="http://bbs.xuebingsi.com" target="_blank">实例</a></li> 
					<li class="layui-nav-item">
						<a href="javascript:;"><span class="layui-hide-xs">所有版本</span><span class="layui-hide-sm layui-show-xs">所有栏目</span><span class="layui-nav-more"></span></a>
						<dl class="layui-nav-child layui-anim layui-anim-upbit">
							<dd class="layui-hide-sm layui-show-xs" lay-unselect="">
								<a href="#" target="_blank">主题创作</a>
							</dd>
							 <dd class="layui-hide-sm layui-show-xs" lay-unselect=""><a href="//fly.layui.com/" target="_blank">教程</a></dd> 
							<dd class="layui-hide-sm layui-show-xs" lay-unselect="">
								<a href="#" target="_blank">2.2在线演示</a>
							</dd>
							<dd class="layui-hide-sm layui-show-xs" lay-unselect="">
								<a href="#" target="_blank">下载</a>
							</dd>
							<dd class="layui-hide-sm layui-show-xs" lay-unselect="">
								<a href="#" target="_blank">社区</a>
								<hr>
							</dd>
							<dd lay-unselect="">
								<a href="#" target="_blank">V2.2
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
						<a class="iconfont icontouxiang" style="font-size: 34px;" href="${pageContext.request.contextPath}/src/X-admin - login.jsp"></a>
					</li><span class="layui-nav-bar" style="left: 527.469px; top: 55px; width: 0px; opacity: 0;"></span></ul>
			</div>
		</div>
		<script>
			layui.use(['element', 'layer'], function() {
				var element = layui.element;
				var layer = layui.layer;
			});
		</script>
		<!--[if lt IE 9]><script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script><script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script><![endif]-->
		
		<div class="shop-nav shop-index">
			<div class="shop-banner">
				<div class="layui-carousel" lay-filter="LAY-store-banner" id="LAY-store-banner" style="background: rgb(242, 230, 214); width: 100%; height: 460px;" lay-anim="fade" lay-indicator="inside" lay-arrow="hover">
					<div carousel-item="">
						<div style="background: #E7E6EE" class="layui-carousel-next layui-carousel-left layui-this">
							<div class="layui-container">
								<a href="#" target="_blank"><img src="E:/开源前端框架\X-admin-index/006FatLvgy1g2ksw8v5yoj325s0pk40u.jpg" alt="前端后台模板"></a>
							</div>
						</div>
						<div style="background: #040227" class="layui-this layui-carousel-left">
							<div class="layui-container">
								<a href="#" target="_blank"><img src="" alt="免费模板"></a>
							</div>
						</div>
						
							<div style="background: #040227" class="layui-this layui-carousel-left">
							<div class="layui-container">
								<a href="#" target="_blank"><img src="" alt="免费模板"></a>
							</div>
						</div>
						
					</div>
					<div class="layui-carousel-ind">
						<ul>
							<li class="layui-this"></li>
							<li></li>
						</ul>
					</div><button class="layui-icon layui-carousel-arrow" lay-type="sub"></button><button class="layui-icon layui-carousel-arrow" lay-type="add"></button></div>
			</div>
			
			<div id="LAY-topbar" style="height: auto;">
				<div class="input-search">
					<div>
						<dl class="layui-hide-sm layui-show-md-inline-block"><dt>开源项目进展：</dt>
							<dd>
								<a href="#"><img src="./X-admin-index/star.svg" alt="star"></a>
							</dd>
							<dd>
								<a href="#"><img src="./X-admin-index/fork.svg" alt="fork"></a>
							</dd>
							<dd>
								<a href="#" style="color: #FF5722;">更新日志</a>
							</dd>
						</dl>
					</div>
				</div>
			</div>
		</div>
		<div class="shop-temp">
			<div class="temp-hot">
				<div class="layui-container">
					<p class="temp-title-cn"><span></span>热门主题
						<span></span></p>
					<div class="layui-row layui-col-space20">
						<div class="layui-col-xs6 layui-col-md3">
							<a class="template store-list-box" href="${pageContext.request.contextPath}/layuimini/001.jsp"><img src="./X-admin-index/img.php" class="store-list-cover">
								<h2 class="layui-elip">黑色简约的后台页面模板</h2>
								<p class="price"><span title="积分">积分0</span></p>
							</a>
						</div>
						<div class="layui-col-xs6 layui-col-md3">
							<a class="template store-list-box" href="${pageContext.request.contextPath}/layuimini/002.jsp"><img src="./X-admin-index/img(1).php" class="store-list-cover">
								<h2 class="layui-elip">非主流黑绿蓝白风</h2>
								<p class="price"><span title="积分">积分0</span></p>
							</a>
						</div>
						<div class="layui-col-xs6 layui-col-md3">
							<a class="template store-list-box" href="${pageContext.request.contextPath}/layuimini/003.jsp"><img src="./X-admin-index/img(2).php" class="store-list-cover">
								<h2 class="layui-elip">黑色小可爱后台模板</h2>
								<p class="price"><span title="积分">积分0</span></p>
							</a>
						</div>
						<div class="layui-col-xs6 layui-col-md3">
							<a class="template store-list-box" href="${pageContext.request.contextPath}/layuimini/005.jsp"><img src="./X-admin-index/img(3).php" class="store-list-cover">
								<h2 class="layui-elip">火红色后台管理系统模板</h2>
								<p class="price"><span title="积分">积分0</span></p>
							</a>
						</div>
					</div>
				</div>
			</div>
			<div class="temp-normal">
				<div class="layui-container">
					<p class="temp-title-cn"><span></span>
						<a href="http://x.xuebingsi.com/store/cat/0/">最新主题</a><span></span></p>
					<div class="layui-row layui-col-space20 shoplist">
						<div class="layui-col-xs12 layui-col-sm6 layui-col-md4 layui-col-lg3">
							<a class="template store-list-box" href="${pageContext.request.contextPath}/layuimini/004.jsp"><img src="./X-admin-index/5da9b29edad272639.png" class="store-list-cover">
								<h2 class="layui-elip">嘿嘿嘿一般吧</h2>
								<div><label class="layui-badge-rim store-list-pay">积分0</label>
									<div class="store-list-colorbar" title="嘿嘿嘿一般吧"></div>
								</div>
							</a>
						</div>
						<div class="layui-col-xs12 layui-col-sm6 layui-col-md4 layui-col-lg3">
							<a class="template store-list-box" href="${pageContext.request.contextPath}/NewFile.jsp"><img src="./X-admin-index/5da96327f3f4c5679.png" class="store-list-cover">
								<h2 class="layui-elip">优美浅蓝adminui</h2>
								<div><label class="layui-badge-rim store-list-pay">积分0</label>
									<div class="store-list-colorbar" title="优美浅蓝adminui"></div>
								</div>
							</a>
						</div>
						<div class="layui-col-xs12 layui-col-sm6 layui-col-md4 layui-col-lg3">
							<a class="template store-list-box" href="${pageContext.request.contextPath}/NewFile.jsp"><img src="./X-admin-index/5da960173f2d79502.png" class="store-list-cover">
								<h2 class="layui-elip">优美海蓝主题</h2>
								<div><label class="layui-badge-rim store-list-pay">积分0</label>
									<div class="store-list-colorbar" title="优美海蓝主题"></div>
								</div>
							</a>
						</div>
						<div class="layui-col-xs12 layui-col-sm6 layui-col-md4 layui-col-lg3">
							<a class="template store-list-box" href="http://x.xuebingsi.com/index/theme/item/1724.html"><img src="./X-admin-index/5da95e476ffcc8201.png" class="store-list-cover">
								<h2 class="layui-elip">科技蓝色主题</h2>
								<div><label class="layui-badge-rim store-list-pay">积分1</label>
									<div class="store-list-colorbar" title="科技蓝色主题"></div>
								</div>
							</a>
						</div>
						<div class="layui-col-xs12 layui-col-sm6 layui-col-md4 layui-col-lg3">
							<a class="template store-list-box" href="http://x.xuebingsi.com/index/theme/item/1720.html"><img src="./X-admin-index/5da91c335be378357.png" class="store-list-cover">
								<h2 class="layui-elip">绿色好心情</h2>
								<div><label class="layui-badge-rim store-list-pay">积分0</label>
									<div class="store-list-colorbar" title="绿色好心情"></div>
								</div>
							</a>
						</div>
						<div class="layui-col-xs12 layui-col-sm6 layui-col-md4 layui-col-lg3">
							<a class="template store-list-box" href="http://x.xuebingsi.com/index/theme/item/1717.html"><img src="./X-admin-index/5da82d6fa0d305858.png" class="store-list-cover">
								<h2 class="layui-elip">极简主义主题</h2>
								<div><label class="layui-badge-rim store-list-pay">积分0</label>
									<div class="store-list-colorbar" title="极简主义主题"></div>
								</div>
							</a>
						</div>
						<div class="layui-col-xs12 layui-col-sm6 layui-col-md4 layui-col-lg3">
							<a class="template store-list-box" href="http://x.xuebingsi.com/index/theme/item/1715.html"><img src="./X-admin-index/5da82001130ca7966.png" class="store-list-cover">
								<h2 class="layui-elip">无主题撒发射点发生</h2>
								<div><label class="layui-badge-rim store-list-pay">积分0</label>
									<div class="store-list-colorbar" title="无主题撒发射点发生"></div>
								</div>
							</a>
						</div>
						<div class="layui-col-xs12 layui-col-sm6 layui-col-md4 layui-col-lg3">
							<a class="template store-list-box" href="http://x.xuebingsi.com/index/theme/item/1712.html"><img src="./X-admin-index/5da80bb2bba9b9389.png" class="store-list-cover">
								<h2 class="layui-elip">测试1111</h2>
								<div><label class="layui-badge-rim store-list-pay">积分0</label>
									<div class="store-list-colorbar" title="测试1111"></div>
								</div>
							</a>
						</div>
						<div class="layui-col-xs12 layui-col-sm6 layui-col-md4 layui-col-lg3">
							<a class="template store-list-box" href="http://x.xuebingsi.com/index/theme/item/1709.html"><img src="./X-admin-index/5da7dd978aebc3477.png" class="store-list-cover">
								<h2 class="layui-elip">渐变色主题</h2>
								<div><label class="layui-badge-rim store-list-pay">积分0</label>
									<div class="store-list-colorbar" title="渐变色主题"></div>
								</div>
							</a>
						</div>
						<div class="layui-col-xs12 layui-col-sm6 layui-col-md4 layui-col-lg3">
							<a class="template store-list-box" href="http://x.xuebingsi.com/index/theme/item/1708.html"><img src="./X-admin-index/5da7b90dd49018123.png" class="store-list-cover">
								<h2 class="layui-elip">lzm科技蓝</h2>
								<div><label class="layui-badge-rim store-list-pay">积分0</label>
									<div class="store-list-colorbar" title="lzm科技蓝"></div>
								</div>
							</a>
						</div>
						<div class="layui-col-xs12 layui-col-sm6 layui-col-md4 layui-col-lg3">
							<a class="template store-list-box" href="http://x.xuebingsi.com/index/theme/item/1707.html"><img src="./X-admin-index/5da72f5b193a29316.png" class="store-list-cover">
								<h2 class="layui-elip">初次创作请多多包含</h2>
								<div><label class="layui-badge-rim store-list-pay">积分0</label>
									<div class="store-list-colorbar" title="初次创作请多多包含"></div>
								</div>
							</a>
						</div>
						<div class="layui-col-xs12 layui-col-sm6 layui-col-md4 layui-col-lg3">
							<a class="template store-list-box" href="http://x.xuebingsi.com/index/theme/item/1705.html"><img src="./X-admin-index/5da6ef3737dc69830.png" class="store-list-cover">
								<h2 class="layui-elip">special</h2>
								<div><label class="layui-badge-rim store-list-pay">积分0</label>
									<div class="store-list-colorbar" title="special"></div>
								</div>
							</a>
						</div>
					</div>
					<div class="shop-more">
						<a href="http://x.xuebingsi.com/index/index/more.html"><i class="layui-icon layui-icon-shop-more"></i></a>
					</div>
				</div>
			</div>
		</div>
		<div class="fly-footer">
			<p>
				<a href="http://x.xuebingsi.com/">X-admin </a>2019 ©
				<a href="http://x.xuebingsi.com/">x.xuebingsi.com</a>
			</p>
			<p>
				<a href="http://www.daniuit.com/" target="_blank" title="大牛学院">大牛学院</a>
				<a href="http://www.xuebingsi.com/" target="_blank" title="PHP培训">PHP培训</a>
				<a href="http://www.baidu.com/" target="_blank" title="百度一下">百度一下</a>
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
			layui.use(['carousel'], function() {
				var carousel = layui.carousel

				var elemBanner = $('#LAY-store-banner'),
					ins1 = carousel.render({
						elem: elemBanner,
						width: '100%',
						height: elemBanner.height() + 'px',
						interval: 6000,
						anim: 'default',//default（左右切换）updown（上下切换）fade（渐隐渐显切换）
						arrow: 'always', //始终显示箭头
						//full:'false',
						autoplay:'true',
						interval:'1000',
						index:'0'
					});
				$(window).on('resize', function() {
					var width = $(this).prop('innerWidth');
					ins1.reload({
						height: (width > 768 ? 460 : 115) + 'px'
					});
				});
				//监听轮播切换事件
				carousel.on('change(LAY-store-banner)', function(obj) {
					$('.shop-banner').css('background', obj.item.data('color'));
				});

			});
		</script>
	</body>

</html>