<div id="yongHu-index" class="index relative;">
	<ul>
		<g:each in="${yongHuInstanceList}" status="i" var="yongHuInstance">
			<li class="clearfix">
				<h3>
					<g:link controller="x360" action="geRenGuanLi" id="${ yongHuInstance.id }">${ yongHuInstance.zhangHao }</g:link>
					<span class="separator">/</span>${ yongHuInstance.xingMing }
				</h3>

				<ul style="float:left;display:block;">
					<%--
					<li>
						${fieldValue(bean: yongHuInstance, field: "xingBie")}
					</li>
					--%>
					<li>
						<i class="fa fa-bed"></i>${fieldValue(bean: yongHuInstance, field: "suoZai")}
					</li>
					<li>
						<i class="fa fa-birthday-cake"></i>${fieldValue(bean: yongHuInstance, field: "shengRi")}
					</li>
					<li>
						<i class="fa fa-phone"></i>${fieldValue(bean: yongHuInstance, field: "shouJi")}
					</li>
					<li>
						<i class="fa fa-envelope-o"></i><a href="mailto:${ yongHuInstance.youXiang }" style="text-decoration:underline;">${ yongHuInstance.youXiang }</a>
					</li>
					<li>
						<i class="fa fa-book"></i>${fieldValue(bean: yongHuInstance, field: "jianJie")}
					</li>
				</ul>
				
				<asset:image src="${ yongHuInstance.touXiang }" style="float:right;height: 100%;padding-bottom:5px;" alt="头像"/>
				
				<hr style="clear:both;"/>
			</li>
		</g:each>
	</ul>
	
	<div class="pagination">
		<g:paginate total="${yongHuInstanceCount ?: 0}" />
	</div>
	
	<script type="text/javascript">
		remotePagination(".index");
	</script>
</div>

