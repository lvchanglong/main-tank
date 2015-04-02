<div id="shuoShuo-index" class="index">
	<ul>
			<li style="display:none;">
				<strong class="yongHu">
					匿名
				</strong>
				<span class="separator">/</span>
				<span class="shiJian">
					yyyy-MM-dd HH:mm:ss
				</span>
				<div class="neiRong">内容</div>
			</li>
		<g:each in="${shuoShuoInstanceList}" status="i" var="shuoShuoInstance">
			<li>
				<strong class="yongHu">
					${fieldValue(bean: shuoShuoInstance, field: "yongHu")}
				</strong>
				<span class="separator">/</span>
				<span class="shiJian">
					<g:formatDate date="${shuoShuoInstance.dateCreated}" format="yyyy-MM-dd HH:mm:ss" />
				</span>
				<div class="neiRong">${fieldValue(bean: shuoShuoInstance, field: "neiRong")}</div>
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