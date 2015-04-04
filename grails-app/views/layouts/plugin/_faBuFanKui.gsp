<div class="faBuFanKui relative">
	<h3>
		关于本<asset:image src="HanZi/网站.png" alt="网站" class="verticalAlignBottom"/>，你想<asset:image src="HanZi/说.png" alt="说" class="verticalAlignBottom"/>什么？
	</h3>
				
	<g:formRemote name="fanKui-save" url="[controller:'fanKuiRestful', action:'save']"  onSuccess="fanKuiSaveSuccess(data,textStatus)" onFailure="failure(XMLHttpRequest,textStatus,errorThrown,'#fanKui-save-status')" class="clearfix">
		<g:hiddenField name="yongHu.id" value="${ session.uid }"/>
		
		<g:textArea name="neiRong" id="fanKui-save-neiRong" required="" class="borderBox borderRadius smallTextArea" placeholder="你想写多长写多长"/>

		<div id="fanKui-save-status" class="messageBox">(^_,^ )：“我今天又没吃药，感觉自己萌萌哒...”</div>
		<g:submitButton name="tiJiao" value="发布" class="submitBtn"/>
	</g:formRemote>
				
	<script type="text/javascript">
		function fanKuiSaveSuccess(data,textStatus) {
			jQuery("#fanKui-save-neiRong").val("");
			jQuery("#fanKui-save-status").html("(^_,^ )：“反馈已收到”");
		}
	</script>
</div>

