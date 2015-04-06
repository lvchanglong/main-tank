<div id="shengXiao">
	<div id="shengXiao-wrapper" style="position:relative;width:150px;height:150px;line-height:150px;text-align:center;">
		<span style="font-weight:700;font-size:70px;">!</span>
	</div>
	<g:formRemote name="shengXiaoChaXun" url="[controller:'x520', action:'shengXiaoChaXun']" onSuccess="shengXiaoChaXunSuccess(data,textStatus,'#shengXiao-wrapper')" onFailure="shengXiaoChaXunFailure(XMLHttpRequest,textStatus,errorThrown,'#shengXiao-wrapper')">
		<g:field type="number" name="nian" required="" placeholder="年份"/>
		<g:submitButton name="tiJiao" value="提交"/>
	</g:formRemote>
	
	<script type="text/javascript">
		function shengXiaoChaXunSuccess(data,textStatus, selector) {
			switch(textStatus) {
				case "success":
					jQuery(selector).removeClass();
					jQuery(selector).html("<div style='position:absolute;right:-40px;top:0;font-weight:bold;display:block;'>" + data.zhongWen + "</div>");
					jQuery(selector).addClass("shengXiao " + data.pinYin);
					break;
			}
		}
		function shengXiaoChaXunFailure(XMLHttpRequest,textStatus,errorThrown,selector) {
			switch(errorThrown) {
				case "Not Acceptable":
					jQuery(selector).removeClass();
					jQuery(selector).html("格式有误/例：1988");
					break;
			}
		}
	</script>
</div>