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
				<g:render template="/layouts/plugin/huanDengPian" model="[instanceList: slideList, width:'100%', height:'372px']"/>
			</section>
			
			<g:if test="${ zuiXinWenZhang }">
				<section class="decorationWidthPadding">
					<h2>${ zuiXinWenZhang.biaoTi }/<span style="font-size:14px;">${ zuiXinWenZhang.yongHu }</span></h2>
					${ zuiXinWenZhang.neiRong }
				</section>
			</g:if>
			
			<section class="decorationWidthPadding">
				<g:render template="/layouts/plugin/IP" />
			</section>
			
			<section class="decorationWidthPadding end">
				<h2>个人文章</h2>
				<g:applyLayout controller="wenZhang" action="index" params="[offset:0, max:5]" />
			</section>
			
		</div>
		
		<content tag="headerX">
			New Header
		</content>
		
		<content tag="logoX">
			New Logo
		</content>
		
		<content tag="footerX">
			New Footer
		</content>
		
		<content tag="helperX">
			New Helper
		</content>
		
	</body>
</html>