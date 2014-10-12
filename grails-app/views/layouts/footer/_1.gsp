<%@ page import="main.tank.RiQi" %>
<%@ page import="main.tank.ChangLiang" %>

<div id="footer-1" class="borderBox">
	<nav>
		<ul class="clearfix">
			<li style="width:100%;text-align:center;">©&nbsp;${ new RiQi().getNian() }&nbsp;${ ChangLiang.WANG_ZHAN_ZUO_ZHE }&nbsp;版权所有</li>
			
			<li class="clearBoth"></li>
			
			<li>
				<g:link controller="x520" action="yongQianBiDu">
					用前必读
				</g:link>
			</li>
			<li><span class="separator">/</span></li>
			<li>
				<g:link controller="x520" action="wangZhanXiangGuan">
					网站相关
				</g:link>
			</li>
			<li><span class="separator">/</span></li>
			<li>
				<g:link controller="x520" action="lianXiFangShi">
					联系方式
				</g:link>
			</li>
			<li><span class="separator">/</span></li>
			<li>
				<g:link controller="x520" action="jianYiFanKui">
					建议反馈
				</g:link>
			</li>
			<li><span class="separator">/</span></li>
			<li>
				<a href="http://www.miitbeian.gov.cn" target="_blank" rel="nofollow">
					${ ChangLiang.BEI_AN }
				</a>
			</li>
		</ul>
	</nav>
	<asset:image src="WangLuo/3D/左手.png" class="leftHand"/>
	<asset:image src="WangLuo/3D/右手.png" class="rightHand"/>
</div>