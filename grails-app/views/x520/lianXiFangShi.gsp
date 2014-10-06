<%@ page import="main.tank.ChangLiang" %>

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>主坦克-联系方式</title>
	</head>
	<body>
		<div id="lianXiFangShi" class="borderBox clearfix">
		
			<%--
			<g:render template="/layouts/transition/1" />
			--%>
		
			<h1>联系方式</h1>
			
			<ul class="xiangQing">
				<li><strong>姓名</strong>：${ ChangLiang.XING_MING }<span class="separator lightgray">/</span>站长</li>
				<li><strong>邮箱</strong>：${ ChangLiang.YOU_XIANG }<span class="separator lightgray">/</span><strong>QQ</strong>，你懂的</li>
				<li><strong>手机</strong>：${ ChangLiang.SHOU_JI }</li>
				<li><strong>信仰</strong>：用实践更新认识，用认识指导实践</li>
				<li class="zhuangTai"><strong>状态</strong>：<span class="xianZai">已</span></li>
				<li class="touXiang"><asset:image src="WangLuo/TouXiang/ChengYuan/吕常龙.png"/></li>
			</ul>
			
			<ul class="xiangQing">
				<li><strong>姓名</strong>：？？？<span class="separator lightgray">/</span>？？</li>
				<li><strong>邮箱</strong>：?????????@qq.com<span class="separator lightgray">/</span><strong>QQ</strong>，你懂的</li>
				<li><strong>手机</strong>：???????????</li>
				<li><strong>信仰</strong>：这家伙很懒，什么都没留下</li>
				<li class="zhuangTai"><strong>状态</strong>：<span class="xianZai">未</span></li>
				<li class="touXiang"><asset:image src="WangLuo/TouXiang/ChengYuan/谜.png"/></li>
			</ul>
			
			<ul class="xiangQing">
				<li><strong>姓名</strong>：？？？<span class="separator lightgray">/</span>？？</li>
				<li><strong>邮箱</strong>：?????????@qq.com<span class="separator lightgray">/</span><strong>QQ</strong>，你懂的</li>
				<li><strong>手机</strong>：???????????</li>
				<li><strong>信仰</strong>：这家伙很懒，什么都没留下</li>
				<li class="zhuangTai"><strong>状态</strong>：<span class="xianZai">未</span></li>
				<li class="touXiang"><asset:image src="WangLuo/TouXiang/ChengYuan/谜.png"/></li>
			</ul>
			
			<div class="tuZhang">你来了，我们欢迎你。你走了，也到过这里</div>
			
		</div>
	</body>
</html>