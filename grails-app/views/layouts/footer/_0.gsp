<%@ page import="main.tank.RiQi" %>
<%@ page import="main.tank.ChangLiang" %>

<footer id="main-footer">
	
	<div style="padding:5px 0 5px 0;">
        <a class="btn bold" href="http://www.main-tank.com">
        	<i class="fa fa-desktop"></i>电脑版</strong>
		</a>
		<a class="btn bold" href="http://wap.main-tank.com">
			<i class="fa fa-mobile-phone"></i>手机版
		</a>
        <a class="btn bold" href="#main">
            <i class="fa fa-chevron-up"></i>回顶部
        </a>
    </div>
    
	<ul class="clearfix inlineBlock">
		<li>
			<i class="fa fa-copyright"></i>${ new RiQi().getNian() }&nbsp;${ ChangLiang.XING_MING }&nbsp;版权所有
		</li>
		<li>
			<i class="fa fa-qq"></i>${ ChangLiang.QQ }
		</li>
		<li>
			<i class="fa fa-envelope-o"></i><a href="mailto:${ ChangLiang.YOU_XIANG }">${ ChangLiang.YOU_XIANG }</a>
		</li>
		<li>
			<i class="fa fa-phone"></i>${ ChangLiang.SHOU_JI }
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
			<g:link controller="x360" action="yongQianBiDu">
				用前必读
			</g:link>
		</li>
		<li>
			<g:link controller="x360" action="wangZhanYunYing">
				网站运营
			</g:link>
		</li>
		<li>
			<g:link controller="x360" action="fanKuiLieBiao">
				反馈列表
			</g:link>
		</li>
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
	
	<%--
	<asset:image src="WangLuo/SuCai/个人定制.png" alt="微信号" title="微信号" style="position:fixed;bottom:180px;;right:30px;height:90px;width:90px;"/>
	<asset:image src="WangLuo/SuCai/公众定制.jpg" alt="微信公众号" title="公众号"/>
	--%>
	
</footer>