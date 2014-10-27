<div id="shuoShuo-index" class="index">
	<ul>
		<g:each in="${shuoShuoInstanceList}" status="i" var="shuoShuoInstance">
			<li>
				<strong class="yongHu">
					${fieldValue(bean: shuoShuoInstance, field: "yongHu")}
				</strong>
				<span class="separator">/</span>
				<span class="shiJian">
					<g:formatDate date="${shuoShuoInstance.dateCreated}" format="yyyy-MM-dd HH:mm:ss" />
				</span>
				
				<p class="neiRong">${fieldValue(bean: shuoShuoInstance, field: "neiRong")}</p>
			</li>
		</g:each>
	</ul>
	
	<div class="pagination">
		<g:paginate total="${shuoShuoInstanceCount ?: 0}" params="[id:yongHuInstance?.id]"/>
	</div>
	
	<script type="text/javascript">
		remotePagination(".index");
	</script>
</div>