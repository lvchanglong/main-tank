<%@ page import="main.tank.ChangLiang" %>
<%@ page import="main.tank.YongHu" %>

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>用户列表</title>
	</head>
	<body>

		<div id="yongHu" class="clearfix defaultPage">
			<h1>用户列表</h1>
			<br/><br/>
			<g:applyLayout controller="yongHu" action="index" params="[offset:0, max:5]" />
		</div>
		
	</body>
</html>