
<%@ page import="main.tank.YongHu" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'yongHu.label', default: 'YongHu')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-yongHu" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-yongHu" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="zhangHao" title="${message(code: 'yongHu.zhangHao.label', default: 'Zhang Hao')}" />
					
						<g:sortableColumn property="miMa" title="${message(code: 'yongHu.miMa.label', default: 'Mi Ma')}" />
					
						<g:sortableColumn property="xingMing" title="${message(code: 'yongHu.xingMing.label', default: 'Xing Ming')}" />
					
						<g:sortableColumn property="xingBie" title="${message(code: 'yongHu.xingBie.label', default: 'Xing Bie')}" />
					
						<g:sortableColumn property="suoZai" title="${message(code: 'yongHu.suoZai.label', default: 'Suo Zai')}" />
					
						<g:sortableColumn property="quanXian" title="${message(code: 'yongHu.quanXian.label', default: 'Quan Xian')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${yongHuInstanceList}" status="i" var="yongHuInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${yongHuInstance.id}">${fieldValue(bean: yongHuInstance, field: "zhangHao")}</g:link></td>
					
						<td>${fieldValue(bean: yongHuInstance, field: "miMa")}</td>
					
						<td>${fieldValue(bean: yongHuInstance, field: "xingMing")}</td>
					
						<td>${fieldValue(bean: yongHuInstance, field: "xingBie")}</td>
					
						<td>${fieldValue(bean: yongHuInstance, field: "suoZai")}</td>
					
						<td>${fieldValue(bean: yongHuInstance, field: "quanXian")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${yongHuInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
