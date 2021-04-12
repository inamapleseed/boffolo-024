<div class="article-content">
	<?php if ($thumb) { ?>
		<div>
			<a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" class="colorbox"><img class="img-responsive" src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" id="image-article" /></a>
		</div>
	<?php } ?>

	<?php if ($article_videos) { ?>
		<div class="content blog-videos">
			<?php foreach ($article_videos as $video) { ?>
				<br>
				<div>
					<?php echo $video['video']; ?>
				</div>
			<?php } ?>

		</div>
	<?php } ?>

	<h3 class="this-h3"></h3>
<script type="text/javascript">
	let h2 = $('h2').text();
	$('.this-h3').append(h2);
	if ($('body').hasClass('news-article')) {
		$('.this-h2').show();
		$('.that-h2').hide();
		$('.this-h2').append('News');
	}
</script>
	<div class="deets">
		<div class="art-meta">
			<?php if ($custom1) { ?>
				<div class="article-custom-1"><?php echo $custom1; ?>&nbsp;-&nbsp;</div>
			<?php } ?>
			<span><?php echo $date_added; ?></span>
		</div>

		<?php if ($custom2) { ?>
			<div class="article-custom-2"><?php echo $custom2; ?></div>
		<?php } ?>
		<?php if ($custom3) { ?>
			<div class="article-custom-3"><?php echo $custom3; ?></div>
		<?php } ?>
		<?php if ($custom4) { ?>
			<div class="article-custom-4"><?php echo $custom4; ?></div>
		<?php } ?>
		
		<?php echo $description; ?>
	</div>

	<div class="pd-t30 pd-b30 flex flex-vcenter">
		<div class="pd-r15"><?= $text_share ?></div>
		<div><?= $share_html ?></div>
	</div>

	<?php if ($gallery_images) { ?>
		<?php if ($gallery_type == 1) { ?>
			<div class="content blog-gallery">
				<?php foreach ($gallery_images as $gallery) { ?>
					<a class="colorbox" href="<?php echo $gallery['popup']; ?>" title="<?php echo $gallery['text']; ?>">
						<img src="<?php echo $gallery['thumb']; ?>" alt="<?php echo $gallery['text']; ?>" />
					</a>
				<?php } ?>
			</div>
		<?php } else { ?>
<script>
	jQuery(document).ready(function ($) {

            var _SlideshowTransitions = [
                {$Duration: 1200, $During: { $Left: [0.3, 0.7] }, $FlyDirection: 1, $Easing: { $Left: $JssorEasing$.$EaseInCubic, $Opacity: $JssorEasing$.$EaseLinear }, $ScaleHorizontal: 0.3, $Opacity: 2 }
                , { $Duration: 1200, $SlideOut: true, $FlyDirection: 2, $Easing: { $Left: $JssorEasing$.$EaseInCubic, $Opacity: $JssorEasing$.$EaseLinear }, $ScaleHorizontal: 0.3, $Opacity: 2 }
                , { $Duration: 1200, $During: { $Left: [0.3, 0.7] }, $FlyDirection: 2, $Easing: { $Left: $JssorEasing$.$EaseInCubic, $Opacity: $JssorEasing$.$EaseLinear }, $ScaleHorizontal: 0.3, $Opacity: 2 }
                , { $Duration: 1200, $SlideOut: true, $FlyDirection: 1, $Easing: { $Left: $JssorEasing$.$EaseInCubic, $Opacity: $JssorEasing$.$EaseLinear }, $ScaleHorizontal: 0.3, $Opacity: 2 }
                , { $Duration: 1200, $During: { $Top: [0.3, 0.7] }, $FlyDirection: 4, $Easing: { $Top: $JssorEasing$.$EaseInCubic, $Opacity: $JssorEasing$.$EaseLinear }, $ScaleVertical: 0.3, $Opacity: 2 }
                , { $Duration: 1200, $SlideOut: true, $FlyDirection: 8, $Easing: { $Top: $JssorEasing$.$EaseInCubic, $Opacity: $JssorEasing$.$EaseLinear }, $ScaleVertical: 0.3, $Opacity: 2 }
                , { $Duration: 1200, $During: { $Top: [0.3, 0.7] }, $FlyDirection: 8, $Easing: { $Top: $JssorEasing$.$EaseInCubic, $Opacity: $JssorEasing$.$EaseLinear }, $ScaleVertical: 0.3, $Opacity: 2 }
                , { $Duration: 1200, $SlideOut: true, $FlyDirection: 4, $Easing: { $Top: $JssorEasing$.$EaseInCubic, $Opacity: $JssorEasing$.$EaseLinear }, $ScaleVertical: 0.3, $Opacity: 2 }
                , { $Duration: 1200, $Cols: 2, $During: { $Left: [0.3, 0.7] }, $FlyDirection: 1, $ChessMode: { $Column: 3 }, $Easing: { $Left: $JssorEasing$.$EaseInCubic, $Opacity: $JssorEasing$.$EaseLinear }, $ScaleHorizontal: 0.3, $Opacity: 2 }
                , { $Duration: 1200, $Cols: 2, $SlideOut: true, $FlyDirection: 1, $ChessMode: { $Column: 3 }, $Easing: { $Left: $JssorEasing$.$EaseInCubic, $Opacity: $JssorEasing$.$EaseLinear }, $ScaleHorizontal: 0.3, $Opacity: 2 }
                , { $Duration: 1200, $Rows: 2, $During: { $Top: [0.3, 0.7] }, $FlyDirection: 4, $ChessMode: { $Row: 12 }, $Easing: { $Top: $JssorEasing$.$EaseInCubic, $Opacity: $JssorEasing$.$EaseLinear }, $ScaleVertical: 0.3, $Opacity: 2 }
                , { $Duration: 1200, $Rows: 2, $SlideOut: true, $FlyDirection: 4, $ChessMode: { $Row: 12 }, $Easing: { $Top: $JssorEasing$.$EaseInCubic, $Opacity: $JssorEasing$.$EaseLinear }, $ScaleVertical: 0.3, $Opacity: 2 }
                , { $Duration: 1200, $Cols: 2, $During: { $Top: [0.3, 0.7] }, $FlyDirection: 4, $ChessMode: { $Column: 12 }, $Easing: { $Top: $JssorEasing$.$EaseInCubic, $Opacity: $JssorEasing$.$EaseLinear }, $ScaleVertical: 0.3, $Opacity: 2 }
                , { $Duration: 1200, $Cols: 2, $SlideOut: true, $FlyDirection: 8, $ChessMode: { $Column: 12 }, $Easing: { $Top: $JssorEasing$.$EaseInCubic, $Opacity: $JssorEasing$.$EaseLinear }, $ScaleVertical: 0.3, $Opacity: 2 }
                , { $Duration: 1200, $Rows: 2, $During: { $Left: [0.3, 0.7] }, $FlyDirection: 1, $ChessMode: { $Row: 3 }, $Easing: { $Left: $JssorEasing$.$EaseInCubic, $Opacity: $JssorEasing$.$EaseLinear }, $ScaleHorizontal: 0.3, $Opacity: 2 }
                , { $Duration: 1200, $Rows: 2, $SlideOut: true, $FlyDirection: 2, $ChessMode: { $Row: 3 }, $Easing: { $Left: $JssorEasing$.$EaseInCubic, $Opacity: $JssorEasing$.$EaseLinear }, $ScaleHorizontal: 0.3, $Opacity: 2 }

                , { $Duration: 1200, $Cols: 2, $Rows: 2, $During: { $Left: [0.3, 0.7], $Top: [0.3, 0.7] }, $FlyDirection: 5, $ChessMode: { $Column: 3, $Row: 12 }, $Easing: { $Left: $JssorEasing$.$EaseInCubic, $Top: $JssorEasing$.$EaseInCubic, $Opacity: $JssorEasing$.$EaseLinear }, $ScaleHorizontal: 0.3, $ScaleVertical: 0.3, $Opacity: 2 }
                , { $Duration: 1200, $Cols: 2, $Rows: 2, $During: { $Left: [0.3, 0.7], $Top: [0.3, 0.7] }, $SlideOut: true, $FlyDirection: 5, $ChessMode: { $Column: 3, $Row: 12 }, $Easing: { $Left: $JssorEasing$.$EaseInCubic, $Top: $JssorEasing$.$EaseInCubic, $Opacity: $JssorEasing$.$EaseLinear }, $ScaleHorizontal: 0.3, $ScaleVertical: 0.3, $Opacity: 2 }

                , { $Duration: 1200, $Delay: 20, $Clip: 3, $Assembly: 260, $Easing: { $Clip: $JssorEasing$.$EaseInCubic, $Opacity: $JssorEasing$.$EaseLinear }, $Opacity: 2 }
                , { $Duration: 1200, $Delay: 20, $Clip: 3, $SlideOut: true, $Assembly: 260, $Easing: { $Clip: $JssorEasing$.$EaseOutCubic, $Opacity: $JssorEasing$.$EaseLinear }, $Opacity: 2 }
                , { $Duration: 1200, $Delay: 20, $Clip: 12, $Assembly: 260, $Easing: { $Clip: $JssorEasing$.$EaseInCubic, $Opacity: $JssorEasing$.$EaseLinear }, $Opacity: 2 }
                , { $Duration: 1200, $Delay: 20, $Clip: 12, $SlideOut: true, $Assembly: 260, $Easing: { $Clip: $JssorEasing$.$EaseOutCubic, $Opacity: $JssorEasing$.$EaseLinear }, $Opacity: 2 }
                ];

            var options = {
                $AutoPlay: true,             
                $AutoPlayInterval: 3500,                    
                $PauseOnHover: 1,      
                $DragOrientation: 3,                              
                $ArrowKeyNavigation: true,   			          
                $SlideDuration: 800,                                

                $SlideshowOptions: {                              
                    $Class: $JssorSlideshowRunner$,                
                    $Transitions: _SlideshowTransitions,            
                    $TransitionsOrder: 1,                           
                    $ShowLink: true                                    
                },

                $ArrowNavigatorOptions: { 
                    $Class: $JssorArrowNavigator$,  
                    $ChanceToShow: 1  
                },

                $ThumbnailNavigatorOptions: {                      
                    $Class: $JssorThumbnailNavigator$,             
                    $ChanceToShow: 2,                               
                    $ActionMode: 1,                                
                    $SpacingX: 8,                                   
                    $DisplayPieces: 10,                            
                    $ParkingPosition: 360  
                }
            };

            var jssor_slider1 = new $JssorSlider$("blog-gallery-slider", options);
            function ScaleSlider() {
                var parentWidth = jssor_slider1.$Elmt.parentNode.clientWidth;
                if (parentWidth)
                    jssor_slider1.$SetScaleWidth(Math.max(Math.min(parentWidth, 1920), 300));
                else
                    window.setTimeout(ScaleSlider, 30);
            }

            ScaleSlider();

            if (!navigator.userAgent.match(/(iPhone|iPod|iPad|BlackBerry|IEMobile)/)) {
                $(window).bind('resize', ScaleSlider);
            }
        });
</script>
			<div id="blog-gallery-slider" style="height: <?php echo $gallery_height; ?>px; width:<?php echo $gallery_width; ?>px;">
				<div u="loading">
					<div class="loadin-in-1"></div>
					<div class="loadin-in-2"></div>
				</div>
				<div u="slides" style="height: <?php echo $gallery_height - 100; ?>px; width:<?php echo $gallery_width; ?>px;">
					<?php foreach ($gallery_images as $gallery) { ?>
						<div>
							<a class="colorbox" href="<?php echo $gallery['popup']; ?>" title="<?php echo $gallery['text']; ?>"><img u="image" src="<?php echo $gallery['popup']; ?>" /></a>
							<img u="thumb" src="<?php echo $gallery['thumb']; ?>" />
						</div>
					<?php } ?>
				</div>
				<span u="arrowleft" class="jssora05l"></span>
				<span u="arrowright" class="jssora05r"></span>
				<div u="thumbnavigator" class="jssort01">
					<div u="slides" style="cursor: move;">
						<div u="prototype" class="p" style="position: absolute; width: 72px; height: 72px; top: 0; left: 0;">
							<div class=w><thumbnailtemplate style=" width: 100%; height: 100%; border: none;position:absolute; top: 0; left: 0;"></thumbnailtemplate></div>
							<div class=c>
							</div>
						</div>
					</div>
				</div>
			</div>
		<?php } ?>
	<?php } ?>

	<?php if ($ntags && count($ntags) >= 1) { ?>
		<div class="article-tags">
			<?php echo $text_tags; ?> 
			<?php foreach($ntags as $ntag) { ?>
				<a class="ntag" href="<?php echo $ntag['href']; ?>"><?php echo $ntag['ntag']; ?></a>
			<?php } ?>
		</div>
	<?php } ?>
</div>
<?php if ($products) { ?>
<h3><?php echo $news_prelated; ?></h3>
<div class="row product-layout">
  <?php foreach ($products as $product) { ?>
  <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
    <div class="product-thumb transition">
      <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
      <div class="caption">
        <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
        <p><?php echo $product['description']; ?></p>

        <?php if ($product['price']) { ?>
        <p class="price">
          <?php if (!$product['special']) { ?>
          <?php echo $product['price']; ?>
          <?php } else { ?>
          <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
          <?php } ?>
          <?php if ($product['tax']) { ?>
          <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
          <?php } ?>
        </p>
        <?php } ?>
      </div>
      <div class="button-group">
        <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
        <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
        <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
      </div>
    </div>
  </div>
  <?php } ?>
</div>
<?php } ?>
<?php if ($article) { ?>
<h2><?php echo $news_related; ?></h2>
  <div class="content blog-content">
	<div class="bnews-list<?php if (count($article)>1) { ?> bnews-list-2<?php } ?>">
		<?php foreach ($article as $articles) { ?>
			<div class="artblock<?php if (count($article)>1) { ?> artblock-2<?php } ?>">
				<?php if ($articles['name']) { ?>
					<div class="name"><a href="<?php echo $articles['href']; ?>"><?php echo $articles['name']; ?></a></div>
				<?php } ?>
				<div class="article-meta">
					<?php if ($articles['date_added']) { ?>
						<?php echo $articles['date_added']; ?>
					<?php } ?>
				</div>
				<?php if ($articles['thumb']) { ?>
					<a href="<?php echo $articles['href']; ?>"><img class="article-image" align="left" src="<?php echo $articles['thumb']; ?>" title="<?php echo $articles['name']; ?>" alt="<?php echo $articles['name']; ?>" /></a>
				<?php } ?>
				<?php if ($articles['custom1']) { ?>
					<div class="custom1"><?php echo $articles['custom1']; ?>&nbsp;-&nbsp;</div>
				<?php } ?>
				<?php if ($articles['custom2']) { ?>
					<div class="custom2"><?php echo $articles['custom2']; ?></div>
				<?php } ?>
				<?php if ($articles['custom3']) { ?>
					<div class="custom3"><?php echo $articles['custom3']; ?></div>
				<?php } ?>
				<?php if ($articles['custom4']) { ?>
					<div class="custom4"><?php echo $articles['custom4']; ?></div>
				<?php } ?>
				<?php if ($articles['description']) { ?>
					<div class="description"><?php echo $articles['description']; ?></div>
				<?php } ?>
				<?php if ($articles['button']) { ?>
					<div class="blog-button"><a class="button" href="<?php echo $articles['href']; ?>"><?php echo $button_more; ?></a></div>
				<?php } ?>
			</div>
		<?php } ?>
	</div>
  </div>
<?php } ?>

<script type="text/javascript">
$('.colorbox').magnificPopup({ 
  type: 'image',
  gallery:{enabled:true},
  zoom: {
	enabled: true,
	duration: 300,
	opener: function(element) {
		return element.find('img');
	}
  }
});
</script>

<div class="them-button">
	<a class="this-btn" href="<?= $back; ?>" >Back</a>
</div>