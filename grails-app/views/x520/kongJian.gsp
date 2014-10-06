<%@ page import="main.tank.ChangLiang" %>

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>主坦克-空间</title>
	</head>
	<body>
		<div id="kongJian" class="borderBox defaultPage">
		
			<g:render template="/layouts/transition/${ ChangLiang.TRANSITION_INDEX }" />
			
			<g:render template="/layouts/other/yonghu/info" model="[yonghu:yonghu]" />
		
		</div>
	</body>
</html>