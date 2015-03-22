<%@ page import="main.tank.YongHu" %>

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>主坦克-自由空间</title>
		<asset:stylesheet src="YinYong/umeditor1_2_2-utf8-jsp/themes/default/css/umeditor.min.css"/>
		<asset:javascript src="YinYong/umeditor1_2_2-utf8-jsp/umeditor.config.js"/>
		<asset:javascript src="YinYong/umeditor1_2_2-utf8-jsp/umeditor.min.js"/>
		<asset:javascript src="YinYong/umeditor1_2_2-utf8-jsp/lang/zh-cn/zh-cn.js"/>
	</head>
	<body>
	
		<g:each in="${kongJianInstanceList}" status="i" var="kongJianInstance">
			<div class="kongJianWrapper">
				${kongJianInstance.neiRong}
				<g:if test="${ publicKey == privateKey }">
					<g:remoteLink controller="kongJianRestful" action="delete" id="${ kongJianInstance.id }" method="DELETE" onSuccess="window.location.reload();" style="position:absolute;right:-30px;bottom:0;font-weight:bold;">删除</g:remoteLink>
				</g:if>	
			</div>
		</g:each>
		
		<div class="page" style="padding-top:15px;">
			<g:formRemote name="kongJian-save" url="[controller:'kongJianRestful', action:'save']" onSuccess="kongJianSuccess(data,textStatus,'#kongJian-message')" onFailure="failure(XMLHttpRequest,textStatus,errorThrown,'#kongJian-message')" class="clearfix">
				<script type="text/plain" id="kongJian-neiRong" name="neiRong" ></script>
	
				<g:hiddenField name="kouLing" value="${ publicKey }"/>
				<g:hiddenField name="yongHu.id" value="${ session.uid }"/>
				<g:submitButton name="faBu" value="发布" style="margin-top: 10px;"/>
				
				<div id="kongJian-message" class="tiShi" style="margin-top: 10px;">(￣_,￣ )：“我今天又没吃药，感觉自己萌萌哒...”</div>
			</g:formRemote>
			
			<script type="text/javascript">
				function kongJianSuccess(data,textStatus, selector) {
					switch(textStatus) {
						case "nocontent":
							jQuery(selector).html("删除成功");
							break;
						case "success":
							jQuery(selector).html("操作成功");
							window.location.reload();
							break;
					}
				}
			</script>
			
			<script type="text/javascript">
				var um = UM.getEditor('kongJian-neiRong', {
					imageUrl: "${createLink(controller:'UEditor', action:'uploadImage')}",
					imagePath:""
			    });
			</script>
		</div>
		
		<content tag="header">
			<div class="borderBox" style="height:70px;line-height:70px;border-bottom:1px dotted lightgray;">
				<div class="floatLeft">
					<g:link uri="/">
						<asset:image src="WangLuo/Logo/小图标.png" style="height:70px;" alt="主坦克"/>
					</g:link>
				</div>
				<div class="floatRight">
					<g:if test="${ yongHuInstance }">
						${ yongHuInstance.xingMing }（${ yongHuInstance.zhangHao }）
						<g:remoteLink controller="x520" action="yongHuZhuXiao" onSuccess="window.location.reload()">注销</g:remoteLink>
					</g:if>
					<g:else>
						<g:formRemote name="yongHuDengLu" url="[controller:'x520', action:'yongHuDengLu']" onSuccess="window.location.reload();" onFailure="failure(XMLHttpRequest,textStatus,errorThrown,'.message-content')">
							<div class="xmessage borderBox" style="float:left;padding-right:15px;min-width:210px;">
								(￣﹃￣ )<span class="separator">/</span><span class="message-content">账号、密码</span>
							</div>
							<g:textField name="zhangHao" value="" placeholder="账号"/>
							<g:passwordField name="miMa" value="" placeholder="密码"/>
							<g:submitButton name="dengLu" value="登录"/>
						</g:formRemote>
					</g:else>
				</div>
			</div>
		</content>
		
		<content tag="logo">
		</content>
		
		<content tag="footer">
		</content>
		
		<content tag="helper">
		</content>
		
	</body>
</html>