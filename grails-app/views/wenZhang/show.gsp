
<%@ page import="main.tank.WenZhang" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<title>主坦克-文章查看</title>
	</head>
	<body>
		<div id="show-wenZhang" class="borderBox defaultPage">
			<ol class="property-list wenZhang">
				
				<g:if test="${wenZhangInstance?.biaoTi}">
				<li class="fieldcontain">
					<span class="biaoTi"><g:fieldValue bean="${wenZhangInstance}" field="biaoTi"/></span>
				</li>
				</g:if>
				
				<g:if test="${wenZhangInstance?.yongHu}">
				<li class="fieldcontain">
					<span class="fuBiaoTi" style="min-width:130px;">
						作者：${wenZhangInstance?.yongHu?.encodeAsHTML()}
					</span>
					<g:if test="${wenZhangInstance?.dateCreated}">
						<span class="fuBiaoTi" style="min-width:230px;">
							创建：<g:formatDate date="${wenZhangInstance?.dateCreated}" format="yyyy-MM-dd HH:mm:ss"/>
						</span>
						<%--
						<span class="fuBiaoTi" style="min-width:230px;">
							更新：<g:formatDate date="${wenZhangInstance?.lastUpdated}" format="yyyy-MM-dd"/>
						</span>
						--%>
						<span class="fuBiaoTi" style="min-width:230px;">
							关键词：<span class="guanJianCi">${wenZhangInstance?.getGuanJianCiAsString()}</span>
						</span>
					</g:if>
				</li>
				</g:if>
				
				<g:if test="${wenZhangInstance?.neiRong}">
				<li class="fieldcontain neiRong">
					<div style="overflow:auto;">
						${wenZhangInstance.neiRong}
					</div>
				</li>
				</g:if>
				
				<li style="position:absolute;right:0;bottom:-60px;">
					<div class="bdsharebuttonbox"><a href="#" class="bds_more" data-cmd="more"></a><a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a><a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a><a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a><a href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a><a href="#" class="bds_renren" data-cmd="renren" title="分享到人人网"></a><a href="#" class="bds_tieba" data-cmd="tieba" title="分享到百度贴吧"></a><a href="#" class="bds_ty" data-cmd="ty" title="分享到天涯社区"></a></div>
				</li>
			
			</ol>
			
		</div>
		
		<g:if test="${ session.uid && session.uid == wenZhangInstance.yongHu.id }">
			<div style="position:relative;margin-top:23px;">
				<g:formRemote name="wenzhang-delete" url="[controller:'wenZhangRestful', action:'delete', id:wenZhangInstance.id]" method="DELETE" onSuccess="success(data,textStatus,'#yonghu-wenzhang-caozuo-message')" onFailure="failure(XMLHttpRequest,textStatus,errorThrown,'#yonghu-wenzhang-caozuo-message')" >
					<fieldset class="buttons">
						<g:link class="edit" action="edit" resource="${wenZhangInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
						<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
					</fieldset>
				</g:formRemote>
				
				<div style="position:absolute;right:0;bottom:0;line-height:30px;padding:0 1em;">	
					(￣﹃￣ )：<span id="yonghu-wenzhang-caozuo-message">操作状态</span>
				</div>
			</div>
		</g:if>
		<script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdMiniList":["qzone","tsina","weixin","renren","tqq","kaixin001","tqf","tieba","douban","tsohu","t163","ty"],"bdPic":"","bdStyle":"1","bdSize":"32"},"share":{}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];</script>
	</body>
</html>
