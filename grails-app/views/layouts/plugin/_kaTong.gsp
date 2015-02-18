<div id="kaTong">
	<div class="borderBox wrapper">
		<canvas id="kaTong-canvas">
				不支持 Canvas
		</canvas>
		
		<asset:image src="WangLuo/SuCai/白云.png" class="zhuangShi" alt="白云"/>

		<div id="kaTong-dialog" class="dialog">
			<asset:image src="WangLuo/SuCai/小卡通对话框.png" alt="对话框"/>
			<span id="kaTong-hanHua" class="hanHua">
				
			</span>
		</div>
	</div>
</div>

<script type="text/javascript">
	var shortTalk = new Talk("kaTong-dialog", "kaTong-hanHua", ["哇哇", "哈哈", "呀呀", "我打", "看招", "嗯嗯", "不错", "嘿嘿", "暴击", "连击", "觉醒"]);
	new Motion("kaTong-canvas", "${ assetPath(src:"WangLuo/SuCai/功夫.png") }", 100, 100, 10, 1, 4, 350, function() {
		shortTalk.go();
	}, 3, "#f8f8f9");
</script>