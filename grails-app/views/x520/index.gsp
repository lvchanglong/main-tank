<%@ page import="main.tank.ChangLiang" %>

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>主坦克</title>
	</head>
	<body>
		
		<div id="zhuYe" class="borderBox defaultPage">
			
			<g:render template="/layouts/transition/${ ChangLiang.TRANSITION_INDEX }" />
			
			<div style="position:absolute;right:73px;top:30px;min-width:201px;">
				<g:render template="/layouts/plugin/yongHuIP" />
			</div>

			<g:each in="${ yongHuInstanceList }" status="i" var="yongHuInstance">
				<g:render template="/layouts/other/yonghu/kapian/0" model="[yongHuInstance:yongHuInstance]" />
			</g:each>

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