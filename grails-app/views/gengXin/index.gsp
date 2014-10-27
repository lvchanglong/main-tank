<div id="gengXin-index" class="index">
	<ul>
		<g:each in="${gengXinInstanceList}" status="i" var="gengXinInstance">
			<li>
				<g:formatDate date="${gengXinInstance.dateCreated}" format="yyyy-MM-dd HH:mm:ss" />
				<span class="separator">/</span>
				${fieldValue(bean: gengXinInstance, field: "neiRong")}
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

