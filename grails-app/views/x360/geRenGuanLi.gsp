<%@ page import="main.tank.ChangLiang" %>

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>主坦克-个人管理</title>
	</head>
	<body>
		<div id="kongjian" class="borderBox defaultPage">
			<ul class="main-ul borderBox clearfix">
				<li class="touXiangQv borderBox">
					<g:link controller="x360" action="kongJian" params="[publicKey:yongHuInstance.getPrivateKey()]" target="_blank" class="aMain">
						<asset:image src="${ yongHuInstance.touXiang }" class="touXiang" alt="头像"/>
						<h3>${ yongHuInstance.xingMing }</h3>
						<h4>${ yongHuInstance.zhangHao }</h4>
					</g:link>
				</li>
				<li class="main-li">
					<g:link controller="x360" action="geRenZiLiao" id="${ yongHuInstance.id }" target="_blank" class="aList">
						<asset:image src="WangLuo/SuCai/个人资料.png" alt="个人资料"/>
					</g:link>
				</li>
				<li class="main-li">
					<g:link controller="x360" action="geRenShuoShuo" id="${ yongHuInstance.id }" target="_blank" class="aList">
						<asset:image src="WangLuo/SuCai/个人说说.png" alt="个人说说"/>
					</g:link>
				</li>
				<li class="main-li">
					<g:link controller="x360" action="geRenWenZhang" id="${ yongHuInstance.id }" target="_blank" class="aList">
						<asset:image src="WangLuo/SuCai/个人文章.png" alt="个人文章"/>
					</g:link>
				</li>
				<li class="main-li">
					<a href="javascript:void(0);" class="aList">
						<asset:image src="WangLuo/SuCai/个人相册.png" alt="个人相册"/>
					</a>
				</li>
				<li class="main-li">
					<a href="javascript:void(0);" class="aList">
						<asset:image src="WangLuo/SuCai/留言专区.png" alt="留言专区"/>
					</a>
				</li>
				<li class="main-li">
					<a href="javascript:void(0);" class="aList">
						<asset:image src="WangLuo/SuCai/宠物空间.png" alt="宠物空间"/>
					</a>
				</li>
				<li class="main-li">
					<a href="javascript:void(0);" class="aList">
						<asset:image src="WangLuo/SuCai/娱乐空间.png" alt="娱乐空间"/>
					</a>
				</li>
				<li class="main-li">
					<a href="javascript:void(0);" class="aList">
						<asset:image src="WangLuo/SuCai/读书学习.png" alt="读书学习"/>
					</a>
				</li>
				<li class="main-li">
					<a href="javascript:void(0);" class="aList">
						<asset:image src="WangLuo/SuCai/历史回顾.png" alt="历史回顾"/>
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