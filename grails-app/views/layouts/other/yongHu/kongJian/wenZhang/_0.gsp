<%@ page import="main.tank.YongHu" %>

<div id="yonghu-wenzhang-0" class="borderBox page">
	<h1>个人文章</h1>

	<div class="wrapper borderBox">

		<g:if test="${ session.uid && session.uid == yongHuInstance.id }">
			<g:formRemote name="wenzhang-save" url="[controller:'wenZhangRestful', action:'xsave']" before="keditor.sync();" onSuccess="wenZhangSaveSuccess(data,textStatus,'#yonghu-wenzhang-0-message')" onFailure="failure(XMLHttpRequest,textStatus,errorThrown,'#yonghu-wenzhang-0-message')" class="clearfix">
				
				<g:textField name="biaoTi" value="" style="margin-bottom:15px;width:100%;" class="borderBox" placeholder="文章标题" id="yonghu-wenzhang-0-biaoTi"/>
				
				<g:textArea name="neiRong" placeholder="如果您想说点什么" class="borderBox" id="yonghu-wenzhang-0-neiRong" />
				
				<script type="text/javascript">
					var keditor = KindEditor.create("#yonghu-wenzhang-0-neiRong", {
						minHeight : "700",
						width : "100%",
						syncType : "form",
						uploadJson : "${createLink(controller:'kindEditor', action:'uploadJson')}"
					});
				</script>
				
				<g:hiddenField name="yongHu.id" value="${ session.uid }"/>
				<g:submitButton name="faBu" value="发布" style="margin-top: 10px;"/>
				
				<div id="yonghu-wenzhang-0-message" class="tiShi" style="margin-top: 10px;">(￣_,￣ )：“我今天又没吃药，感觉自己萌萌哒...”</div>
			</g:formRemote>
		</g:if>
		
		<script type="text/javascript">
			function wenZhangSaveSuccess(data,textStatus, selector) {
				//console.log(data);
				switch(textStatus) {
					case "success":
						jQuery(selector).html("操作成功");//更新状态
						
						jQuery("#yonghu-wenzhang-0-biaoTi").val("");//清空文本
						jQuery("#yonghu-wenzhang-0-neiRong").val("");
						keditor.html('');

						var $wrapper = jQuery("#yonghu-wenzhang-0-wrapper");//追加文本(复制、修改、追加)
						var $ul =  $wrapper.find("ul:first");
						var $clone = $ul.find("li:first").clone();

						$clone.find(".yongHu").html(data.yongHu);
						$clone.find(".shiJian").html(data.dateCreated);
						$clone.find(".biaoTi").html(data.biaoTi);

						$ul.prepend($clone.show());
						break;
				}
			}
		</script>
		
		<div id="yonghu-wenzhang-0-wrapper" style="margin-top:30px;">
			<g:applyLayout controller="wenZhang" action="index" params="[offset:0, max:5, id:yongHuInstance.id]" />
		</div>
	</div>
</div>