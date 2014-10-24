<asset:stylesheet src="SanFang/HuanDengPian/stylesheets/slider.css"/>
<asset:javascript src="SanFang/HuanDengPian/javascripts/jquery.slider.pack.js"/>
<asset:javascript src="SanFang/HuanDengPian/javascripts/jquery.easing.js"/>

<div id="huanDengXiaZhui">
    <div class="cycleslider-wrap">
       
       <div id="slider" class="cycleslider" style="position:relative; width:${width}; height:${ height };margin:0 auto;">
	       	 <g:each in="${instanceList}" status="i" var="instance">
				  <div class="cycle-slider">
	             	<a href="${ instance.url }">
	             		<asset:image src="SanFang/HuanDengPian/images/${ instance.fileName }" width="${width}" height="${ height }" alt=""/>
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