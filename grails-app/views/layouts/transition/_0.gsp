<%@ page import="main.tank.ChangLiang" %>

<div id="transition-0">
	<ul>
		<li>
			您可能想知道：
		</li>
		<li>
			IP:${ request.getRemoteAddr() }
		</li>
		<li id="li-ip138">
			<script type="text/javascript">
				<g:remoteFunction controller="x520" action="test" params="[ip:request.getRemoteAddr()]" update="li-ip138"/>
			</script>
		</li>
	</ul>

	<asset:image src="WangLuo/3D/美女B.png" class="meinv"/>
</div>