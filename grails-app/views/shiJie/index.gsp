<div id="shiJie-index" class="index">
	<ul>
			<li style="display:none;">
				<strong class="yongHu">
					匿名
				</strong>
				<span class="separator">/</span>
				<span class="shiJian">
					yyyy-MM-dd HH:mm:ss
				</span>
				<span class="separator">/</span>
				<span class="biaoTi">
					标题
				</span>
				<p class="kouLing">口令</p>
			</li>
		<g:each in="${shiJieInstanceList}" status="i" var="shiJieInstance">
			<li>
				<strong class="yongHu">
					${fieldValue(bean: shiJieInstance, field: "yongHu")}
				</strong>
				<span class="separator">/</span>
				<span class="shiJian">
					<g:formatDate date="${shiJieInstance.dateCreated}" format="yyyy-MM-dd HH:mm:ss" />
				</span>
				<span class="separator">/</span>
				<span class="biaoTi">
					${fieldValue(bean: shiJieInstance, field: "biaoTi")}
				</span>
				<p class="kouLing">${fieldValue(bean: shiJieInstance, field: "kouLing")}</p>
			</li>
		</g:each>
	</ul>
	
	<div class="pagination">
		<g:paginate total="${shiJieInstanceCount ?: 0}" params="[id:yongHuInstance?.id]"/>
	</div>
	
	<script type="text/javascript">
		remotePagination(".index");
	</script>
</div>