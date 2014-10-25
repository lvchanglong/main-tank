<%@ page import="main.tank.ChangLiang" %>

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>主坦克</title>
	</head>
	<body>

		<div id="zhuYe" class="borderBox">
			
			<section class="decoration">
				<g:render template="/layouts/plugin/huanDengPian" model="[instanceList: slideList, width:'960px', height:'372px']"/>
			</section>
			
			<section class="decorationWidthPadding">
				<g:render template="/layouts/transition/IP" />
			</section>
			
			<section class="decorationWidthPadding">
				<h2>更新日志</h2>
				<g:applyLayout controller="gengXin" action="index" params="[offset:0, max:5, gengXinInstanceList:gengXinInstanceList,gengXinInstanceCount:gengXinInstanceCount]" />
			</section>
			
			<section class="decoration">
				<g:render template="/layouts/transition/shiZhong" />
			</section>
			
			<section class="decorationWidthPadding">
				<h2>用户信息</h2>
				<g:applyLayout controller="yongHu" action="index" params="[offset:0, max:5, yongHuInstanceList:yongHuInstanceList, yongHuInstanceCount:yongHuInstanceCount]" />
			</section>
			
			<section class="decorationWidthPadding end">
				<g:render template="/layouts/plugin/liuShuiXian" model="[instanceList: cardList]"/>
			</section>
			
		</div>
		
		<content tag="header">
			Default Header
		</content>
		
		<content tag="footer">
			Default Footer
		</content>
		
		<content tag="logo">
			Default Logo
		</content>
		
		<content tag="helper">
			Default Helper
		</content>
		
	</body>
</html>