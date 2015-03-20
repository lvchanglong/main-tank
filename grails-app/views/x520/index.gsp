<%@ page import="main.tank.ChangLiang" %>
<%@ page import="main.tank.YongHu" %>

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>主坦克</title>
	</head>
	<body>

		<div id="zhuYe" class="page borderBox">
			
			<section class="decoration">
				<g:render template="/layouts/plugin/huanDengPian" model="[instanceList: slideList, width:'960px', height:'372px']"/>
			</section>
			
			<g:if test="${ zuiXinWenZhang }">
				<section class="decorationWidthPadding">
				<h2>最新文章</h2>
					${ zuiXinWenZhang.neiRong }
				</section>
			</g:if>
			
			<section class="decorationWidthPadding">
				<g:render template="/layouts/transition/IP" />
			</section>
			
			<section class="decorationWidthPadding end">
				<h2>个人文章</h2>
				<g:applyLayout controller="wenZhang" action="index" params="[offset:0, max:5]" />
			</section>
			
		</div>
		
		<content tag="header">
			Default Header
		</content>
		
		<content tag="footer">
			Default Footer
		</content>
		
		<content tag="logo">
			Default Logo
		</content>
		
		<content tag="helper">
			Default Helper
		</content>
		
	</body>
</html>