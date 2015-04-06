<div id="yongHu-index" class="index relative;">
	<ul>
		<g:each in="${yongHuInstanceList}" status="i" var="yongHuInstance">
			<li class="clearfix">
				<h3>
					<g:link controller="x360" action="geRenGuanLi" id="${ yongHuInstance.id }">${ yongHuInstance.zhangHao }</g:link>
					<span class="separator">/</span>${ yongHuInstance.xingMing }
				</h3>

				<p>
					${fieldValue(bean: yongHuInstance, field: "shengRi")}
					<span class="separator"></span>
					${fieldValue(bean: yongHuInstance, field: "xingBie")}
					<span class="separator"></span>
					${fieldValue(bean: yongHuInstance, field: "suoZai")}
					<span class="separator"></span>
					${fieldValue(bean: yongHuInstance, field: "youXiang")}
					<span class="separator"></span>
					${fieldValue(bean: yongHuInstance, field: "shouJi")}
					<br />
					${fieldValue(bean: yongHuInstance, field: "jianJie")}
				</p>
				
				<asset:image src="${ yongHuInstance.touXiang }" style="float:left;height: 100%;padding-bottom:5px;" alt="头像"/>
				
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

