<%@ page import="main.tank.YongHu" %>

<g:set var="dangQianYongHu" value="${ YongHu.get(session.uid) }" />

<header id="main-header">
	<ul class="clearfix">
		<li>
			<g:link uri="/" ><asset:image src="WangLuo/Logo/logo.png" alt="主坦克" style="height:56px;"/></g:link>
		</li>
		
		<li class="wrapperBox">
			<i class="fa fa-camera"></i>联系站长
			<div class="hiddenBox normalBox" style="display:none;">
				<asset:image src="WangLuo/SuCai/个人原版.png" alt="微信号" title="微信号" style="height:210px;width:210px;margin:0 auto;display:block;"/>
			</div>
		</li>
		
		<g:if test="${ dangQianYongHu }">
			<li class="wrapperBox">
				<i class="fa fa-key"></i>${ dangQianYongHu.zhangHao }
				<div class="hiddenBox normalBox" style="display:none;">
					<g:formRemote name="miMaXiuGai" url="[controller:'x520', action:'miMaXiuGai', id:session.uid]" update="[success:'miMaXiuGaiTiShi', failure:'miMaXiuGaiTiShi']">
						(^﹃^ )<span class="separator">/</span><span id="miMaXiuGaiTiShi" class="message-content">修改密码</span>
						<g:passwordField name="yuanMiMa" required="" value="" placeholder="原始密码"/>
						<g:passwordField name="xinMiMa" required="" value="" placeholder="新的密码"/>
						<g:passwordField name="queRenMiMa" required="" value="" placeholder="确认密码"/>
						<g:submitButton name="xiuGai" value="修改" class="submitBtn"/>
					</g:formRemote>
				</div>
			</li>
			<li class="wrapperBox">
				<i class="fa fa-user"></i>${ dangQianYongHu.xingMing }
				<div class="hiddenBox largeBox" style="display:none;">
					<g:formRemote name="xinXiXiuGai" url="[controller:'yongHuRestful', action:'update', id:session.uid]" onSuccess="success(data,textStatus,'#yongHuXiuGaiTiShi')" onFailure="failure(XMLHttpRequest,textStatus,errorThrown,'#yongHuXiuGaiTiShi')" >
						(^﹃^ )<span class="separator">/</span><span id="yongHuXiuGaiTiShi" class="message-content">修改信息</span>
						<g:hiddenField name="_method" value="PUT"/>
						<g:hiddenField name="version" value="${gengXinInstance?.version}" />
						<g:textField name="xingMing" value="${dangQianYongHu?.xingMing}" placeholder="姓名"/>
						<g:select name="xingBie" from="${dangQianYongHu.constraints.xingBie.inList}" value="${dangQianYongHu?.xingBie}" valueMessagePrefix="yongHu.xingBie" noSelection="['': '']" placeholder="性别"/>
						<g:textField name="suoZai" value="${dangQianYongHu?.suoZai}" placeholder="所在"/>
						<g:textField name="shengRi" value="${dangQianYongHu?.shengRi}" placeholder="生日"/>
						<g:field type="email" name="youXiang" value="${dangQianYongHu?.youXiang}" placeholder="邮箱"/>
						<g:textField name="shouJi" value="${dangQianYongHu?.shouJi}" placeholder="手机"/>	
						<g:textField name="jianJie" value="${dangQianYongHu?.jianJie}" placeholder="简介"/>

						<g:submitButton name="xiuGai" value="修改" class="submitBtn"/>
					</g:formRemote>
					
					<div class="touXiangKongJian" style="position:absolute;top:0;right:0;padding:30px;">
						<div id="touXiangWrapper" style="width:180px;height:180px;">
							<asset:image src="${ dangQianYongHu.touXiang }" width="180px;" height="180px" alt="头像"/>
						</div>
						<g:uploadForm useToken="true" controller="x520" action="touXiangShangChuan" onsubmit="wenJianShangChuan(jQuery(this).find([type=file])[0].files, '${ createLink(controller:"x520", action:"touXiangShangChuan") }', '#kaiShiShangChuan', jQuery(this).serialize());return false">									
							<div class="relative">
								<div id="tuPianXuanZe" class="tuPianXuanZe btn btn-default">
									选择图片
								</div>
								<input type="file" name="file" onchange="tuPianChaKan(this.files, '#touXiangWrapper', '#tuPianXuanZe', '#kaiShiShangChuan');" multiple="false" class="btn btn-default"/>
							</div>
							<g:hiddenField name="id" value="test"/>
							<g:hiddenField name="uid" value="${ session.uid }"/>
							<g:submitButton id="kaiShiShangChuan" name="shangChuan" value="开始上传" class="tuPianShangChuan"/>
						</g:uploadForm>
					</div>
				</div>
			</li>
			<li class="wrapperBox">
				<g:link controller="x360" action="woDeShiJie" id="${ session.uid }"><i class="fa fa-globe"></i>我的世界</g:link>
			</li>
			<li class="wrapperBox">
				<g:remoteLink controller="x520" action="yongHuZhuXiao" onSuccess="window.location.reload()"><i class="fa fa-sign-out"></i>注销</g:remoteLink>
			</li>
		</g:if>
		<g:else>
			<li class="wrapperBox">
				<i class="fa fa-sign-in"></i>登录
				<div class="hiddenBox normalBox" style="display:none;">
					<g:formRemote name="yongHuDengLu" url="[controller:'x520', action:'yongHuDengLu']" update="[success:'dengLuTiShi', failure:'dengLuTiShi']" onSuccess="window.location.reload();">
						(^﹃^ )<span class="separator">/</span><span id="dengLuTiShi" class="message-content">账号、密码</span>
						<g:textField name="zhangHao" required="" value="" placeholder="账号"/>
						<g:passwordField name="miMa" required="" value="" placeholder="密码"/>
						<g:submitButton name="dengLu" value="登录" class="submitBtn"/>
					</g:formRemote>
				</div>
			</li>
			<li class="wrapperBox">
				<i class="fa fa-user-plus"></i>注册
				<div class="hiddenBox normalBox" style="display:none;">
					<g:formRemote name="yongHuZhuCe" url="[controller:'x520', action:'yongHuZhuCe']"  update="[success:'zhuCeTiShi', failure:'zhuCeTiShi']">
						(^﹃^ )<span class="separator">/</span><span id="zhuCeTiShi" class="message-content">账号、密码、确认</span>
						<g:textField name="zhangHao" required="" value="" placeholder="账号"/>
						<g:passwordField name="miMa" required="" value="" placeholder="密码"/>
						<g:passwordField name="queRenMiMa" required="" value="" placeholder="确认"/>
						<g:submitButton name="zhuCe" value="注册" class="submitBtn"/>
					</g:formRemote>
				</div>
			</li>
		</g:else>
	</ul>
	
	<a href="javascript:void(0);" id="headerMenu"><i class="fa fa-list"></i></a>
			
	<script type="text/javascript">
		jQuery("#headerMenu").click(function() {
			$("#toggle").toggle();
		});
	</script>
			
	<ol>
		<li>
			
		</li>
		<li class="wrapperBox">
			<g:if test="${ session.uid }">
				<g:link controller="x360" action="geRenGuanLi" id="${ session.uid }"><i class="fa fa-cog"></i>个人管理</g:link>
			</g:if>		
		</li>
	</ol>
	
	<script type="text/javascript">
		responseToHover(".wrapperBox", ".hiddenBox");//浮动响应
	</script>
</header>

