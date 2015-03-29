<div id="shengXiao">
	<div id="shengXiao-wrapper">
		<span class="wenHao">？</span>
	</div>
	<g:formRemote name="shengXiaoChaXun" url="[controller:'x520', action:'shengXiaoChaXun']" onSuccess="shengXiaoChaXunSuccess(data,textStatus,'#shengXiao-wrapper')" onFailure="shengXiaoChaXunFailure(XMLHttpRequest,textStatus,errorThrown,'#shengXiao-wrapper')">
		<g:textField name="nian" required="" placeholder="年份"/>
		<g:actionSubmit value="提交" style="padding:4px 8px;"/>
	</g:formRemote>
	
	<script type="text/javascript">
		function shengXiaoChaXunSuccess(data,textStatus, selector) {
			switch(textStatus) {
				case "success":
					jQuery(selector).removeClass();
					jQuery(selector).html("<div class='zhongWen'>" + data.zhongWen + "</div>");
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