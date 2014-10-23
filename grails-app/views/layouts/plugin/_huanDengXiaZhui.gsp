<asset:stylesheet src="SanFang/HuanDengPian/XiaZhui/slider.css"/>
<asset:javascript src="SanFang/HuanDengPian/XiaZhui/jquery.slider.pack.js"/>
<asset:javascript src="SanFang/HuanDengPian/XiaZhui/jquery.easing.js"/>
		
<div id="huanDengXiaZhui">
    <div class="cycleslider-wrap">
       
       <div id="slider" class="cycleslider" style="position: relative; width: 880px; height: 372px;">
	       	 <g:each in="${fileNameList}" status="i" var="fileName">
				  <div class="cycle-slider">
	             	<a href="javascript:void(0);">
	             		<asset:image src="SanFang/HuanDengPian/XiaZhui/${ fileName }" width="100%" height="372px" alt=""/>
	             	</a>
	              </div>
			 </g:each>
        </div>
        
        <a id="cycle-prev" href="#">Prev</a>
        <a id="cycle-next" href="#">Next</a>
        <div id="cycle-nav"></div>
        
    </div>
</div>

<script type="text/javascript">
	jQuery(function() {
		jQuery('#cycle-prev, #cycle-next').css({opacity: '0'});
		
		jQuery('.cycleslider-wrap').hover(function(){
			jQuery('#cycle-prev',this).stop().animate({left: '-31', opacity: '1'},200,'easeOutCubic');
			jQuery('#cycle-next',this).stop().animate({right: '-31', opacity: '1'},200,'easeOutCubic');	 
		}, function() {
			jQuery('#cycle-prev',this).stop().animate({left: '-50', opacity: '0'},400,'easeInCubic');
			jQuery('#cycle-next',this).stop().animate({right: '-50', opacity: '0'},400,'easeInCubic');		
		});
		
		jQuery(".cycleslider-wrap").fadeIn(1000);
		
		jQuery("#slider").cycle({
			fx:  "scrollDown",
			speed:  1000, 
			timeout: 5000,
			easing:  "easeOutBounce",
			next:  "#cycle-next",
			prev:  "#cycle-prev",
			pager:  "#cycle-nav",
			pause:  1,
			pauseOnPagerHover: true
		});
	});
</script>