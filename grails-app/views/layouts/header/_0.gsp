<%@ page import="main.tank.YongHu" %>

<g:set var="dangQianYongHu" value="${ YongHu.get(session.uid) }" />

<div id="header-0">
	<nav>
		<div class="conWidth h_100p">
			<span id="header-0-timer">
			
			</span>
			<ul class="borderBox clearfix">
				<li id="dengLu-wrapper" class="wrapperBox">
					<g:if test="${ dangQianYongHu }">
						<span class="link">${ dangQianYongHu.zhangHao }</span>
						
						<div class="hiddenBox borderBox" style="display:none;">
							已登录
						</div>
					</g:if>
					<g:else>
						<span class="link">登录</span>
					
						<div id="dengLu-hidden" class="hiddenBox borderBox" style="display:none;">
							<g:formRemote name="dengLuBiaoDan" url="[controller:'x520', action:'dengLu']" onSuccess="dengLuChengGong(data,textStatus)" onFailure="failure(XMLHttpRequest,textStatus,errorThrown,'#login-message')">
								<div >
									(￣﹃￣ )<span class="separator">/</span><span id="login-message">请输入账号、密码</span>
								</div>
								<g:textField name="zhangHao" value="" placeholder="账号"/>
								<g:textField name="miMa" value="" placeholder="密码"/>
								<g:submitButton name="dengLu" value="登录"/>
							</g:formRemote>
						</div>
					</g:else>
				</li>
				<li id="zhuCe-wrapper" class="wrapperBox">
					<g:if test="${ dangQianYongHu }">
						<span class="link">${ dangQianYongHu.xingMing }</span>
						
						<div class="hiddenBox borderBox" style="display:none;">
							未开放
						</div>
					</g:if>
					<g:else>
						<span class="link">注册</span>
					
						<div id="zhuCe-hidden" class="hiddenBox borderBox" style="display:none;">
							未开放
						</div>
					</g:else>
				</li>
				<g:if test="${ dangQianYongHu }">
					<li>
						<g:remoteLink controller="x520" action="zhuXiao" onSuccess="window.location.reload()">注销</g:remoteLink>
					</li>
				</g:if>
				<li>
					<g:link uri="/kongjian/lvchanglong">测试</g:link>
				</li>
				<li>
					<g:link uri="/">首页</g:link>
				</li>
				<li>
					<a href="javascript:void(0);" onclick="shouCang(window.location,document.title);">收藏</a>
				</li>
			</ul>
		</div>
	</nav>
</div>

<script type="text/javascript">
	var source = new EventSource("${ createLink(controller:"tuiSong", action:"dangQianShiJian") }");
	source.onmessage = function(event) {
		jQuery("#header-0-timer").html(event.data);//更新时间
	};

	responseToHover("#dengLu-wrapper", "#dengLu-wrapper .hiddenBox");//浮动响应
	responseToHover("#zhuCe-wrapper", "#zhuCe-wrapper .hiddenBox");

	//登录成功
	function dengLuChengGong(data,textStatus) {
		console.log(textStatus)
		switch(textStatus) {
			case "success":
				jQuery("#login-message").html("登录成功");
				window.location.reload();
				break;
		}
	}
</script>