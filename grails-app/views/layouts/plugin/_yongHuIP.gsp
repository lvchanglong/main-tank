<div id="yongHuIP">
	<ul>
		<%--
		<li>
			 您可能想知道：
		</li>
		--%>
		<li>
			公网IP：${ request.getRemoteAddr() }
		</li>
		<li id="yongHuIP-ip138">
			<script type="text/javascript">
				<g:remoteFunction controller="x520" action="ipXiangQing" params="[ip:request.getRemoteAddr()]" update="yongHuIP-ip138"/>
			</script>
		</li>
	</ul>
</div>