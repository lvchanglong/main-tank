<div id="wenZhang-index" class="index">
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
				<span class="guanJianCi">
					关键词
				</span>
				<p class="biaoTi">标题</p>
			</li>
		<g:each in="${wenZhangInstanceList}" status="i" var="wenZhangInstance">
			<li>
				<strong class="yongHu">
					${fieldValue(bean: wenZhangInstance, field: "yongHu")}
				</strong>
				<span class="separator">/</span>
				<span class="shiJian">
					<g:formatDate date="${wenZhangInstance.dateCreated}" format="yyyy-MM-dd HH:mm:ss" />
				</span>
				<span class="separator">/</span>
				<span class="guanJianCi">
					${wenZhangInstance.getGuanJianCiAsString()}
				</span>
				<p class="biaoTi">
					<g:link controller="WenZhang" action="show" id="${ wenZhangInstance.id }" target="_blank">
						${fieldValue(bean: wenZhangInstance, field: "biaoTi")}
					</g:link>
				</p>
			</li>
		</g:each>
	</ul>
	
	<div class="pagination">
		<g:paginate total="${wenZhangInstanceCount ?: 0}" params="[id:yongHuInstance?.id]"/>
	</div>
	
	<script type="text/javascript">
		remotePagination(".index");
	</script>
</div>