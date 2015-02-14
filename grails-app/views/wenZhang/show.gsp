
<%@ page import="main.tank.WenZhang" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<title>主坦克-文章查看</title>
	</head>
	<body>
		<div id="show-wenZhang" class="borderBox defaultPage">
			<ol class="property-list wenZhang">
				
				<g:if test="${wenZhangInstance?.biaoTi}">
				<li class="fieldcontain">
					<span class="biaoTi"><g:fieldValue bean="${wenZhangInstance}" field="biaoTi"/></span>
				</li>
				</g:if>
				
				<g:if test="${wenZhangInstance?.yongHu}">
				<li class="fieldcontain">
					<span class="fuBiaoTi" style="min-width:130px;">
						作者：${wenZhangInstance?.yongHu?.encodeAsHTML()}
					</span>
					<g:if test="${wenZhangInstance?.dateCreated}">
						<span class="fuBiaoTi" style="min-width:230px;">
							创建时间：<g:formatDate date="${wenZhangInstance?.dateCreated}" format="yyyy-MM-dd HH:mm"/>
						</span>
						<span class="fuBiaoTi" style="min-width:130px;">
							更新时间：<g:formatDate date="${wenZhangInstance?.lastUpdated}" format="yyyy-MM-dd HH:mm"/>
						</span>
					</g:if>
				</li>
				</g:if>
				
				<g:if test="${wenZhangInstance?.neiRong}">
				<li class="fieldcontain neiRong">
					<div style="overflow:auto;">
						${wenZhangInstance.neiRong}
					</div>
				</li>
				</g:if>
			
			</ol>
			
		</div>
		
		<g:if test="${ session.uid && session.uid == wenZhangInstance.yongHu.id }">
			<div style="position:relative;margin-top:23px;">
				<g:formRemote name="wenzhang-delete" url="[controller:'wenZhangRestful', action:'delete', id:wenZhangInstance.id]" method="DELETE" onSuccess="success(data,textStatus,'#yonghu-wenzhang-caozuo-message')" onFailure="failure(XMLHttpRequest,textStatus,errorThrown,'#yonghu-wenzhang-caozuo-message')" >
					<fieldset class="buttons">
						<g:link class="edit" action="edit" resource="${wenZhangInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
						<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
					</fieldset>
				</g:formRemote>
				
				<div style="position:absolute;right:0;bottom:0;line-height:30px;padding:0 1em;">	
					(￣﹃￣ )：<span id="yonghu-wenzhang-caozuo-message">操作状态</span>
				</div>
			</div>
		</g:if>
		
	</body>
</html>
