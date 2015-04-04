<%@ page import="main.tank.YongHu" %>
<%@ page import="main.tank.RiQi" %>
<%@ page import="main.tank.ChangLiang" %>

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>${shiJieInstance.biaoTi}</title>
		<asset:stylesheet src="YinYong/umeditor1_2_2-utf8-jsp/themes/default/css/umeditor.min.css"/>
		<asset:javascript src="YinYong/umeditor1_2_2-utf8-jsp/umeditor.config.js"/>
		<asset:javascript src="YinYong/umeditor1_2_2-utf8-jsp/umeditor.min.js"/>
		<asset:javascript src="YinYong/umeditor1_2_2-utf8-jsp/lang/zh-cn/zh-cn.js"/>
	</head>
	<body>
		
		<g:each in="${kongJianInstanceList}" status="i" var="kongJianInstance">
			<div class="relative">
				${kongJianInstance.neiRong}
				<g:if test="${ dangQianYongHu?.shiFouGuanLiYuan() || shiJieInstance.yongHu == dangQianYongHu || kongJianInstance.yongHu == dangQianYongHu }">
					<g:remoteLink controller="kongJianRestful" action="delete" id="${ kongJianInstance.id }" method="DELETE" onSuccess="window.location.reload();" style="position:absolute;left:-35px;bottom:0;color:lightgray;">
						删除
					</g:remoteLink>
				</g:if>
			</div>
			<br/>
		</g:each>
			
		<div class="relative">
			<g:formRemote name="kongJian-save" url="[controller:'kongJianRestful', action:'save']" onSuccess="kongJianSuccess(data,textStatus,'#kongJian-message')" onFailure="failure(XMLHttpRequest,textStatus,errorThrown,'#kongJian-message')" class="clearfix">
				<script type="text/plain" id="kongJian-neiRong" name="neiRong" ></script>
	
				<g:hiddenField name="yongHu.id" value="${ session.uid }"/>
				<g:hiddenField name="shiJie.id" value="${ shiJieInstance.id }"/>
				<div id="kongJian-message" class="messageBox">(^_,^ )：“我今天又没吃药，感觉自己萌萌哒...”</div>
				<g:submitButton name="faBu" value="发布" class="submitBtn"/>
			</g:formRemote>
			
			<script type="text/javascript">
				var um = UM.getEditor('kongJian-neiRong', {
					imageUrl: "${createLink(controller:'UEditor', action:'uploadImage')}",
					imagePath:""
			    });
			    
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
		</div>
			
		<div style="margin-top:30px;position:relative;">
			<g:render template="/layouts/plugin/baiDuFenXiang" />
		</div>
		
		<content tag="xheader">
		</content>
		
		<content tag="xfooter">
		</content>
	 	
	</body>
</html>