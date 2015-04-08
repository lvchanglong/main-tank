<%@ page import="main.tank.RiQi" %>
<%@ page import="main.tank.ChangLiang" %>

<footer id="main-footer">
	
	<div style="padding:5px 0 5px 0;">
		<g:link class="btn bold" controller="x360" action="guanYuWangZhan">
			<i class="fa fa-leaf"></i>关于网站
		</g:link>
        <a class="btn bold" href="http://www.main-tank.com">
        	<i class="fa fa-home"></i>回到首页
		</a>
        <a class="btn bold" href="#main">
            <i class="fa fa-chevron-up"></i>返回顶部
        </a>
    </div>
    
	<ul class="clearfix inlineBlock">
		<li>
			<i class="fa fa-copyright"></i>${ new RiQi().getNian() }&nbsp;${ ChangLiang.XING_MING }&nbsp;版权所有
		</li>
		<li>
			<g:link controller="x360" action="yongQianBiDu">
				用前必读
			</g:link>
		</li>
		<li>
			<g:link controller="x360" action="yongHuFanKui">
				用户反馈
			</g:link>
		</li>
		<li>
			<a href="http://www.miitbeian.gov.cn" target="_blank" rel="nofollow">
				${ ChangLiang.BEI_AN }
			</a>
		</li>
	</ul>
	
	<br/>
	
	<ol class="clearfix inlineBlock">
		<li>
			<g:link controller="x360" action="gengXinRiZhi">
				更新日志
			</g:link>
		</li>
		<li>
			<g:link controller="x360" action="yongHuLieBiao">
				用户列表
			</g:link>
		</li>
		<li>
			<g:link controller="x360" action="shuoShuoLieBiao">
				说说列表
			</g:link>
		</li>
		<li>
			<g:link controller="x360" action="fuWuLieBiao">
				服务列表
			</g:link>
		</li>
	</ol>
</footer>