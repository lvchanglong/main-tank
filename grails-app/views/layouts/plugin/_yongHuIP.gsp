<div id="yongHuIP">
	<ul class="borderBox">
		<li>
			您的ＩＰ：${ request.getRemoteAddr() }
		</li>
		<li id="yongHuIP-ip138">
			<script type="text/javascript">
				<g:remoteFunction controller="x520" action="ipXiangQing" params="[ip:request.getRemoteAddr()]" update="yongHuIP-ip138"/>
			</script>
		</li>
	</ul>
</div>