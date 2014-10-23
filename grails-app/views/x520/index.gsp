<%@ page import="main.tank.ChangLiang" %>

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>主坦克</title>
		
	</head>
	<body>

		<div id="zhuYe" class="borderBox">
			
			<section class="decoration">
				<g:render template="/layouts/plugin/huanDengXiaZhui" model="[fileNameList: daTuList, width:'960px', height:'372px']"/>
			</section>
			
			<section class="decoration">
				<g:render template="/layouts/transition/${ ChangLiang.TRANSITION_INDEX }" />
			</section>
			  
			<section class="decorationWidthPadding">
				<h2>更新日志</h2>
				<g:applyLayout controller="gengXin" action="index" params="[offset:params.offset, max:params.max, gengXinInstanceList:gengXinInstanceList,gengXinInstanceCount:gengXinInstanceCount]" />
			</section>
			
			<section class="decorationWidthPadding">
				<h2>用户信息</h2>
				<g:applyLayout controller="yongHu" action="index" params="[offset:params.offset, max:params.max, yongHuInstanceList:yongHuInstanceList, yongHuInstanceCount:yongHuInstanceCount]" />
			</section>
			
			<%--
			<div style="position:relative;margin-bottom:30px;border-bottom: 1px dashed #d3e3f5;">
				<g:render template="/layouts/plugin/liuShuiGunDong" model="[fileNameList: xiaoTuList]"/>
			</div>
			--%>
			
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