<%@ page import="main.tank.WenZhang" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<title>主坦克-文章编辑</title>
		<asset:stylesheet src="YinYong/umeditor1_2_2-utf8-jsp/themes/default/css/umeditor.min.css"/>
		<asset:javascript src="YinYong/umeditor1_2_2-utf8-jsp/umeditor.config.js"/>
		<asset:javascript src="YinYong/umeditor1_2_2-utf8-jsp/umeditor.min.js"/>
		<asset:javascript src="YinYong/umeditor1_2_2-utf8-jsp/lang/zh-cn/zh-cn.js"/>
	</head>
	<body>
		<g:form url="[resource:wenZhangInstance, action:'update']" method="PUT">
		
			<g:hiddenField name="version" value="${wenZhangInstance?.version}" />
			
			<div id="edit-wenZhang" class="borderBox defaultPage">
		
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
							<g:textField name="biaoTi" required="" value="${wenZhangInstance?.biaoTi}" placeholder="标题" class="borderBox" style="width:100%;"/>
						</li>
					</g:if>
					
					<li class="fieldcontain ${hasErrors(bean: wenZhangInstance, field: 'guanJianCi', 'error')}">
						<g:textField name="guanJianCi" value="${wenZhangInstance?.guanJianCi}" placeholder="关键词" class="borderBox" style="width:100%;"/>
					</li>
					
					<g:if test="${wenZhangInstance?.neiRong}">
						<li class="fieldcontain ${hasErrors(bean: wenZhangInstance, field: 'neiRong', 'error')} required">
							<%--
							<g:textField id="yonghu-wenzhang-edit-neiRong" name="neiRong" required="" value="${wenZhangInstance?.neiRong}" placeholder="内容" class="borderBox" style="width:100%;height:700px;"/>
							--%>
							<script type="text/plain" id="yonghu-wenzhang-edit-neiRong" name="neiRong" class="borderBox" style="width:100%;height:500px;">${wenZhangInstance?.neiRong}</script>
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
	        var um = UM.getEditor('yonghu-wenzhang-edit-neiRong', {
				imageUrl: "${createLink(controller:'UEditor', action:'uploadImage')}",
				imagePath:"",
				zIndex:30
		    });
		</script>
	</body>
</html>