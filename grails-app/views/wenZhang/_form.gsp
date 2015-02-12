<%@ page import="main.tank.WenZhang" %>



<div class="fieldcontain ${hasErrors(bean: wenZhangInstance, field: 'biaoTi', 'error')} required">
	<label for="biaoTi">
		<g:message code="wenZhang.biaoTi.label" default="Biao Ti" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="biaoTi" required="" value="${wenZhangInstance?.biaoTi}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: wenZhangInstance, field: 'neiRong', 'error')} required">
	<label for="neiRong">
		<g:message code="wenZhang.neiRong.label" default="Nei Rong" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="neiRong" required="" value="${wenZhangInstance?.neiRong}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: wenZhangInstance, field: 'yongHu', 'error')} required">
	<label for="yongHu">
		<g:message code="wenZhang.yongHu.label" default="Yong Hu" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="yongHu" name="yongHu.id" from="${main.tank.YongHu.list()}" optionKey="id" required="" value="${wenZhangInstance?.yongHu?.id}" class="many-to-one"/>

</div>

