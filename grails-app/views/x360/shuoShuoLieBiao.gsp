<%@ page import="main.tank.ChangLiang" %>
<%@ page import="main.tank.YongHu" %>

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>说说列表</title>
	</head>
	<body>

		<div id="shuoShuo" class="borderBox clearfix defaultPage">
			<h1>说说列表</h1>
			<br/><br/>
			<g:applyLayout controller="shuoShuo" action="index" params="[offset:0, max:10]" />
		</div>
		
	</body>
</html>