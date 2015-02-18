<%@ page import="main.tank.YongHu" %>

<div id="yonghu-shuoshuo-0" class="borderBox page">
	<h1>个人说说</h1>

	<div class="wrapper borderBox">

		<g:if test="${ session.uid && session.uid == yongHuInstance.id }">
			<g:formRemote name="shuoshuo-save" url="[controller:'shuoShuoRestful', action:'xsave']" onSuccess="shuoShuoSaveSuccess(data,textStatus,'#yonghu-shuoshuo-0-message')" onFailure="failure(XMLHttpRequest,textStatus,errorThrown,'#yonghu-shuoshuo-0-message')" class="clearfix">
				<g:textArea name="neiRong" placeholder="如果您想说点什么" class="borderBox" id="yonghu-shuoshuo-0-neiRong" />
				<g:hiddenField name="yongHu.id" value="${ session.uid }"/>
				<g:submitButton name="faBu" value="发布"/>
				
				<div id="yonghu-shuoshuo-0-message" class="tiShi">(￣_,￣ )：“我今天又没吃药，感觉自己萌萌哒...”</div>
			</g:formRemote>
		</g:if>
		
		<script type="text/javascript">
			function shuoShuoSaveSuccess(data,textStatus, selector) {
				//console.log(data);
				switch(textStatus) {
					case "success":
						jQuery(selector).html("操作成功");//更新状态
						jQuery("#yonghu-shuoshuo-0-neiRong").val("");//清空文本

						var $wrapper = jQuery("#yonghu-shuoshuo-0-wrapper");//追加项目(复制、修改、追加)
						var $ul =  $wrapper.find("ul:first");
						var $clone = $ul.find("li:first").clone();

						$clone.find(".yongHu").html(data.yongHu);
						$clone.find(".shiJian").html(data.dateCreated);
						$clone.find(".neiRong").html(data.neiRong);

						$ul.prepend($clone.show());
						break;
				}
			}
		</script>
		
		<div id="yonghu-shuoshuo-0-wrapper" style="margin-top:30px;">
			<g:applyLayout controller="shuoShuo" action="index" params="[offset:0, max:5, id:yongHuInstance.id]" />
		</div>
	</div>
</div>