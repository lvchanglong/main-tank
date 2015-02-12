<%@ page import="main.tank.ChangLiang" %>

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>主坦克-空间</title>
		<asset:stylesheet src="YinYong/kindeditor-4.1.10/themes/default/default.css"/>
		<asset:javascript src="YinYong/kindeditor-4.1.10/kindeditor-min.js"/>
		<asset:javascript src="YinYong/kindeditor-4.1.10/lang/zh_CN.js"/>
	</head>
	<body>
		<div id="kongjian" class="borderBox defaultPage">
			<ul class="main-ul borderBox clearfix">
				<li class="touXiangQv borderBox">
					<g:link uri="/kongjian/${ yongHuInstance.zhangHao }" class="aMain">
						<asset:image src="${ yongHuInstance.touXiang }" class="touXiang"/>
						<h3>${ yongHuInstance.xingMing }</h3>
						<h4>${ yongHuInstance.zhangHao }</h4>
					</g:link>
				</li>
				<li class="main-li">
					<g:remoteLink controller="x520" action="geRenZiLiao" update="kongjian-wrapper" id="${ yongHuInstance.id }" class="aList">
						<asset:image src="WangLuo/SuCai/个人资料.png"/>
					</g:remoteLink>
				</li>
				<li class="main-li">
					<g:remoteLink controller="x520" action="geRenShuoShuo" update="kongjian-wrapper" id="${ yongHuInstance.id }" class="aList">
						<asset:image src="WangLuo/SuCai/个人说说.png"/>
					</g:remoteLink>
				</li>
				<li class="main-li">
					<g:remoteLink controller="x520" action="geRenWenZhang" update="kongjian-wrapper" id="${ yongHuInstance.id }" class="aList">
						<asset:image src="WangLuo/SuCai/个人文章.png"/>
					</g:remoteLink>
				</li>
				<li class="main-li">
					<a href="javascript:void(0);" class="aList">
						<asset:image src="WangLuo/SuCai/个人相册.png"/>
					</a>
				</li>
				<li class="main-li">
					<a href="javascript:void(0);" class="aList">
						<asset:image src="WangLuo/SuCai/留言专区.png"/>
					</a>
				</li>
				<li class="main-li">
					<a href="javascript:void(0);" class="aList">
						<asset:image src="WangLuo/SuCai/宠物空间.png"/>
					</a>
				</li>
				<li class="main-li">
					<a href="javascript:void(0);" class="aList">
						<asset:image src="WangLuo/SuCai/娱乐空间.png"/>
					</a>
				</li>
				<li class="main-li">
					<a href="javascript:void(0);" class="aList">
						<asset:image src="WangLuo/SuCai/读书学习.png"/>
					</a>
				</li>
				<li class="main-li">
					<a href="javascript:void(0);" class="aList">
						<asset:image src="WangLuo/SuCai/历史回顾.png"/>
					</a>
				</li>
			</ul>
			
			<div id="kongjian-wrapper">
				<h1 id="kongjian-wrapper-h1">强者不需要等待机遇</h1>
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