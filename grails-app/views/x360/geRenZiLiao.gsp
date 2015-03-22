<%@ page import="main.tank.YongHu" %>

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>主坦克-个人资料</title>
	</head>
	<body>
		<div id="yonghu-ziliao-1" class="borderBox defaultPage page">
			<h1>个人资料</h1>
			
			<div class="wrapper borderBox">
				<div style="position:relative;margin-top:70px;">
				
					<asset:image src="WangLuo/SuCai/${ yongHuInstance.xingBie }.png" alt="性别"/>
				
					<div class="shuoMing">
						<div class="xingMing">
							${ yongHuInstance.xingMing }
						</div>
						<div style="padding-left:3px;">
							${ yongHuInstance.zhangHao }
						</div>
					</div>
					
					<ul class="clearfix borderBox">
						<li>
							生日<span class="separator">/</span>${ yongHuInstance.shengRi }
							<%--
							${ yongHuInstance.xingBie }
							--%>
						</li>
						<li>
							所在<span class="separator">/</span>${ yongHuInstance.suoZai }
						</li>
						<li>
							手机<span class="separator">/</span>${ yongHuInstance.shouJi }
						</li>
						<li>
							邮箱<span class="separator">/</span>${ yongHuInstance.youXiang }
						</li>
						<li>
							简介<span class="separator">/</span>${ yongHuInstance.jianJie }
						</li>
					</ul>
					
				</div>
			</div>
		</div>
	</body>
</html>