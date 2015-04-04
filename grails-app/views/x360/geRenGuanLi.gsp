<%@ page import="main.tank.ChangLiang" %>

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>个人管理</title>
	</head>
	<body>
		<div id="kongjian" class="borderBox clearfix defaultPage">
			<h1>个人管理</h1>
			<br/>
			
			<div class="relative">
				<div style="position:relative;padding-left:210px;">
					<h3>
						${ yongHuInstance.xingMing }（${ yongHuInstance.zhangHao }）
					</h3>
					<p>
						生日<span class="separator">/</span>${ yongHuInstance.shengRi }
						<br/>
						性别<span class="separator">/</span>${ yongHuInstance.xingBie }
						<br/>
						所在<span class="separator">/</span>${ yongHuInstance.suoZai }
						<br/>
						手机<span class="separator">/</span>${ yongHuInstance.shouJi }
						<br/>
						邮箱<span class="separator">/</span>${ yongHuInstance.youXiang }
					</p>
				</div>
				
				<g:link controller="x360" action="woDeShiJie" id="${ yongHuInstance.id }" target="_blank">
					<asset:image src="${ yongHuInstance.touXiang }" style="position:absolute;left:0;top:0;width:180px;height:180px;" alt="头像"/>
				</g:link>
				
				<ul class="clearfix" style="position:absolute;right:0;top:0;">
					<li style="float:left;margin:0 15px;">
						<g:link controller="x360" action="geRenShuoShuo" id="${ yongHuInstance.id }" target="_blank" class="aList">
							<asset:image src="WangLuo/SuCai/个人说说.png" alt="个人说说"/>
						</g:link>
					</li>
					<li style="float:left;margin:0 30px;">
						<g:link controller="x360" action="geRenWenZhang" id="${ yongHuInstance.id }" target="_blank" class="aList">
							<asset:image src="WangLuo/SuCai/个人文章.png" alt="个人文章"/>
						</g:link>
					</li>
				</ul>
			</div>
			<div style="clear:both;"></div>
			
			<h3>${ yongHuInstance.jianJie }</h3>
			
			<br />
			<hr />
			<br />
			
			<asset:image src="WangLuo/SuCai/${ yongHuInstance.xingBie }.png" alt="性别" title="${ yongHuInstance.xingBie }" style="float:right;height:250px;"/>
						
			<div id="kongjian-wrapper" class="relative">
				<h2 id="kongjian-wrapper-h1">I want to play a game with you</h2>
				<g:render template="/layouts/plugin/kaTong" />
			</div>
			
		</div>
		
		<script type="text/javascript">
			var source = new EventSource("${ createLink(controller:"tuiSong", action:"jinQiGongGao") }");
			source.onmessage = function(event) {
				jQuery("#kongjian-wrapper-h1").html(event.data);//近期公告
			};
		</script>
	</body>
</html>