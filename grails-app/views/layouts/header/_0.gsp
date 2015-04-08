<%@ page import="main.tank.YongHu" %>
<%@ page import="main.tank.ChangLiang" %>

<g:set var="dangQianYongHu" value="${ YongHu.get(session.uid) }" />

<header id="main-header" class="clearfix minWidth">
	
	<div class="daoHang clearfix">
		<g:link uri="/" elementId="main-header-logo">
			<asset:image src="WangLuo/Logo/logo.png" alt="主坦克"/>
		</g:link>
		
		<div id="main-header-menu">
			<a href="javascript:void(0);" onclick="hideAll('.hiddenBox');">
				<i class="fa fa-chevron-up"></i>
			</a>
			<a href="javascript:void(0);" onclick="jQuery('#main-header-toggle').toggle();">
				<i class="fa fa-list"></i>
			</a>
		</div>
		
		<ol id="main-header-toggle">
			<li>
				<a href="javascript:void(0);" onclick="clickToHover('.hiddenBox', '#hoverLianXiZhanZhang')"><i class="fa fa-camera"></i>联系站长</a>
			</li>
			
			<g:if test="${ dangQianYongHu }">
				<li>
					<a href="javascript:void(0);" onclick="clickToHover('.hiddenBox', '#hoverGaiMiMa')"><i class="fa fa-key"></i>${ dangQianYongHu.zhangHao }</a>
				</li>
				<li>
					<a href="javascript:void(0);" onclick="clickToHover('.hiddenBox', '#hoverGaiXinXi')"><i class="fa fa-user"></i>${ dangQianYongHu.xingMing }</a>
				</li>
				<li>
					<g:link controller="x360" action="woDeShiJie" id="${ session.uid }"><i class="fa fa-globe"></i>我的世界</g:link>
				</li>
				<li>
					<g:link controller="x360" action="geRenGuanLi" id="${ session.uid }"><i class="fa fa-cog"></i>个人管理</g:link>
				</li>
				<li>
					<g:remoteLink controller="x520" action="yongHuZhuXiao" onSuccess="window.location.reload()"><i class="fa fa-sign-out"></i>退出登录</g:remoteLink>
				</li>
			</g:if>
			<g:else>
				<li>
					<a href="javascript:void(0);" onclick="clickToHover('.hiddenBox', '#hoverDengLu')"><i class="fa fa-sign-in"></i>用户登录</a>
				</li>
				<li>
					<a href="javascript:void(0);" onclick="clickToHover('.hiddenBox', '#hoverZhuCe')"><i class="fa fa-user-plus"></i>用户注册</a>
				</li>
			</g:else>
		</ol>
	</div>
	
	<%-- 联系站长 --%>
	<div class="hiddenBox" id="hoverLianXiZhanZhang">
		<div class="innerWrapper clearfix">
			<asset:image src="ZhanZhang/个人微信.png" alt="微信个人号" title="微信个人号" style="width:100%;"/>
			
			<div style="float:left;width:47%;text-align:center;color:#2C3E50;">
				<asset:image src="WangLuo/SuCai/公众原版.jpg" alt="微信公众号" title="微信公众号" style="width:100%;"/>
				<h4>公众号</h4><span style="color:lightgray;">微信</span>
			</div>
			
			<div style="float:right;width:47%;text-align:center;color:#2C3E50;">
				<asset:image src="ZhanZhang/88.png" alt="支付宝收款码" title="支付宝收款码" style="width:100%;"/>
				<h4>(^﹃^ )</h4><span style="color:lightgray;">支付宝</span>
			</div>
		</div>
	</div>
	
	<g:if test="${ dangQianYongHu }">
		<%-- 修改密码 --%>
		<div class="hiddenBox" id="hoverGaiMiMa">
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
		
		<%-- 修改信息 --%>
		<div class="hiddenBox" id="hoverGaiXinXi">
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
	</g:if>
	<g:else>
		<%-- 用户登录 --%>
		<div class="hiddenBox" id="hoverDengLu">
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
		
		<%-- 用户注册 --%>
		<div class="hiddenBox" id="hoverZhuCe">
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
	</g:else>
</header>