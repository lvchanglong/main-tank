<%@ page import="main.tank.YongHu" %>

<g:set var="dangQianYongHu" value="${ YongHu.get(session.uid) }" />

<div id="header-0">
	<nav>
		<div class="conWidth h_100p">
			
			<ul class="borderBox clearfix">
				
				<g:if test="${ dangQianYongHu }">
					<li class="wrapperBox">
						<span class="link">${ dangQianYongHu.zhangHao }</span>
						<div class="hiddenBox normalBox borderBox" style="display:none;">
							<g:formRemote name="miMaXiuGai" url="[controller:'x520', action:'miMaXiuGai', id:dangQianYongHu.id]" onSuccess="chengGongChuLi(data,textStatus,'miMaXiuGai','.message-content')" onFailure="shiBaiChuLi(XMLHttpRequest,textStatus,errorThrown,'miMaXiuGai','.message-content')">
								<div class="xmessage borderBox">
									(￣﹃￣ )<span class="separator">/</span><span class="message-content">修改密码</span>
								</div>
								<g:passwordField name="yuanMiMa" value="" placeholder="原始密码"/>
								<g:passwordField name="xinMiMa" value="" placeholder="新的密码"/>
								<g:passwordField name="queRenMiMa" value="" placeholder="确认密码"/>
								<g:submitButton name="xiuGai" value="修改"/>
							</g:formRemote>
						</div>
					</li>
					<li class="wrapperBox">
						<span class="link">${ dangQianYongHu.xingMing }</span>
						<div class="hiddenBox customBox borderBox" style="display:none;">
							<g:formRemote name="xinXiXiuGai" url="[controller:'yongHuRestful', action:'update', id:dangQianYongHu.id]" onSuccess="chengGongChuLi(data,textStatus,'xinXiXiuGai','.message-content')" onFailure="shiBaiChuLi(XMLHttpRequest,textStatus,errorThrown,'xinXiXiuGai','.message-content')" >
								<div class="xmessage borderBox">
									(￣﹃￣ )<span class="separator">/</span><span class="message-content">修改信息</span>
								</div>
								
								<g:hiddenField name="_method" value="PUT"/>
								<g:hiddenField name="version" value="${gengXinInstance?.version}" />
								<g:textField name="xingMing" value="${dangQianYongHu?.xingMing}" placeholder="姓名"/>
								<g:select name="xingBie" from="${dangQianYongHu.constraints.xingBie.inList}" value="${dangQianYongHu?.xingBie}" valueMessagePrefix="yongHu.xingBie" noSelection="['': '']" placeholder="性别"/>
								<g:textField name="suoZai" value="${dangQianYongHu?.suoZai}" placeholder="所在"/>
								<g:textField name="shengRi" value="${dangQianYongHu?.shengRi}" placeholder="生日"/>
								<g:field type="email" name="youXiang" value="${dangQianYongHu?.youXiang}" placeholder="邮箱"/>
								<g:textField name="shouJi" value="${dangQianYongHu?.shouJi}" placeholder="手机"/>	
								<g:textField name="jianJie" value="${dangQianYongHu?.jianJie}" placeholder="简介"/>

								<g:submitButton name="xiuGai" value="修改"/>
							</g:formRemote>
							
							<div class="touXiangKongJian">
								<div id="touXiangWrapper">
									<asset:image src="${ dangQianYongHu.touXiang }" width="256px;" height="256px" alt="头像"/>
								</div>
								<g:uploadForm controller="x520" action="touXiangShangChuan" onsubmit="touXiangShangChuan(jQuery(this).find([type=file])[0].files, '${ createLink(controller:"x520", action:"touXiangShangChuan") }', '${ dangQianYongHu.id }', '#kaiShiShangChuan');return false">									
									<input type="file" name="file" onchange="touXiangChaKan(this.files, '#touXiangWrapper', '#tuPianXuanZe', '#kaiShiShangChuan');" multiple="false" class="borderBox"/>
									<div id="tuPianXuanZe"class="preview borderBox">
										选择图片
									</div>
									<g:submitButton id="kaiShiShangChuan" name="shangChuan" value="开始上传" class="shangChuan"/>
								</g:uploadForm>
							</div>
						</div>
					</li>
					<li>
						<g:link uri="/kongjian/${ dangQianYongHu.zhangHao }">空间</g:link>
					</li>
					<li>
						<g:remoteLink controller="x520" action="yongHuZhuXiao" onSuccess="window.location.reload()">注销</g:remoteLink>
					</li>
				</g:if>
				<g:else>
					<li class="wrapperBox">
						<span class="link">登录</span>
						<div class="hiddenBox normalBox borderBox" style="display:none;">
							<g:formRemote name="yongHuDengLu" url="[controller:'x520', action:'yongHuDengLu']" onSuccess="chengGongDengLu(data,textStatus,'yongHuDengLu','.message-content')" onFailure="shiBaiChuLi(XMLHttpRequest,textStatus,errorThrown,'yongHuDengLu','.message-content')">
								<div class="xmessage borderBox">
									(￣﹃￣ )<span class="separator">/</span><span class="message-content">账号、密码</span>
								</div>
								<g:textField name="zhangHao" value="" placeholder="账号"/>
								<g:passwordField name="miMa" value="" placeholder="密码"/>
								<g:submitButton name="dengLu" value="登录"/>
							</g:formRemote>
						</div>
					</li>
					<li class="wrapperBox">
						<span class="link">注册</span>
						<div class="hiddenBox normalBox borderBox" style="display:none;">
							<g:formRemote name="yongHuZhuCe" url="[controller:'x520', action:'yongHuZhuCe']" onSuccess="chengGongChuLi(data,textStatus,'yongHuZhuCe','.message-content')" onFailure="shiBaiChuLi(XMLHttpRequest,textStatus,errorThrown,'yongHuZhuCe','.message-content')">
								<div class="xmessage borderBox">
									(￣﹃￣ )<span class="separator">/</span><span class="message-content">账号、密码、确认</span>
								</div>
								<g:textField name="zhangHao" value="" placeholder="账号"/>
								<g:passwordField name="miMa" value="" placeholder="密码"/>
								<g:passwordField name="queRenMiMa" value="" placeholder="确认"/>
								<g:submitButton name="zhuCe" value="注册"/>
							</g:formRemote>
						</div>
					</li>
				</g:else>
				
			</ul>
			
			<ol>
				<li>
					<g:link uri="/">主页</g:link>
				</li>
				<li>
					<g:link controller="x520" action="yongHu">用户</g:link>
				</li>
				<li>
					<g:link controller="x520" action="shuoShuo">说说</g:link>
				</li>
				<li>
					<g:link controller="x520" action="fuWu">服务</g:link>
				</li>
				<li>
					<g:link controller="x520" action="liShi">历史</g:link>
				</li>
				<li>
					<g:link controller="x520" action="jianYiFanKui">
						反馈
					</g:link>
				</li>
				<li>
					<a href="javascript:void(0);" onclick="shouCang(window.location,document.title);">收藏</a>
				</li>
			</ol>
		</div>
	</nav>
</div>

<script type="text/javascript">
	responseToHover(".wrapperBox", ".hiddenBox");//浮动响应

	//登录成功
	function chengGongDengLu(data,textStatus,key,selector) {
		switch(textStatus) {
			case "success":
				jQuery("#" + key).find(selector).html("操作成功，初始化...");
				window.location.reload();
				break;
		}
	}

	//头像预览
	function touXiangChaKan(files, wrapperSelector, xuanZeSelector, shangChuanSelector) {

		$xuanZe = jQuery(xuanZeSelector);//上传按钮
		
		if (files.length < 1) {
			$xuanZe.html("选择图片");
			return false;
		}
		
		for(var i = 0; i < files.length; i++) {
	         var tuPian = files[i];//图片
	         var reader = new FileReader();
	         reader.readAsDataURL(tuPian);
	         reader.onload=function(e){
	             //console.log(e.target.result);
	             jQuery(wrapperSelector).html("<img src='"+e.target.result+"' width='100%' height='100%' alt=''/>");
	             $xuanZe.html("已选择");
	             jQuery(shangChuanSelector).val("开始上传");
	         };
	    }
	    
	    //console.log(files);
	}
	
	//头像上传
	function touXiangShangChuan(files, url, userID, shangChuanSelector) {

		$shangChuan = jQuery(shangChuanSelector);//上传按钮

		if (files.length < 1) {
			$shangChuan.val("( ↑ _ ↑ )");
			return false;
		}
		
		try {//修复谷歌浏览器sendAsBinary()异常
		  if (typeof XMLHttpRequest.prototype.sendAsBinary == 'undefined') {
		    XMLHttpRequest.prototype.sendAsBinary = function(text){
		      var data = new ArrayBuffer(text.length);
		      var ui8a = new Uint8Array(data, 0);
		      for (var i = 0; i < text.length; i++) ui8a[i] = (text.charCodeAt(i) & 0xff);
		      this.send(ui8a);
		    }
		  }
		} catch (e) {}
		
		for(var i = 0; i < files.length; i++) {
	        var file = files[i];//当前文件
	        var reader = new FileReader();

	        reader.onloadstart = function() {
				console.log("读取开始");
				$shangChuan.val("读取开始");
			}
			
			reader.onprogress = function(p) {
				var loaded = p.loaded;
				var total = p.total;
				var baiFenBi = loaded / total * 100;
				console.log("读取进行中:" + baiFenBi + "%");
				$shangChuan.val("读取进行中:" + baiFenBi + "%");
			}
			
			reader.onload = function() {
				console.log("读取完成"); 
				$shangChuan.val("读取完成");
			}
			
			reader.onloadend = function() {
				if (reader.error) {//失败
					console.log(reader.error);
				} else {//成功
					var xhr = new XMLHttpRequest();
					xhr.open("POST", url + "?fileName=" + encodeURIComponent(file.name) + "&userID=" + userID);
	          		xhr.overrideMimeType("application/octet-stream");
					xhr.sendAsBinary(this.result);
					
					xhr.onreadystatechange = function() {
						if (xhr.readyState == 4) {
							if (xhr.status == 200) {
								console.log("上传成功");
								//console.log("response: " + xhr.responseText);
								$shangChuan.val("上传成功");

								$shangChuan.css("background-color", "lightslategray");
							}
						}
					}
				}
			}
			reader.readAsBinaryString(file);
	    }
		//console.log(files);
		
	}
</script>