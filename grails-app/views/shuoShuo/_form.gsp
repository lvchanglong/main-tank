<%@ page import="main.tank.ShuoShuo" %>



<div class="fieldcontain ${hasErrors(bean: shuoShuoInstance, field: 'neiRong', 'error')} required">
	<label for="neiRong">
		<g:message code="shuoShuo.neiRong.label" default="Nei Rong" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="neiRong" required="" value="${shuoShuoInstance?.neiRong}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: shuoShuoInstance, field: 'yongHu', 'error')} required">
	<label for="yongHu">
		<g:message code="shuoShuo.yongHu.label" default="Yong Hu" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="yongHu" name="yongHu.id" from="${main.tank.YongHu.list()}" optionKey="id" required="" value="${shuoShuoInstance?.yongHu?.id}" class="many-to-one"/>

</div>

