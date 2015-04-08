<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>用户反馈</title>
	</head>
	<body>
		<div id="fanKuiLieBiao" class="clearfix defaultPage">
			<h1>用户反馈</h1>
			<g:render template="/layouts/plugin/faBuFanKui" />
			
			<hr/>
			
			<g:applyLayout controller="fanKui" action="index" params="[offset:0, max:10]" />		
		</div>
	</body>
</html>