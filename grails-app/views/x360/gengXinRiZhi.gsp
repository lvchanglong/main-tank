<%@ page import="main.tank.ChangLiang" %>
<%@ page import="main.tank.YongHu" %>

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>更新日志</title>
	</head>
	<body>

		<div id="liShi" class="page borderBox">
			
			<section class="decoration">
				<div id="transition-shiZhong">
					<div style="width:415px;margin-left:auto;padding-right:30px;">
						<g:render template="/layouts/plugin/shiZhong"/>
					</div>
						
					<asset:image src="WangLuo/3D/雄鹰C.png" class="xiongYing" help="一只来自火星的鹰" alt="雄鹰"/>
				</div>
			</section>
			
			<section class="decorationWidthPadding end">
				<h2>更新日志</h2>
				<g:applyLayout controller="gengXin" action="index" params="[offset:0, max:10]" />
			</section>
			
		</div>
		
	</body>
</html>