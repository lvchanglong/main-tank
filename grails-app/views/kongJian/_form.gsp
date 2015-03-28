<%@ page import="main.tank.KongJian" %>



<div class="fieldcontain ${hasErrors(bean: kongJianInstance, field: 'neiRong', 'error')} required">
	<label for="neiRong">
		<g:message code="kongJian.neiRong.label" default="Nei Rong" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="neiRong" required="" value="${kongJianInstance?.neiRong}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: kongJianInstance, field: 'shiJie', 'error')} required">
	<label for="shiJie">
		<g:message code="kongJian.shiJie.label" default="Shi Jie" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="shiJie" name="shiJie.id" from="${main.tank.ShiJie.list()}" optionKey="id" required="" value="${kongJianInstance?.shiJie?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: kongJianInstance, field: 'yongHu', 'error')} ">
	<label for="yongHu">
		<g:message code="kongJian.yongHu.label" default="Yong Hu" />
		
	</label>
	<g:select id="yongHu" name="yongHu.id" from="${main.tank.YongHu.list()}" optionKey="id" value="${kongJianInstance?.yongHu?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

