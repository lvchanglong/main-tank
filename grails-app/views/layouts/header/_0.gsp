<div id="header-0">
	<nav>
		<div class="conWidth h_100p">
			<span id="header-0-timer">
			
			</span>
			<ul>
				<li>
					<a href="javascript:void(0);" onclick="alert('(^ _ ^) 就知道你会上当... 期待下个版本吧');">登录</a>
				</li>
				<li>
					<a href="javascript:void(0);" onclick="alert('(^ _ ^) 就知道你会上当...期待下个版本吧');">注册</a>
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