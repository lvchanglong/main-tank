<%@ page import="main.tank.ChangLiang" %>
<%@ page import="main.tank.YongHu" %>

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>服务列表</title>
		<asset:stylesheet src="keyFrames.css"/>
	</head>
	<body>

		<div id="fuWu" class="page borderBox">
			
			<section class="decorationWidthPadding">
				<ul>
					<li style="width:100%;height:200px;">
						<asset:image src="WangLuo/SuCai/腾云驾雾.png" class="leftToRight" width="239px" height="180px" alt="腾云驾雾"/>
					</li>
					<li>
						<g:render template="/layouts/plugin/yongHuIP" />
					</li>
					<li>
						<g:render template="/layouts/plugin/shengXiao"/>
					</li>
				</ul>
			</section>
			
			<section class="decorationWidthPadding end">
				<h2>图片压缩</h2>
				<g:render template="/layouts/plugin/tuPianYaSuo" />
			</section>
			
		</div>
		
	</body>
</html>