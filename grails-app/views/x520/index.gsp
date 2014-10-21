<%@ page import="main.tank.ChangLiang" %>

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>主坦克</title>
	</head>
	<body>

		<div id="zhuYe" class="borderBox defaultPage">
			
			<div style="position:relative;margin-bottom:30px;border-bottom: 1px dashed #d3e3f5;">
				<g:render template="/layouts/transition/${ ChangLiang.TRANSITION_INDEX }" />
				
				<div style="position:absolute;right:0;top:0;min-width:201px;">
					<g:render template="/layouts/plugin/yongHuIP" />
				</div>
			</div>
			<div style="margin-bottom:30px;border-bottom: 1px dashed #d3e3f5;">
				<h2>更新日志</h2>
				<g:applyLayout controller="gengXin" action="index" params="[offset:params.offset, max:params.max, gengXinInstanceList:gengXinInstanceList,gengXinInstanceCount:gengXinInstanceCount]" />
			</div>
			
			<div style="margin-bottom:30px;border-bottom: 1px dashed #d3e3f5;">
				<h2>用户信息</h2>
				<g:applyLayout controller="yongHu" action="index" params="[offset:params.offset, max:params.max, yongHuInstanceList:yongHuInstanceList, yongHuInstanceCount:yongHuInstanceCount]" />
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