
<%@ page import="main.tank.WenZhang" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<title>主坦克-文章查看</title>
		<style type="text/css">
			#show-wenZhang .biaoTi {
				font-size: 52px;
				margin-bottom: 40px;
				text-align: center;
				font-weight: bold;
				display:block;
			}
			#show-wenZhang .neiRong {
				line-height:24px;
				margin:30px 0 80px 0;
				padding:10px;
				border:1px dotted lightgray;
			}
			#show-wenZhang .fuBiaoTi {
				display:inline-block;
				color:darkblue;
				font-weight:bold;
			}
		</style>
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
		
		<%--
		<g:form url="[resource:wenZhangInstance, action:'delete']" method="DELETE">
			<fieldset class="buttons">
				<g:link class="edit" action="edit" resource="${wenZhangInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
				<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
			</fieldset>
		</g:form>
		--%>
	</body>
</html>
