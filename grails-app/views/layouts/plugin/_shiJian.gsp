<div id="shiJian">
	<span id="shiJian-timer">
	
	</span>
</div>

<script type="text/javascript">
	var source = new EventSource("${ createLink(controller:"tuiSong", action:"dangQianShiJian") }");
	source.onmessage = function(event) {
		jQuery("#shiJian-timer").html(event.data);//更新时间
	};
</script>