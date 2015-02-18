<%--大型LOGO--%>

<%@ page import="main.tank.ChangLiang" %>

<div id="logo-2">
	
	<g:link uri="/">
		<asset:image src="WangLuo/Logo/小图标.png" class="tank" alt="主坦克"/>
	</g:link>
	
	<ul class="borderBox">
		<li>
			<div style="position:relative;">
				<h1>
					<g:link uri="/">
						${ ChangLiang.WANG_ZHAN_MING_CHENG }
					</g:link>
				</h1>
				<h4>${ ChangLiang.WANG_ZHAN_KOU_HAO }</h4>
			</div>
		</li>
		<li>
			<h3>${ ChangLiang.WANG_ZHAN_GUAN_JIAN_CI }</h3>
		</li>
	</ul>
	
</div>