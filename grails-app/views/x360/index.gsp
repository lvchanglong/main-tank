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
					<h2>${ zuiXinWenZhang.biaoTi }/<span class="small">${ zuiXinWenZhang.yongHu }</span></h2>
					${ zuiXinWenZhang.neiRong }
				</section>
			</g:if>
			
			<section class="decorationWidthPadding">
				<h2>个人文章</h2>
				<g:applyLayout controller="wenZhang" action="index" params="[offset:0, max:10]" />
			</section>
			
			<section class="decorationWidthPadding">
				<g:render template="/layouts/plugin/IP" />
			</section>
			
			<section class="decorationWidthPadding">
				<h2>我的世界</h2>
				<g:applyLayout controller="shiJie" action="index" params="[offset:0, max:10]" />
			</section>
			
			<section class="decorationWidthPadding end">
				<script type="text/javascript">document.write(unescape('%3Cdiv id="bdcs"%3E%3C/div%3E%3Cscript charset="utf-8" src="http://znsv.baidu.com/customer_search/api/js?sid=18053579584178193383') + '&plate_url=' + (encodeURIComponent(window.location.href)) + '&t=' + (Math.ceil(new Date()/3600000)) + unescape('"%3E%3C/script%3E'));</script>
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