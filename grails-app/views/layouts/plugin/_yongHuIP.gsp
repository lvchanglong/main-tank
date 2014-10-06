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
		<li id="ip138">
			<script type="text/javascript">
				<g:remoteFunction controller="x520" action="ipXiangQing" params="[ip:request.getRemoteAddr()]" update="ip138"/>
			</script>
		</li>
	</ul>
</div>