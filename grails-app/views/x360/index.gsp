<%@ page import="main.tank.ChangLiang" %>
<%@ page import="main.tank.YongHu" %>

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>主坦克</title>
	</head>
	<body>

		<div id="zhuYe" class="borderBox clearfix defaultPage">
			
			<g:render template="/layouts/plugin/sliderEvolution" model="[instanceList: slideList, width:'100%', height:'372px']"/>
			
			<g:render template="/layouts/plugin/faBuFanKui" />
			
			<hr />
			
			<g:if test="${ zuiXinWenZhang }">
				<h1>最新文章</h1>
				<h2>${ zuiXinWenZhang.biaoTi }/${ zuiXinWenZhang.yongHu }</h2>
				${ zuiXinWenZhang.neiRong }
				<hr/>
			</g:if>
			
			<h1>个人文章</h1>
			<g:applyLayout controller="wenZhang" action="index" params="[offset:0, max:10]" />		
			
			<hr/>
			
			<h1>我的世界</h1>
			<g:applyLayout controller="shiJie" action="index" params="[offset:0, max:10]" />
			
		</div>
		
		<content tag="headerX">
			New Header
		</content>
		
		<content tag="footerX">
			New Footer
		</content>

	</body>
</html>