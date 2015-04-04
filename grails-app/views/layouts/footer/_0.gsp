<%@ page import="main.tank.RiQi" %>
<%@ page import="main.tank.ChangLiang" %>

<footer id="main-footer" class="borderBox">
	
	<div style="padding-top:15px;">
        <a class="defaultButton" href="http://www.main-tank.com">
        	<i class="fa fa-desktop"></i>电脑版
		</a>
		<a class="defaultButton" href="http://wap.main-tank.com">
			<i class="fa fa-mobile-phone"></i>手机版
		</a>
        <a class="defaultButton" href="#main">
            <i class="fa fa-chevron-up"></i>回顶部
        </a>
    </div>
    
	<ul class="clearfix">
		<li>
			<i class="fa fa-copyright"></i>${ new RiQi().getNian() }&nbsp;${ ChangLiang.XING_MING }&nbsp;版权所有
		</li>
		<li><span class="separator">/</span></li>
		<li>
			<i class="fa fa-qq"></i>${ ChangLiang.QQ }
		</li>
		<li><span class="separator">/</span></li>
		<li>
			<i class="fa fa-envelope-o"></i><a href="mailto:${ ChangLiang.YOU_XIANG }">${ ChangLiang.YOU_XIANG }</a>
		</li>
		<li><span class="separator">/</span></li>
		<li>
			<i class="fa fa-phone"></i>${ ChangLiang.SHOU_JI }
		</li>
		<li><span class="separator">/</span></li>
		<li>
			<a href="http://www.miitbeian.gov.cn" target="_blank" rel="nofollow">
				${ ChangLiang.BEI_AN }
			</a>
		</li>
	</ul>
	
	<br/>
	
	<ol class="clearfix">	
		<li>
			<g:link controller="x360" action="yongQianBiDu">
				用前必读
			</g:link>
		</li>
		<li><span class="separator">/</span></li>
		<li>
			<g:link controller="x360" action="wangZhanYunYing">
				网站运营
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
	</ol>
	
	<asset:image src="WangLuo/SuCai/个人定制.png" alt="微信个人号" title="个人号" class="geRen"/>
	
	<asset:image src="WangLuo/SuCai/公众定制.jpg" alt="微信公众号" title="公众号" class="gongZhong"/>
	
</footer>