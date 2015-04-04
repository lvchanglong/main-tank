<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>反馈列表</title>
	</head>
	<body>
		<div id="fanKuiLieBiao" class="borderBox clearfix defaultPage">
			<h1>反馈列表</h1>
			<g:render template="/layouts/plugin/faBuFanKui" />
			
			<hr/>
			
			<g:applyLayout controller="fanKui" action="index" params="[offset:0, max:10]" />		
		</div>
	</body>
</html>