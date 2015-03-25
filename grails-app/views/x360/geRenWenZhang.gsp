<%@ page import="main.tank.YongHu" %>

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>个人文章</title>
		<asset:stylesheet src="YinYong/umeditor1_2_2-utf8-jsp/themes/default/css/umeditor.min.css"/>
		<asset:javascript src="YinYong/umeditor1_2_2-utf8-jsp/umeditor.config.js"/>
		<asset:javascript src="YinYong/umeditor1_2_2-utf8-jsp/umeditor.min.js"/>
		<asset:javascript src="YinYong/umeditor1_2_2-utf8-jsp/lang/zh-cn/zh-cn.js"/>
	</head>
	<body>
		<div id="geRenWenZhang" class="borderBox defaultPage page">
			<h1>个人文章</h1>
		
			<div class="wrapper borderBox">
		
				<g:if test="${ session.uid && session.uid == yongHuInstance.id }">
					<g:formRemote name="wenzhang-save" url="[controller:'wenZhangRestful', action:'xsave']" onSuccess="wenZhangSaveSuccess(data,textStatus,'#geRenWenZhang-message')" onFailure="failure(XMLHttpRequest,textStatus,errorThrown,'#geRenWenZhang-message')" class="clearfix">
						
						<g:textField name="biaoTi" value="" style="margin-bottom:15px;width:100%;" class="borderBox" placeholder="文章标题" id="geRenWenZhang-biaoTi"/>
						
						<g:textField name="guanJianCi" value="" style="margin-bottom:15px;width:100%;" class="borderBox" placeholder="关键词" id="geRenWenZhang-guanJianCi"/>
						
						<script type="text/plain" id="geRenWenZhang-neiRong" name="neiRong" ></script>
						
						<%--
						<g:textArea name="neiRong" placeholder="如果您想说点什么" class="borderBox" id="geRenWenZhang-neiRong" style="width:100%;height:700px;"/>
						--%>
						
						<g:hiddenField name="yongHu.id" value="${ session.uid }"/>
						<g:submitButton name="faBu" value="发布" style="margin-top: 10px;"/>
						
						<div id="geRenWenZhang-message" class="tiShi" style="margin-top: 10px;">(^_,^ )：“我今天又没吃药，感觉自己萌萌哒...”</div>
					</g:formRemote>
				</g:if>
						
				<script type="text/javascript">
					function wenZhangSaveSuccess(data,textStatus, selector) {
						//console.log(data);
						switch(textStatus) {
							case "success":
								jQuery(selector).html("操作成功");//更新状态
								
								jQuery("#geRenWenZhang-biaoTi").val("");//清空文本
								jQuery("#geRenWenZhang-guanJianCi").val("");
								jQuery("#geRenWenZhang-neiRong").val("");
								um.setContent('');
		
								var $wrapper = jQuery("#geRenWenZhang-wrapper");//追加文本(复制、修改、追加)
								var $ul =  $wrapper.find("ul:first");
								var $clone = $ul.find("li:first").clone();
		
								$clone.find(".yongHu").html(data.yongHu);
								$clone.find(".shiJian").html(data.dateCreated);
								$clone.find(".guanJianCi").html(data.guanJianCi);
								$clone.find(".biaoTi").html(data.biaoTi);
		
								$ul.prepend($clone.show());
								break;
						}
					}
				</script>
				
				<div id="geRenWenZhang-wrapper" style="margin-top:30px;">
					<g:applyLayout controller="wenZhang" action="index" params="[offset:0, max:5, id:yongHuInstance.id]" />
				</div>
			</div>
		</div>
		
		<script type="text/javascript">
			var um = UM.getEditor('geRenWenZhang-neiRong', {
				imageUrl: "${createLink(controller:'UEditor', action:'uploadImage')}",
				imagePath:""
		    });
		</script>
	</body>
</html>