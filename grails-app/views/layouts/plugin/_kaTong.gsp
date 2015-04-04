<div id="kaTong" class="relative">
	<canvas id="kaTong-canvas">
			不支持 Canvas
	</canvas>
	
	<asset:image src="WangLuo/SuCai/白云.png" class="zhuangShi" alt="白云"/>

	<div id="kaTong-dialog" style="position:absolute;left:21px;top:10px;font-weight:bold;">

	</div>
	<script type="text/javascript">
		var shortTalk = new Talk("kaTong-dialog", ["哇哇", "哈哈", "呀呀", "我打", "看招", "嗯嗯", "不错", "嘿嘿", "暴击", "连击", "觉醒"]);
		new Motion("kaTong-canvas", "${ assetPath(src:"WangLuo/SuCai/功夫.png") }", 100, 100, 10, 1, 4, 350, function() {
			shortTalk.go();
		}, 3, "#f8f8f9");
	</script>
</div>

