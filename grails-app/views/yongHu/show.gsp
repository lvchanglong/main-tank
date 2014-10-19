
<%@ page import="main.tank.YongHu" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'yongHu.label', default: 'YongHu')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-yongHu" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-yongHu" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list yongHu">
			
				<g:if test="${yongHuInstance?.zhangHao}">
				<li class="fieldcontain">
					<span id="zhangHao-label" class="property-label"><g:message code="yongHu.zhangHao.label" default="Zhang Hao" /></span>
					
						<span class="property-value" aria-labelledby="zhangHao-label"><g:fieldValue bean="${yongHuInstance}" field="zhangHao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${yongHuInstance?.miMa}">
				<li class="fieldcontain">
					<span id="miMa-label" class="property-label"><g:message code="yongHu.miMa.label" default="Mi Ma" /></span>
					
						<span class="property-value" aria-labelledby="miMa-label"><g:fieldValue bean="${yongHuInstance}" field="miMa"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${yongHuInstance?.xingMing}">
				<li class="fieldcontain">
					<span id="xingMing-label" class="property-label"><g:message code="yongHu.xingMing.label" default="Xing Ming" /></span>
					
						<span class="property-value" aria-labelledby="xingMing-label"><g:fieldValue bean="${yongHuInstance}" field="xingMing"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${yongHuInstance?.xingBie}">
				<li class="fieldcontain">
					<span id="xingBie-label" class="property-label"><g:message code="yongHu.xingBie.label" default="Xing Bie" /></span>
					
						<span class="property-value" aria-labelledby="xingBie-label"><g:fieldValue bean="${yongHuInstance}" field="xingBie"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${yongHuInstance?.suoZai}">
				<li class="fieldcontain">
					<span id="suoZai-label" class="property-label"><g:message code="yongHu.suoZai.label" default="Suo Zai" /></span>
					
						<span class="property-value" aria-labelledby="suoZai-label"><g:fieldValue bean="${yongHuInstance}" field="suoZai"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${yongHuInstance?.quanXian}">
				<li class="fieldcontain">
					<span id="quanXian-label" class="property-label"><g:message code="yongHu.quanXian.label" default="Quan Xian" /></span>
					
						<span class="property-value" aria-labelledby="quanXian-label"><g:fieldValue bean="${yongHuInstance}" field="quanXian"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${yongHuInstance?.touXiang}">
				<li class="fieldcontain">
					<span id="touXiang-label" class="property-label"><g:message code="yongHu.touXiang.label" default="Tou Xiang" /></span>
					
						<span class="property-value" aria-labelledby="touXiang-label"><g:fieldValue bean="${yongHuInstance}" field="touXiang"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${yongHuInstance?.shengRi}">
				<li class="fieldcontain">
					<span id="shengRi-label" class="property-label"><g:message code="yongHu.shengRi.label" default="Sheng Ri" /></span>
					
						<span class="property-value" aria-labelledby="shengRi-label"><g:fieldValue bean="${yongHuInstance}" field="shengRi"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${yongHuInstance?.youXiang}">
				<li class="fieldcontain">
					<span id="youXiang-label" class="property-label"><g:message code="yongHu.youXiang.label" default="You Xiang" /></span>
					
						<span class="property-value" aria-labelledby="youXiang-label"><g:fieldValue bean="${yongHuInstance}" field="youXiang"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${yongHuInstance?.shouJi}">
				<li class="fieldcontain">
					<span id="shouJi-label" class="property-label"><g:message code="yongHu.shouJi.label" default="Shou Ji" /></span>
					
						<span class="property-value" aria-labelledby="shouJi-label"><g:fieldValue bean="${yongHuInstance}" field="shouJi"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${yongHuInstance?.jianJie}">
				<li class="fieldcontain">
					<span id="jianJie-label" class="property-label"><g:message code="yongHu.jianJie.label" default="Jian Jie" /></span>
					
						<span class="property-value" aria-labelledby="jianJie-label"><g:fieldValue bean="${yongHuInstance}" field="jianJie"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${yongHuInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="yongHu.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${yongHuInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${yongHuInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="yongHu.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${yongHuInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:yongHuInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${yongHuInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
