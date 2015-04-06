<%@ page import="main.tank.YongHu" %>

<g:set var="dangQianYongHu" value="${ YongHu.get(session.uid) }" />

<header id="main-header" class="clearfix minWidth">
	
	<div class="daoHang clearfix">
		<g:link uri="/" elementId="main-header-logo">
			<asset:image src="WangLuo/Logo/logo.png" alt="主坦克"/>
		</g:link>
		
		<a href="javascript:void(0);" id="main-header-menu">
			<i class="fa fa-list"></i>
			<script type="text/javascript">
				jQuery("#main-header-menu").click(function() {
					jQuery("#main-header-toggle").toggle();
				});
			</script>
		</a>
		
		<ol id="main-header-toggle">
			
			
			<g:if test="${ dangQianYongHu }">
				<li>
					<g:link controller="x360" action="woDeShiJie" id="${ session.uid }"><i class="fa fa-globe"></i>我的世界</g:link>
				</li>
				<li>
					<g:link controller="x360" action="geRenGuanLi" id="${ session.uid }"><i class="fa fa-cog"></i>个人管理</g:link>
				</li>
				<li>
					<g:remoteLink controller="x520" action="yongHuZhuXiao" onSuccess="window.location.reload()"><i class="fa fa-sign-out"></i>退出登录</g:remoteLink>
				</li>
				<li class="hoverGaiMiMa">
					<i class="fa fa-key"></i>${ dangQianYongHu.zhangHao }
				</li>
				<li class="hoverGaiXinXi">
					<i class="fa fa-user"></i>${ dangQianYongHu.xingMing }
				</li>
			</g:if>
			<g:else>
				<li class="hoverDengLu">
					<i class="fa fa-sign-in"></i>用户登录
				</li>
				<li class="hoverZhuCe">
					<i class="fa fa-user-plus"></i>用户注册
				</li>
			</g:else>
			
			<li class="hoverLianXiZhanZhang">
				<i class="fa fa-camera"></i>联系站长
			</li>
		</ol>
	</div>
	
	<%-- 联系站长 --%>
	<div class="hiddenBox hoverLianXiZhanZhang" id="hoverLianXiZhanZhang">
		<asset:image src="WangLuo/SuCai/个人原版.png" alt="微信号" title="微信号" style="height:360px;width:360px;margin:0 auto;display:block;"/>
	</div>
	<script type="text/javascript">
		responseToHover(".hoverLianXiZhanZhang", "#hoverLianXiZhanZhang");
	</script>
	
	<g:if test="${ dangQianYongHu }">
		<%-- 修改密码 --%>
		<div class="hiddenBox hoverGaiMiMa" id="hoverGaiMiMa">
			<div class="innerWrapper">
				<g:formRemote name="miMaXiuGai" url="[controller:'x520', action:'miMaXiuGai', id:session.uid]" update="[success:'miMaXiuGaiTiShi', failure:'miMaXiuGaiTiShi']">
					<h3>
						(^﹃^ )<span class="separator">/</span><span id="miMaXiuGaiTiShi" class="message-content">修改密码</span>
					</h3>
					<g:passwordField name="yuanMiMa" required="" value="" placeholder="原始密码"/>
					<g:passwordField name="xinMiMa" required="" value="" placeholder="新的密码"/>
					<g:passwordField name="queRenMiMa" required="" value="" placeholder="确认密码"/>
					<g:submitButton name="xiuGai" value="修改" class="submitBtn btn-default"/>
				</g:formRemote>
			</div>
		</div>
		<script type="text/javascript">
			responseToHover(".hoverGaiMiMa", "#hoverGaiMiMa");
		</script>
		
		<%-- 修改信息 --%>
		<div class="hiddenBox hoverGaiXinXi" id="hoverGaiXinXi">
			<div class="innerWrapper clearfix">
				
				<g:formRemote name="xinXiXiuGai" url="[controller:'yongHuRestful', action:'update', id:session.uid]" onSuccess="success(data,textStatus,'#yongHuXiuGaiTiShi')" onFailure="failure(XMLHttpRequest,textStatus,errorThrown,'#yongHuXiuGaiTiShi')" class="clearfix">
					<h3>
						(^﹃^ )<span class="separator">/</span><span id="yongHuXiuGaiTiShi" class="message-content">修改信息</span>
					</h3>
					<g:hiddenField name="_method" value="PUT"/>
					<g:hiddenField name="version" value="${gengXinInstance?.version}" />
					<g:textField name="xingMing" value="${dangQianYongHu?.xingMing}" placeholder="姓名"/>
					<g:select name="xingBie" from="${dangQianYongHu.constraints.xingBie.inList}" value="${dangQianYongHu?.xingBie}" valueMessagePrefix="yongHu.xingBie" noSelection="['': '']" placeholder="性别"/>
					<g:textField name="suoZai" value="${dangQianYongHu?.suoZai}" placeholder="所在"/>
					<g:textField name="shengRi" value="${dangQianYongHu?.shengRi}" placeholder="生日"/>
					<g:field type="email" name="youXiang" value="${dangQianYongHu?.youXiang}" placeholder="邮箱"/>
					<g:textField name="shouJi" value="${dangQianYongHu?.shouJi}" placeholder="手机"/>	
					<g:textField name="jianJie" value="${dangQianYongHu?.jianJie}" placeholder="简介"/>
	
					<g:submitButton name="xiuGaiXX" value="修改" class="submitBtn btn-default"/>
				</g:formRemote>
			
				<div class="touXiangKongJian" style="float:left;width:180px;">
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
						<g:hiddenField name="uid" value="${ session.uid }"/>
						<g:submitButton id="kaiShiShangChuan" name="shangChuan" value="开始上传" class="tuPianShangChuan btn-default"/>
					</g:uploadForm>
				</div>
			</div>
		</div>
		<script type="text/javascript">
			responseToHover(".hoverGaiXinXi", "#hoverGaiXinXi");
		</script>
	</g:if>
	<g:else>
		<%-- 用户登录 --%>
		<div class="hiddenBox hoverDengLu" id="hoverDengLu">
			<div class="innerWrapper">
				<g:formRemote name="yongHuDengLu" url="[controller:'x520', action:'yongHuDengLu']" update="[success:'dengLuTiShi', failure:'dengLuTiShi']" onSuccess="window.location.reload();">
					<h3>
						(^﹃^ )<span class="separator">/</span><span id="dengLuTiShi" class="message-content">账号、密码</span>
					</h3>
					<g:textField name="zhangHao" required="" value="" placeholder="账号"/>
					<g:passwordField name="miMa" required="" value="" placeholder="密码"/>
					<g:submitButton name="dengLu" value="登录" class="submitBtn btn-default"/>
				</g:formRemote>
			</div>
		</div>
		<script type="text/javascript">
			responseToHover(".hoverDengLu", "#hoverDengLu");
		</script>
		
		<%-- 用户注册 --%>
		<div class="hiddenBox hoverZhuCe" id="hoverZhuCe">
			<div class="innerWrapper">
				<g:formRemote name="yongHuZhuCe" url="[controller:'x520', action:'yongHuZhuCe']"  update="[success:'zhuCeTiShi', failure:'zhuCeTiShi']">
					<h3>
						(^﹃^ )<span class="separator">/</span><span id="zhuCeTiShi" class="message-content">账号、密码、确认</span>
					</h3>
					<g:textField name="zhangHao" required="" value="" placeholder="账号"/>
					<g:passwordField name="miMa" required="" value="" placeholder="密码"/>
					<g:passwordField name="queRenMiMa" required="" value="" placeholder="确认"/>
					<g:submitButton name="zhuCe" value="注册" class="submitBtn btn-default"/>
				</g:formRemote>
			</div>
		</div>
		<script type="text/javascript">
			responseToHover(".hoverZhuCe", "#hoverZhuCe");
		</script>
	</g:else>
</header>