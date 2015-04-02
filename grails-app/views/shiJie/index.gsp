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
				<div class="kouLing">口令</div>
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
				<div class="kouLing">
					<g:link controller="x360" action="kaiFangKongJian" id="${ shiJieInstance.kouLing }" target="_blank">${fieldValue(bean: shiJieInstance, field: "kouLing")}</g:link>
				</div>
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