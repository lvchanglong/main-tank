<%@ page import="main.tank.ShiJie" %>



<div class="fieldcontain ${hasErrors(bean: shiJieInstance, field: 'biaoTi', 'error')} required">
	<label for="biaoTi">
		<g:message code="shiJie.biaoTi.label" default="Biao Ti" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="biaoTi" required="" value="${shiJieInstance?.biaoTi}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: shiJieInstance, field: 'kouLing', 'error')} required">
	<label for="kouLing">
		<g:message code="shiJie.kouLing.label" default="Kou Ling" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="kouLing" required="" value="${shiJieInstance?.kouLing}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: shiJieInstance, field: 'yongHu', 'error')} ">
	<label for="yongHu">
		<g:message code="shiJie.yongHu.label" default="Yong Hu" />
		
	</label>
	<g:select id="yongHu" name="yongHu.id" from="${main.tank.YongHu.list()}" optionKey="id" value="${shiJieInstance?.yongHu?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: shiJieInstance, field: 'kongJians', 'error')} ">
	<label for="kongJians">
		<g:message code="shiJie.kongJians.label" default="Kong Jians" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${shiJieInstance?.kongJians?}" var="k">
    <li><g:link controller="kongJian" action="show" id="${k.id}">${k?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="kongJian" action="create" params="['shiJie.id': shiJieInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'kongJian.label', default: 'KongJian')])}</g:link>
</li>
</ul>


</div>

