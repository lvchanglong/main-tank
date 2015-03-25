<%@ page import="main.tank.ChangLiang" %>
<%@ page import="main.tank.YongHu" %>

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>说说</title>
	</head>
	<body>

		<div id="shuoShuo" class="page borderBox">
		
			<section class="decorationWidthPadding end">
				<h2>说说信息</h2>
				<g:applyLayout controller="shuoShuo" action="index" params="[offset:0, max:5]" />
			</section>
			
		</div>
		
	</body>
</html>