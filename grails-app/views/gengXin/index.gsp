<div id="gengXin-index" class="index">
	<ul>
		<g:each in="${gengXinInstanceList}" status="i" var="gengXinInstance">
			<li>
				<strong class="yongHu">
					吕常龙
				</strong>
				<span class="separator">/</span>
				<span class="shiJian">
					<g:formatDate date="${gengXinInstance.dateCreated}" format="yyyy-MM-dd HH:mm:ss" />
				</span>
				<div class="neiRong">${fieldValue(bean: gengXinInstance, field: "neiRong")}</div>
			</li>
		</g:each>
	</ul>
	
	<div class="pagination">
		<g:paginate total="${gengXinInstanceCount ?: 0}" />
	</div>
	
	<script type="text/javascript">
		remotePagination(".index");
	</script>
</div>

