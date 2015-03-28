<%@ page import="main.tank.YongHu" %>

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>我的世界</title>
	</head>
	<body>
		<div id="yonghu-shijie-0" class="borderBox defaultPage page">
			<h1>我的世界</h1>
		
			<div class="wrapper borderBox">
		
				<g:if test="${ session.uid && session.uid == yongHuInstance.id }">
					<g:formRemote name="shijie-save" url="[controller:'shiJieRestful', action:'xsave']" onSuccess="shiJieSaveSuccess(data,textStatus,'#yonghu-shijie-0-message')" onFailure="failure(XMLHttpRequest,textStatus,errorThrown,'#yonghu-shijie-0-message')" class="clearfix">
						<g:textArea name="biaoTi" placeholder="为“新世界”起个名字吧" class="borderBox" id="yonghu-shijie-0-biaoTi" />
						<g:hiddenField name="yongHu.id" value="${ session.uid }"/>
						<g:submitButton name="chuangZao" value="创造"/>
						
						<div id="yonghu-shijie-0-message" class="tiShi">(^_,^ )：“我今天又没吃药，感觉自己萌萌哒...”</div>
					</g:formRemote>
				</g:if>
				
				<script type="text/javascript">
					function shiJieSaveSuccess(data,textStatus, selector) {
						switch(textStatus) {
							case "success":
								jQuery(selector).html("操作成功");//更新状态
								jQuery("#yonghu-shijie-0-biaoTi").val("");//清空文本
		
								var $wrapper = jQuery("#yonghu-shijie-0-wrapper");//追加项目(复制、修改、追加)
								var $ul =  $wrapper.find("ul:first");
								var $clone = $ul.find("li:first").clone();
		
								$clone.find(".yongHu").html(data.yongHu);
								$clone.find(".shiJian").html(data.dateCreated);
								$clone.find(".biaoTi").html(data.biaoTi);
								$clone.find(".kouLing").html(data.kouLing);
		
								$ul.prepend($clone.show());
								break;
						}
					}
				</script>
				
				<div id="yonghu-shijie-0-wrapper" style="margin-top:30px;">
					<g:applyLayout controller="shiJie" action="index" params="[offset:0, max:5, id:yongHuInstance.id]" />
				</div>
			</div>
		</div>
	</body>
</html>