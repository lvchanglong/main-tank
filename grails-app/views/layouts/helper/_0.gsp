<div id="helper-0" style="display:none;">
	<div id="helper-0-wrapper">
		
	</div>
</div>

<script type="text/javascript">
	jQuery("#main").mousemove(function(e) {
		jQuery("#helper-0").css({"left": e.clientX + 5, "top": e.clientY + 5});
    });
    
	jQuery("#main [help]").click(function(e) {
	    var content = jQuery(this).attr("help");
        jQuery("#helper-0-wrapper").html(content);

        $follow = jQuery("#helper-0");
        $follow.show();
        setTimeout(function(){
        	$follow.hide();
        }, 1000);
    });
</script>