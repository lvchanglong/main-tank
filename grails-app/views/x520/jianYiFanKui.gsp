<%@ page import="main.tank.ChangLiang" %>

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>主坦克-建议反馈</title>
	</head>
	<body>
		<div id="jianYiFanKui" class="borderBox clearfix defaultPage">
		
			<%--
			<g:render template="/layouts/transition/1" />
			--%>
			
			<h1>建议反馈</h1>
			
			<div class="xiangQing clearfix">
				<g:formRemote name="fanKui-save" url="[controller:'fanKui', action:'save']" onSuccess="fanKuiSaveSuccess(data,textStatus)" onFailure="fanKuiSaveFailure(XMLHttpRequest,textStatus,errorThrown)">
					<ul class="clearfix">
						<li>
							<p>您能够访问这个网站，我们万分感谢；您能够来到这个页面，我们无限感激。也许您还没有察觉，您的到来，已是我们几世修来的福气。也许您在这里留下的，不经意的一句话，甚至一个字，却能够让我们的未来，产生巨大改变。</p>
						</li>
						<li>
							<g:textArea  name="neiRong" id="fanKui-save-neiRong" class="textarea borderBox" />
						</li>
						<li>
							<div id="fanKui-save-status" class="status borderBox">(￣_,￣ )：“我今天又没吃药，感觉自己萌萌哒...”</div>
							<g:submitButton name="tiJiao" value="提交" class="submit"/>
						</li>
					</ul>
				</g:formRemote>
				
				<script type="text/javascript">
					function fanKuiSaveSuccess(data,textStatus) {
						jQuery("#fanKui-save-neiRong").val("");
						jQuery("#fanKui-save-status").html("(￣_,￣ )：“反馈已经收到，我们的未来可能因你而变...”");
					}
					function fanKuiSaveFailure(XMLHttpRequest,textStatus,errorThrown) {
						switch(errorThrown) {
							case "Not Found":
								jQuery("#fanKui-save-status").html("(￣_,￣ )：“操作失败，你去怪站长吧...”");
								break;
							case "Not Acceptable":
								jQuery("#fanKui-save-status").html("(￣_,￣ )：“验证未通过，请再确认一下吧...”");
								break;
						};
					}
				</script>
			</div>
			
			<div class="tuZhang">您的建议与反馈，是我们最宝贵的财富</div>
			
		</div>
	</body>
</html>