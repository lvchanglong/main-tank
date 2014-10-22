<asset:stylesheet src="SanFang/LiuShuiXian/carousel.css"/>
<asset:javascript src="SanFang/LiuShuiXian/jquery.carouFredSel-6.1.0-packed.js"/>
		
<div id="liuShuiGunDong">
    <div id="carousel">
    	
    	<g:each in="${fileNameList}" status="i" var="fileName">
			<div>
				<asset:image src="SanFang/LiuShuiXian/${ fileName }" width="255px" height="255px" alt=""/>
				<span>${ fileName }</span>
			</div>
		</g:each>
			<%--
			<div>
				<strong class="img" style="font-size:30px;font-weight:bold;">龙</strong>
				<span>${ fileName }</span>
			</div>
			--%>
	</div>
	<div id="pager"></div>
</div>

<script type="text/javascript">
	jQuery(function() {
		jQuery('#carousel').carouFredSel({
			width: '100%',
			items: {
				visible: 'odd+2'
			},
			scroll: {
				pauseOnHover: false,
				onBefore: function() {
					$(this).children().removeClass( 'hover' );
				}
			},
			auto: {
				items: 1,
				easing: 'linear',
				duration: 3000,
				timeoutDuration: 0
			},
			pagination: {
				container: '#pager',
				items: 1,
				duration: 0.5,
				queue: 'last',
				onAfter: function() {
					var cur = $(this).triggerHandler( 'currentVisible' ),
					mid = Math.floor( cur.length / 2 );
					cur.eq( mid ).addClass( 'hover' );
				}
			}
		});
	});
</script>