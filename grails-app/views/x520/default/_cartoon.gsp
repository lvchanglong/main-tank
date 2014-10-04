<style type="text/css">
	/*notice*/
	#helper-action {
		position: fixed;
		bottom: 0;
		left: 0;
		width:130px;
		height:130px;
		z-index:999;
	}
</style>

<div id="helper-action" class="borderBox">
	<div class="borderBox wrapper">
	
		<canvas id="notice-canvas" style="position:absolute;left:0;bottom:0;">
			不支持 Canvas
		</canvas>
		
		<div style="position:absolute;right:0;top:0;">
			<asset:image src="default/baiyun.png" width="auto" height="100px"/>
		</div>
		
		<div id="notice-dialog" style="position:absolute;left:70px;bottom:35px;display:none;">
			<asset:image src="default/dialogLarge.png" width="70px" height="auto"/>
			<span id="notice-say" style="position:absolute;left:20px;top:15px;font-weight:bold;">
				
			</span>
		</div>
		
	</div>
</div>

<script type="text/javascript">
	var shortTalk = new Talk("notice-dialog", "notice-say", ["哇!", "哈!", "呀!", "我打", "看招", "嗯!", "不错", "嘿!", "暴击", "连击", "觉醒"]);
	new Motion("notice-canvas", "${ assetPath(src:"default/gongfu.png") }", 80, 80, 10, 1, 5, 300, function() {
		shortTalk.go();
	}, 3);
</script>