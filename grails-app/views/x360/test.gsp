<%@ page import="main.tank.YongHu" %>
<%@ page import="main.tank.RiQi" %>

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>测试</title>
		<script src="${ resource(dir:"ueditor", file:"ueditor.config.js") }"></script>
		<script src="${ resource(dir:"ueditor", file:"ueditor.all.min.js") }"></script>
	</head>
	<body>
		
		<script type="text/plain" id="kongJian-neiRong" name="neiRong" ></script>
		
		<script type="text/javascript">
				var ue = UE.getEditor('kongJian-neiRong');
		</script>
		
		<content tag="header">
		</content>
		
		<content tag="footer">
		</content>
		
	</body>
</html>