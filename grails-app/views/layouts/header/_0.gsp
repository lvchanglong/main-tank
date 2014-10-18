<%@ page import="main.tank.YongHu" %>

<g:set var="dangQianYongHu" value="${ YongHu.get(session.uid) }" />

<div id="header-0">
	<nav>
		<div class="conWidth h_100p">
			
			<ul class="borderBox clearfix">
				
				<g:if test="${ dangQianYongHu }">
					<li class="wrapperBox">
						<span class="link">${ dangQianYongHu.zhangHao }</span>
						<div class="hiddenBox borderBox" style="display:none;">
							<g:formRemote name="miMaXiuGai" url="[controller:'x520', action:'miMaXiuGai', id:dangQianYongHu.id]" onSuccess="success(data,textStatus,'.message-content')" onFailure="failure(XMLHttpRequest,textStatus,errorThrown,'.message-content')">
								<div class="xmessage borderBox">
									(￣﹃￣ )<span class="separator">/</span><span class="message-content">请输入原密码、新密码</span>
								</div>
								<g:passwordField name="yuanMiMa" value="" placeholder="原密码"/>
								<g:passwordField name="xinMiMa" value="" placeholder="新密码"/>
								<g:submitButton name="xiuGai" value="修改"/>
							</g:formRemote>
						</div>
					</li>
					<li class="wrapperBox">
						<span class="link">${ dangQianYongHu.xingMing }</span>
						<div class="hiddenBox borderBox" style="display:none;">
							开发中
						</div>
					</li>
					<li>
						<g:remoteLink controller="x520" action="yongHuZhuXiao" onSuccess="window.location.reload()">注销</g:remoteLink>
					</li>
				</g:if>
				<g:else>
					<li class="wrapperBox">
						<span class="link">登录</span>
						<div class="hiddenBox borderBox" style="display:none;">
							<g:formRemote name="yongHuDengLu" url="[controller:'x520', action:'yongHuDengLu']" onSuccess="chengGong(data,textStatus)" onFailure="failure(XMLHttpRequest,textStatus,errorThrown,'.message-content')">
								<div class="xmessage borderBox">
									(￣﹃￣ )<span class="separator">/</span><span class="message-content">请输入账号、密码</span>
								</div>
								<g:textField name="zhangHao" value="" placeholder="账号"/>
								<g:passwordField name="miMa" value="" placeholder="密码"/>
								<g:submitButton name="dengLu" value="登录"/>
							</g:formRemote>
						</div>
					</li>
					<li class="wrapperBox">
						<span class="link">注册</span>
						<div class="hiddenBox borderBox" style="display:none;">
							未开放
						</div>
					</li>
				</g:else>
				
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
			
			<span id="header-0-timer">
			
			</span>
		</div>
	</nav>
</div>

<script type="text/javascript">
	var source = new EventSource("${ createLink(controller:"tuiSong", action:"dangQianShiJian") }");
	source.onmessage = function(event) {
		jQuery("#header-0-timer").html(event.data);//更新时间
	};

	responseToHover(".wrapperBox", ".hiddenBox");//浮动响应
	
	function chengGong(data,textStatus) {//成功处理
		switch(textStatus) {
			case "success":
				jQuery(".message-content").html("操作成功，初始化...");
				window.location.reload();
				break;
		}
	}
</script>