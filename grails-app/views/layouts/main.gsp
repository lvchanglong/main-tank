<%@ page import="main.tank.ChangLiang" %>

<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		
		<meta name="Keywords" content="主坦克,吕常龙,个人网站,开放空间,快速建站,我的世界,亲身经历,解决方案,贵在真实"/>
		<meta name="Description" content="主坦克,吕常龙,个人网站,开放空间,快速建站,我的世界,亲身经历,解决方案,贵在真实"/>
		<meta name="Author" content="吕常龙">
		
		<meta name="baidu-tc-verification" content="66ad01f0020303b0fa06d197cdecd434" />
		
		<script>
			var _hmt = _hmt || [];
			(function() {
			  var hm = document.createElement("script");
			  hm.src = "//hm.baidu.com/hm.js?68c2fb57a6f059f2f5bb543a0a25b7be";
			  var s = document.getElementsByTagName("script")[0]; 
			  s.parentNode.insertBefore(hm, s);
			})();
		</script>
		
		<title><g:layoutTitle default="主坦克"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
  		<asset:stylesheet src="application.css"/>
		<asset:javascript src="application.js"/>
		<g:layoutHead/>
	</head>
	<body>
		<section id="main" class="conWidth">
			<g:pageProperty name="page.header" default="${ render(template:"/layouts/header/" + ChangLiang.HEADER_INDEX) }"/>
			<g:pageProperty name="page.logo" default="${ render(template:"/layouts/logo/" + ChangLiang.LOGO_INDEX) }"/>
			
			<div id="main-wrapper">
				<g:layoutBody/>
			</div>
			
			<g:pageProperty name="page.footer" default="${ render(template:"/layouts/footer/" + ChangLiang.FOOTER_INDEX) }"/>
			<g:pageProperty name="page.helper" default="${ render(template:"/layouts/helper/" + ChangLiang.HELPER_INDEX) }"/>
		</section>
		<div id="spinner">
			<asset:image src="WangLuo/SuCai/奔跑.png" alt="处理中"/>
			<div class="tiShi">处理中...</div>
		</div>
	</body>
</html>
