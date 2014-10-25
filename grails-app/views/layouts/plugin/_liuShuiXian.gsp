<asset:stylesheet src="SanFang/LiuShuiXian/stylesheets/carousel.css"/>
<asset:javascript src="SanFang/LiuShuiXian/javascripts/jquery.carouFredSel-6.1.0-packed.js"/>
		
<div id="liuShuiXian">
	<div id="carousel">
		<g:each in="${instanceList}" status="i" var="instance">
			<div class="imageWrapper borderBox">
				<a href="${ instance.url }">
					<asset:image src="SanFang/LiuShuiXian/images/${ instance.fileName }" alt="" width="100%" height="100%"/>
				</a>
			</div>
		</g:each>
	</div>
</div>

<script type="text/javascript">
	jQuery(function() {
		var _center = {
			width: 600,
			height: 400,
			marginLeft: 0,
			marginTop: 0,
			marginRight: 0
		};
		var _left = {
			width: 300,
			height: 200,
			marginLeft: 0,
			marginTop: 150,
			marginRight: -150
		};
		var _right = {
			width: 300,
			height: 200,
			marginLeft: -150,
			marginTop: 150,
			marginRight: 0
		};
		var _outLeft = {
			width: 150,
			height: 100,
			marginLeft: 150,
			marginTop: 200,
			marginRight: -200
		};
		var _outRight = {
			width: 150,
			height: 100,
			marginLeft: -200,
			marginTop: 200,
			marginRight: 50
		};
		jQuery('#carousel').carouFredSel({
			width: 900,
			height: 400,
			align: false,
			items: {
				visible: 3,
				width: 100
			},
			scroll: {
				pauseOnHover: true,
				items: 1,
				duration: 400,
				onBefore: function( data ) {
					data.items.old.eq( 0 ).animate(_outLeft);
					data.items.visible.eq( 0 ).animate(_left);
					data.items.visible.eq( 1 ).animate(_center);
					data.items.visible.eq( 2 ).animate(_right).css({ zIndex: 1 });
					data.items.visible.eq( 2 ).next().css(_outRight).css({ zIndex: 0 });

					setTimeout(function() {
						data.items.old.eq( 0 ).css({ zIndex: 1 });
						data.items.visible.eq( 0 ).css({ zIndex: 2 });
						data.items.visible.eq( 1 ).css({ zIndex: 3 });
						data.items.visible.eq( 2 ).css({ zIndex: 2 });
					}, 200);
				}
			}
		});
		jQuery('#carousel').children().eq( 0 ).css(_left).css({ zIndex: 2 });
		jQuery('#carousel').children().eq( 1 ).css(_center).css({ zIndex: 3 });
		jQuery('#carousel').children().eq( 2 ).css(_right).css({ zIndex: 2 });
		jQuery('#carousel').children().eq( 3 ).css(_outRight).css({ zIndex: 1 });
	});
</script>