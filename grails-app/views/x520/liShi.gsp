<%@ page import="main.tank.ChangLiang" %>
<%@ page import="main.tank.YongHu" %>

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>主坦克-历史</title>
	</head>
	<body>

		<div id="liShi" class="page borderBox">
			
			<section class="decoration">
				<g:render template="/layouts/transition/shiZhong" />
			</section>
			
			<section class="decorationWidthPadding">
				<h2>更新日志</h2>
				<g:applyLayout controller="gengXin" action="index" params="[offset:0, max:5]" />
			</section>
			
		</div>
		
	</body>
</html>