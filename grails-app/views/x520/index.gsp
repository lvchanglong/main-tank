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
			
			<div style="position:absolute;left:30px;top:38px;min-width:201px;">
				<g:render template="/layouts/plugin/yongHuIP" />
			</div>
			
			<div style="margin-top:30px;">
				<h2>网站更新日志</h2>
				<g:applyLayout controller="gengXin" action="index" params="[offset:params.offset, max:params.max, gengXinInstanceList:gengXinInstanceList,gengXinInstanceCount:gengXinInstanceCount]" />
			</div>
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