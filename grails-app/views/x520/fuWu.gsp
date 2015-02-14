<%@ page import="main.tank.ChangLiang" %>
<%@ page import="main.tank.YongHu" %>

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>主坦克-服务</title>
	</head>
	<body>

		<div id="fuWu" class="page borderBox">
		
			<section class="decorationWidthPadding">
				<h2>生肖查询</h2>
				<g:render template="/layouts/transition/shengXiao" />
			</section>
			
			<section class="decorationWidthPadding">
				<h2>图片压缩</h2>
				<g:render template="/layouts/plugin/tuPianYaSuo" />
			</section>
			
		</div>
		
	</body>
</html>