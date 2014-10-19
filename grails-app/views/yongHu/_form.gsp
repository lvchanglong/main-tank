<%@ page import="main.tank.YongHu" %>



<div class="fieldcontain ${hasErrors(bean: yongHuInstance, field: 'zhangHao', 'error')} required">
	<label for="zhangHao">
		<g:message code="yongHu.zhangHao.label" default="Zhang Hao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="zhangHao" required="" value="${yongHuInstance?.zhangHao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: yongHuInstance, field: 'miMa', 'error')} required">
	<label for="miMa">
		<g:message code="yongHu.miMa.label" default="Mi Ma" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="miMa" required="" value="${yongHuInstance?.miMa}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: yongHuInstance, field: 'xingMing', 'error')} ">
	<label for="xingMing">
		<g:message code="yongHu.xingMing.label" default="Xing Ming" />
		
	</label>
	<g:textField name="xingMing" value="${yongHuInstance?.xingMing}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: yongHuInstance, field: 'xingBie', 'error')} ">
	<label for="xingBie">
		<g:message code="yongHu.xingBie.label" default="Xing Bie" />
		
	</label>
	<g:select name="xingBie" from="${yongHuInstance.constraints.xingBie.inList}" value="${yongHuInstance?.xingBie}" valueMessagePrefix="yongHu.xingBie" noSelection="['': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: yongHuInstance, field: 'suoZai', 'error')} ">
	<label for="suoZai">
		<g:message code="yongHu.suoZai.label" default="Suo Zai" />
		
	</label>
	<g:textField name="suoZai" value="${yongHuInstance?.suoZai}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: yongHuInstance, field: 'quanXian', 'error')} ">
	<label for="quanXian">
		<g:message code="yongHu.quanXian.label" default="Quan Xian" />
		
	</label>
	<g:select name="quanXian" from="${yongHuInstance.constraints.quanXian.inList}" value="${yongHuInstance?.quanXian}" valueMessagePrefix="yongHu.quanXian" noSelection="['': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: yongHuInstance, field: 'touXiang', 'error')} ">
	<label for="touXiang">
		<g:message code="yongHu.touXiang.label" default="Tou Xiang" />
		
	</label>
	<g:textField name="touXiang" value="${yongHuInstance?.touXiang}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: yongHuInstance, field: 'shengRi', 'error')} ">
	<label for="shengRi">
		<g:message code="yongHu.shengRi.label" default="Sheng Ri" />
		
	</label>
	<g:textField name="shengRi" value="${yongHuInstance?.shengRi}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: yongHuInstance, field: 'youXiang', 'error')} ">
	<label for="youXiang">
		<g:message code="yongHu.youXiang.label" default="You Xiang" />
		
	</label>
	<g:field type="email" name="youXiang" value="${yongHuInstance?.youXiang}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: yongHuInstance, field: 'shouJi', 'error')} ">
	<label for="shouJi">
		<g:message code="yongHu.shouJi.label" default="Shou Ji" />
		
	</label>
	<g:textField name="shouJi" value="${yongHuInstance?.shouJi}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: yongHuInstance, field: 'jianJie', 'error')} ">
	<label for="jianJie">
		<g:message code="yongHu.jianJie.label" default="Jian Jie" />
		
	</label>
	<g:textField name="jianJie" value="${yongHuInstance?.jianJie}"/>

</div>

