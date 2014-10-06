<%@ page import="main.tank.FanKui" %>



<div class="fieldcontain ${hasErrors(bean: fanKuiInstance, field: 'neiRong', 'error')} required">
	<label for="neiRong">
		<g:message code="fanKui.neiRong.label" default="Nei Rong" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="neiRong" required="" value="${fanKuiInstance?.neiRong}"/>

</div>

