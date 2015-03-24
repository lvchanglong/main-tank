<div id="main-helper" style="display:none;">
	<div id="main-helper-wrapper">
		
	</div>
	
	<script type="text/javascript">
		jQuery("#main").mousemove(function(e) {
			jQuery("#main-helper").css({"left": e.clientX + 5, "top": e.clientY + 5});
	    });
	    
		jQuery("#main [help]").click(function(e) {
		    var content = jQuery(this).attr("help");
	        jQuery("#main-helper-wrapper").html(content);
	
	        $follow = jQuery("#main-helper");
	        $follow.show();
	        setTimeout(function(){
	        	$follow.hide();
	        }, 1000);
	    });
	</script>
</div>

