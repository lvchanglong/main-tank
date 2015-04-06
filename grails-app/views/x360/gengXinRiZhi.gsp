<%@ page import="main.tank.ChangLiang" %>
<%@ page import="main.tank.YongHu" %>

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>更新日志</title>
	</head>
	<body>

		<div id="liShi" class="clearfix defaultPage">
			<h1>更新日志</h1>
			
			<g:if test="${ dangQianYongHu?.shiFouGuanLiYuan() }">
				<g:formRemote name="gengXin-save" url="[controller:'gengXinRestful', action:'save']"  onSuccess="gengXinSaveSuccess(data,textStatus)" onFailure="failure(XMLHttpRequest,textStatus,errorThrown,'#gengXin-save-status')" class="clearfix">
					<g:textArea name="neiRong" id="gengXin-save-neiRong" required="" class="borderRadius smallTextArea" placeholder="做了什么"/>
			
					<div id="gengXin-save-status" class="messageBox">(^_,^ )：“我今天又没吃药，感觉自己萌萌哒...”</div>
					<g:submitButton name="tiJiao" value="发布" class="submitBtn"/>
				</g:formRemote>
							
				<script type="text/javascript">
					function gengXinSaveSuccess(data,textStatus) {
						jQuery("#gengXin-save-neiRong").val("");
						jQuery("#gengXin-save-status").html("(^_,^ )：“发布成功”");
					}
				</script>
				
				<hr/>
			</g:if>
			<g:else>
				<br /><br />
			</g:else>
			
			<g:applyLayout controller="gengXin" action="index" params="[offset:0, max:10]" />
		</div>
		
	</body>
</html>