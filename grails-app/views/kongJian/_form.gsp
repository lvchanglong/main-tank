<%@ page import="main.tank.KongJian" %>



<div class="fieldcontain ${hasErrors(bean: kongJianInstance, field: 'kouLing', 'error')} required">
	<label for="kouLing">
		<g:message code="kongJian.kouLing.label" default="Kou Ling" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="kouLing" required="" value="${kongJianInstance?.kouLing}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: kongJianInstance, field: 'neiRong', 'error')} required">
	<label for="neiRong">
		<g:message code="kongJian.neiRong.label" default="Nei Rong" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="neiRong" required="" value="${kongJianInstance?.neiRong}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: kongJianInstance, field: 'yongHu', 'error')} ">
	<label for="yongHu">
		<g:message code="kongJian.yongHu.label" default="Yong Hu" />
		
	</label>
	<g:select id="yongHu" name="yongHu.id" from="${main.tank.YongHu.list()}" optionKey="id" value="${kongJianInstance?.yongHu?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

