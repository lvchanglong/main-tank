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

		<div id="fuWu" class="borderBox clearfix defaultPage">

			<h1>服务列表</h1>

			<h2>ＩＰ查询</h2>
			<g:render template="/layouts/plugin/yongHuIP" />
			
			<hr/>
			
			<h2>生肖查询</h2>
			<g:render template="/layouts/plugin/shengXiao"/>
			
			<hr/>
			
			<h2>当前时间</h2>
			<g:render template="/layouts/plugin/shiZhong"/>
			
			<hr/>
			
			<h2>腾云驾雾</h2>
			<div style="position:relative;width:100%;height:200px;">
				<asset:image src="WangLuo/SuCai/腾云驾雾.png" class="leftToRight" width="239px" height="180px" alt="腾云驾雾"/>
			</div>
			
			<hr/>
			
			<h2>图片压缩</h2>
			<g:render template="/layouts/plugin/tuPianYaSuo" />
			
		</div>
		
	</body>
</html>