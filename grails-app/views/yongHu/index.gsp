<div id="yongHu-index" class="index">
	<ul>
		<g:each in="${yongHuInstanceList}" status="i" var="yongHuInstance">
			<li>
				<div class="content borderBox">
					<h3>
						<g:link controller="x360" action="geRenGuanLi" id="${ yongHuInstance.id }">${ yongHuInstance.zhangHao }</g:link>
						<span class="separator">/</span><span class="fuBiaoTi">${ yongHuInstance.xingMing }</span>
					</h3>
	
					<p>
						${fieldValue(bean: yongHuInstance, field: "shengRi")}
						<span class="separator">/</span>
						${fieldValue(bean: yongHuInstance, field: "xingBie")}
						<span class="separator">/</span>
						${fieldValue(bean: yongHuInstance, field: "suoZai")}
						<span class="separator">/</span>
						${fieldValue(bean: yongHuInstance, field: "youXiang")}
						<span class="separator">/</span>
						${fieldValue(bean: yongHuInstance, field: "shouJi")}
						<br />
						${fieldValue(bean: yongHuInstance, field: "jianJie")}
					</p>
				</div>
				
				<div class="touXiangQv borderBox">
					<asset:image src="${ yongHuInstance.touXiang }" class="touXiang" alt="头像"/>

					<div class="youJianTou">
						>
					</div>
				</div>
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

