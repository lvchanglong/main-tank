<%@ page import="main.tank.ChangLiang" %>
<%@ page import="main.tank.YongHu" %>

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>主坦克-用户</title>
	</head>
	<body>

		<div id="yongHu" class="page borderBox">
		
			<section class="decorationWidthPadding end">
				<h2>用户空间</h2>
				<g:applyLayout controller="yongHu" action="index" params="[offset:0, max:5]" />
			</section>
			
		</div>
		
	</body>
</html>