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
				<div id="transition-shengXiao">
					<div class="wrapper">
						<div style="position:absolute;left:0;top:0;width:450px;">
							<asset:image src="WangLuo/SuCai/腾云驾雾.png" class="leftToRight" width="239px" height="180px" alt="腾云驾雾"/>
						</div>
						<div style="width:210px;margin-left:auto;">
							<g:render template="/layouts/plugin/shengXiao"/>
						</div>
					</div>
				</div>
			</section>
			
			<section class="decorationWidthPadding end">
				<h2>图片压缩</h2>
				<g:render template="/layouts/plugin/tuPianYaSuo" />
			</section>
			
		</div>
		
	</body>
</html>