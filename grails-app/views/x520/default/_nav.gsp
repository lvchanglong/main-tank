<%--
					${ Share.getDayOfWeekKey() }
					--%>
					<%--
					
								
			<g:render template="default/shuoShuo" />
					
			<div style="position:relative;min-height:900px;line-height:500px;width:100%;text-align:center;font-size:70px;font-weight:bold;">
				暂无信息( ¯ □ ¯ ) 
			</div>
			
					<div style="position:absolute;left:0;top:0;margin-left:110px;height:90px;line-height:90px;">
						<span style="position:absolute;left:-110px;top:0;font-size:50px;color:black;">
							
							龙
						</span>
						<span style="color:lightgray;font-size:15px;padding:0 21px 0 3px">/</span>
						<span style="color:black;font-size:21px;font-weight:bold;">吕常龙</span>
					</div>
					
					<div style="position:absolute;right:0;top:0;font-size: 18px;text-align:right;font-weight:bold;">
							<div style="text-align:left;margin-bottom:5px;">
								<span style="">等级</span>
								<span style="text-align:left;font-size:23px;">1</span>
							</div>
							<div>★★★★★☆☆</div>
						</div>		
					--%>
					
<%--
<div style="position:relative;height:100%;width:100%;">
				<div id="header-space-wrapper">
					<section style="position:relative;height:100%;width:100%;">
					
						<div id="header-dialog" style="position:absolute;left:0;top:50px;">
							<div style="position:relative;width:270px;height:192px;">
								<asset:image src="default/dialogLarge.png" width="100%" height="100%"/>
								<span id="header-say" style="position:absolute;left:33px;top:60px;font-weight:bold;display:inline-block;width:210px;text-align:center;">
									I want to play a game with you.
								</span>
							</div>
						</div>
						
					</section>
				</div>
				<div id="header-image-wrapper">
					<asset:image src="default/guojia.png" width="auto" height="100%"/>
				</div>
			</div>
			
<span>If we don't have it...you don't need it!</span>
				<span>/</span>
				<span>继承...发展!</span>
				<span>/</span>
				<span style="font-size:16px;">㊐㊊㊋㊌㊍㊎㊏</span>
				


<div id="header-nav">
	<section>
		<div id="header-left">
			
		</div>
		<div id="header-right">
			<span>If we don't have it...you don't need it!</span>
			<span>/</span>
			<span>继承...发展!</span>
			<span>/</span>
			<span style="font-size:16px;">㊐㊊㊋㊌㊍㊎㊏</span>
		</div>
	</section>
</div>

<script type="text/javascript">
	var longtalk = new Talk("header-dialog", "header-say", ["I want to play a game with you.", "不去抓住机会是很大的错误。", "以心神洞察万物！", "士别三日，当刮目相看。", "对你而言，意义何在？", "只因没把自己逼到那种地步，所以如今才是如今这种程度。", "天行健，君子以自强不息；地势坤，君子以厚德载物。", "这是我的世界！！！", "Good good study, day day up.", "道可道，非常道；名可名，非常名。"]);

	var source = new EventSource("${ createLink(controller:"a520", action:"shijian") }");
	source.onmessage = function(event) {
		jQuery("#header-left").html(event.data);//更新时间

		longtalk.go();
	};
</script>
--%>