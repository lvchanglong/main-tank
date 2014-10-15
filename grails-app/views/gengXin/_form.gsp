<%@ page import="main.tank.GengXin" %>



<div class="fieldcontain ${hasErrors(bean: gengXinInstance, field: 'neiRong', 'error')} required">
	<label for="neiRong">
		<g:message code="gengXin.neiRong.label" default="Nei Rong" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="neiRong" required="" value="${gengXinInstance?.neiRong}"/>

</div>

