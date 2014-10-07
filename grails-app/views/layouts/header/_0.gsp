<div id="header-0">
	<nav>
		<div class="conWidth h_100p">
			<span id="header-0-timer">
			
			</span>
			<ul>
				<li>
					<g:link uri="/" style="font-weight:bold;">首页</g:link>
				</li>
				<li>
					<g:link uri="/kongjian/lvchanglong" style="font-weight:bold;">站长</g:link>
				</li>
				<li>
					<g:link uri="/kongjian/test" style="font-weight:bold;">测试</g:link>
				</li>
				<li>
					<a href="javascript:void(0);" onclick="shouCang(window.location,document.title);" style="font-weight:bold;">收藏</a>
				</li>
				<li>
					<a href="javascript:void(0);" onclick="alert('由于一些原因，暂时不开放，但底部的反馈功能已经开启，期待您的吐槽');">登录</a>
				</li>
				<li>
					<a href="javascript:void(0);" onclick="alert('由于一些原因，暂时不开放，但底部的反馈功能已经开启，期待您的吐槽');">注册</a>
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
</script>