
<%@ page import="main.tank.ShiJie" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'shiJie.label', default: 'ShiJie')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-shiJie" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-shiJie" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list shiJie">
			
				<g:if test="${shiJieInstance?.biaoTi}">
				<li class="fieldcontain">
					<span id="biaoTi-label" class="property-label"><g:message code="shiJie.biaoTi.label" default="Biao Ti" /></span>
					
						<span class="property-value" aria-labelledby="biaoTi-label"><g:fieldValue bean="${shiJieInstance}" field="biaoTi"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${shiJieInstance?.kouLing}">
				<li class="fieldcontain">
					<span id="kouLing-label" class="property-label"><g:message code="shiJie.kouLing.label" default="Kou Ling" /></span>
					
						<span class="property-value" aria-labelledby="kouLing-label"><g:fieldValue bean="${shiJieInstance}" field="kouLing"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${shiJieInstance?.yongHu}">
				<li class="fieldcontain">
					<span id="yongHu-label" class="property-label"><g:message code="shiJie.yongHu.label" default="Yong Hu" /></span>
					
						<span class="property-value" aria-labelledby="yongHu-label"><g:link controller="yongHu" action="show" id="${shiJieInstance?.yongHu?.id}">${shiJieInstance?.yongHu?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${shiJieInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="shiJie.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${shiJieInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${shiJieInstance?.kongJians}">
				<li class="fieldcontain">
					<span id="kongJians-label" class="property-label"><g:message code="shiJie.kongJians.label" default="Kong Jians" /></span>
					
						<g:each in="${shiJieInstance.kongJians}" var="k">
						<span class="property-value" aria-labelledby="kongJians-label"><g:link controller="kongJian" action="show" id="${k.id}">${k?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${shiJieInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="shiJie.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${shiJieInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:shiJieInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${shiJieInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
