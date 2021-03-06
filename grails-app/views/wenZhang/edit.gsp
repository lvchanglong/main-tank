<%@ page import="main.tank.WenZhang" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<title>主坦克-文章编辑</title>
		<script src="${ resource(dir:"ueditor", file:"ueditor.config.js") }"></script>
		<script src="${ resource(dir:"ueditor", file:"ueditor.all.min.js") }"></script>
	</head>
	<body>
		<g:form url="[resource:wenZhangInstance, action:'update']" method="PUT">
		
			<g:hiddenField name="version" value="${wenZhangInstance?.version}" />
			
			<div id="edit-wenZhang" class="clearfix defaultPage">
		
				<g:if test="${flash.message}">
					<div class="message" role="status">${flash.message}</div>
				</g:if>
				
				<g:hasErrors bean="${wenZhangInstance}">
					<ul class="errors" role="alert">
						<g:eachError bean="${wenZhangInstance}" var="error">
						<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
						</g:eachError>
					</ul>
				</g:hasErrors>
				
				<ol class="property-list wenZhang">
					
					<g:if test="${wenZhangInstance?.biaoTi}">
						<li class="fieldcontain ${hasErrors(bean: wenZhangInstance, field: 'biaoTi', 'error')} required">
							<g:textField name="biaoTi" required="" value="${wenZhangInstance?.biaoTi}" placeholder="标题" style="width:100%;"/>
						</li>
					</g:if>
					
					<li class="fieldcontain ${hasErrors(bean: wenZhangInstance, field: 'guanJianCi', 'error')}">
						<g:textField name="guanJianCi" value="${wenZhangInstance?.guanJianCi}" placeholder="关键词" style="width:100%;"/>
					</li>
					
					<g:if test="${wenZhangInstance?.neiRong}">
						<li class="fieldcontain ${hasErrors(bean: wenZhangInstance, field: 'neiRong', 'error')} required">
							<%--
							<g:textField id="yonghu-wenzhang-edit-neiRong" name="neiRong" required="" value="${wenZhangInstance?.neiRong}" placeholder="内容" style="width:100%;height:700px;"/>
							--%>
							<script type="text/plain" id="yonghu-wenzhang-edit-neiRong" name="neiRong">${wenZhangInstance?.neiRong}</script>
						</li>
					</g:if>
				
				</ol>
				
			</div>
		
			<g:if test="${ session.uid && session.uid == wenZhangInstance.yongHu.id }">
				<div style="position:relative;margin-top:23px;">
					<fieldset class="buttons">
						<g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
					</fieldset>
				</div>
			</g:if>
			
		</g:form>
		
		<script type="text/javascript">
	        UE.getEditor('yonghu-wenzhang-edit-neiRong');
		</script>
	</body>
</html>