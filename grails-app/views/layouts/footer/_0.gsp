<%@ page import="main.tank.RiQi" %>
<%@ page import="main.tank.ChangLiang" %>

<footer id="main-footer" class="borderBox">
	<nav>
		<ul class="clearfix">
			<li style="width:100%;text-align:center;">©&nbsp;${ new RiQi().getNian() }&nbsp;&nbsp;&nbsp;<g:link controller="x360" action="yongQianBiDu">${ ChangLiang.WANG_ZHAN_ZUO_ZHE }</g:link>&nbsp;&nbsp;&nbsp;版权所有</li>
			
			<li class="clearBoth"></li>
			
			<li>
				<g:link controller="x360" action="yongQianBiDu">
					用前必读
				</g:link>
			</li>
			<li><span class="separator">/</span></li>
			<li>
				<g:link controller="x360" action="wangZhanXiangGuan">
					网站相关
				</g:link>
			</li>
			<li><span class="separator">/</span></li>
			<li>
				<g:link controller="x360" action="lianXiFangShi">
					联系方式
				</g:link>
			</li>
			<li><span class="separator">/</span></li>
			<li>
				<g:link controller="x360" action="jianYiFanKui">
					建议反馈
				</g:link>
			</li>
			<li><span class="separator">/</span></li>
			<li>
				<g:link controller="x360" action="gengXinRiZhi">
					更新日志
				</g:link>
			</li>
			<li><span class="separator">/</span></li>
			<li>
				<g:link controller="x360" action="yongHuLieBiao">
					用户列表
				</g:link>
			</li>
			<li><span class="separator">/</span></li>
			<li>
				<g:link controller="x360" action="shuoShuoLieBiao">
					说说列表
				</g:link>
			</li>
			<li><span class="separator">/</span></li>
			<li>
				<g:link controller="x360" action="fuWuLieBiao">
					服务列表
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
</footer>