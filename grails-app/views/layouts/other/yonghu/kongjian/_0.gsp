<div id="yonghu-kongjian-0">
	<ul class="main-ul clearfix">
		<li class="touXiangQv borderBox">
			<g:link uri="/kongjian/${ yongHuInstance.zhangHao }" class="aMain">
				<asset:image src="${ yongHuInstance.touXiang }" class="touXiang"/>
				<h3>${ yongHuInstance.xingMing }</h3>
				<h4>${ yongHuInstance.zhangHao }</h4>
			</g:link>
		</li>
		<li class="main-li">
			<g:remoteLink controller="x520" action="test" update="yonghu-kongjian-0-wrapper" id="${ yongHuInstance.id }" class="aList">
				<asset:image src="WangLuo/SuCai/个人资料.png"/>
			</g:remoteLink>
		</li>
		<li class="main-li">
			<a href="javascript:void(0);" class="aList">
				<asset:image src="WangLuo/SuCai/个人说说.png"/>
			</a>
		</li>
		<li class="main-li">
			<a href="javascript:void(0);" class="aList">
				<asset:image src="WangLuo/SuCai/个人文章.png"/>
			</a>
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
	
	<div id="yonghu-kongjian-0-wrapper">
		<h1 id="yonghu-kongjian-0-wrapper-h1">强者不需要等待机遇</h1>
		<g:render template="/layouts/plugin/kaTong" />
	</div>
</div>

<script type="text/javascript">
	var source = new EventSource("${ createLink(controller:"tuiSong", action:"jinQiGongGao") }");
	source.onmessage = function(event) {
		jQuery("#yonghu-kongjian-0-wrapper-h1").html(event.data);//近期公告
	};
</script>