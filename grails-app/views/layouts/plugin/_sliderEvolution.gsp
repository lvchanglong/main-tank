<asset:javascript src="YinYong/SliderEvolution/jquery.slider.min.js"/>
<asset:stylesheet src="YinYong/SliderEvolution/jquery.slider.css"/>

<div id="sliderEvolution" class="slider">
	
	 <div>
		<asset:image src="YinYong/SliderEvolution/slide_1.jpg"/>
	 </div>
	  
	 <div>
	    <asset:image src="YinYong/SliderEvolution/slide_2.jpg"/>
	 </div>
	  
	 <div>
	    <asset:image src="YinYong/SliderEvolution/slide_3.jpg"/>
	 </div>
	  
	 <div>
	    <asset:image src="YinYong/SliderEvolution/slide_4.jpg"/>
	 </div>
	
</div>

<script type="text/javascript">
	jQuery("#sliderEvolution").slideshow({
	    width      : 900,
	  	height     : 325,
	  	transition : 'bar'
	});
</script>
