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
									(￣﹃￣ )<span class="separator">/</span><span class="message-content">密码修改</span>
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
							<g:formRemote name="xinXiXiuGai" url="[controller:'yongHu', action:'update', id:dangQianYongHu.id]" onSuccess="chengGongChuLi(data,textStatus,'xinXiXiuGai','.message-content')" onFailure="shiBaiChuLi(XMLHttpRequest,textStatus,errorThrown,'xinXiXiuGai','.message-content')" >
								<div class="xmessage borderBox">
									(￣﹃￣ )<span class="separator">/</span><span class="message-content">信息修改</span>
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
									<asset:image src="${ dangQianYongHu.touXiang }" width="256px;" height="256px"/>
								</div>
								<g:uploadForm controller="x520" action="touXiangShangChuan" onsubmit="touXiangShangChuan(jQuery(this).find([type=file])[0].files, '${ createLink(controller:"x520", action:"touXiangShangChuan") }', '${ dangQianYongHu.id }');return false">									
									<input type="file" name="file" onchange="tuPianChaKan(this.files, '#touXiangWrapper');" multiple="false" class="borderBox"/>
									<div class="preview borderBox">
										文件预览
									</div>
									<g:submitButton name="shangChuan" value="文件上传" class="shangChuan"/>
								</g:uploadForm>
							</div>
						</div>
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
									(￣﹃￣ )<span class="separator">/</span><span class="message-content">请输入账号、密码</span>
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
							未开放
						</div>
					</li>
				</g:else>
				
				<li>
					<g:link uri="/kongjian/lvchanglong">测试</g:link>
				</li>
				<li>
					<g:link uri="/">首页</g:link>
				</li>
				<li>
					<a href="javascript:void(0);" onclick="shouCang(window.location,document.title);">收藏</a>
				</li>
			</ul>
			
			<span id="header-0-timer">
			
			</span>
		</div>
	</nav>
</div>

<script type="text/javascript">
	var source = new EventSource("${ createLink(controller:"tuiSong", action:"dangQianShiJian") }");
	source.onmessage = function(event) {
		jQuery("#header-0-timer").html(event.data);//更新时间
	};

	responseToHover(".wrapperBox", ".hiddenBox");//浮动响应
	
	function chengGongDengLu(data,textStatus,key,selector) {//登录成功
		switch(textStatus) {
			case "success":
				jQuery("#" + key).find(selector).html("操作成功，初始化...");
				window.location.reload();
				break;
		}
	}

	//文件上传
	function touXiangShangChuan(files, url, userID) {

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
				console.log("读取开始:" + file.size);
			}
			
			reader.onprogress = function(p) {
				console.log("读取进行中:" + p.loaded);
			}
			
			reader.onload = function() {
				console.log("读取完成"); 
			}
			
			reader.onloadend = function(e) {
				if (reader.error) {//失败
					console.log(reader.error);
				} else {//成功
					var xhr = new XMLHttpRequest();
					xhr.open("POST", url + "?fileName=" + file.name + "&userID=" + userID);
	          		xhr.overrideMimeType("application/octet-stream");
					xhr.sendAsBinary(this.result);
					
					xhr.onreadystatechange = function() {
						if (xhr.readyState == 4) {
							if (xhr.status == 200) {
								console.log("上传成功");
								console.log("response: " + xhr.responseText);
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