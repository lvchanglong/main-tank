<div id="helper-0">
	<div style="position:fixed;left:0;top:0;display:none;">
		<asset:image src="default/dialogLarge.png" width="200px" height="142px"/>
		
		<div id="helper-wrapper" style="position:absolute;right:0;top:50px;width:100%;height:100%;text-align:center;font-size:16px;">
			Hello World !!!
		</div>
	</div>
</div>

<script type="text/javascript">
	var helper = "helper";
	var helperWrapper = "helper-wrapper";
	var milliseconds = 1000;
	
	jQuery("#main").mousemove(function(e) {
		jQuery("#" + helper).css({"left": e.clientX, "top": e.clientY - 142});
    });
    
	jQuery("#main[help]").click(function(e) {
	    var content = jQuery(this).attr("help");
        jQuery("#" + helperWrapper).html(content);

        $follow = jQuery("#" + helper);
        $follow.show();
        setTimeout(function(){
        	$follow.hide();
        }, milliseconds);
    });
</script>