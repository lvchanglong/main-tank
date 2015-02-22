<div id="fanKui-index" class="index">
	<ul>
			<li style="display:none;">
				<strong class="yongHu">
					匿名
				</strong>
				<span class="separator">/</span>
				<span class="shiJian">
					yyyy-MM-dd HH:mm:ss
				</span>
				<p class="neiRong">内容</p>
			</li>
		<g:each in="${fanKuiInstanceList}" status="i" var="fanKuiInstance">
			<li>
				<strong class="yongHu">
					${fanKuiInstance.getYongHuAsString()}
				</strong>
				<span class="separator">/</span>
				<span class="shiJian">
					<g:formatDate date="${fanKuiInstance.dateCreated}" format="yyyy-MM-dd HH:mm:ss" />
				</span>
				<p class="neiRong">${fieldValue(bean: fanKuiInstance, field: "neiRong")}</p>
			</li>
		</g:each>
	</ul>
	
	<div class="pagination">
		<g:paginate total="${fanKuiInstanceCount ?: 0}" />
	</div>
	
	<script type="text/javascript">
		remotePagination(".index");
	</script>
</div>
