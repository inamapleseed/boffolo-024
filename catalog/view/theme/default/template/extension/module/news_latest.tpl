<div style="background: url('image/catalog/slicing/homepage/bg.jpg'); background-position: center; background-repeat: no-repeat; background-size: cover;">
	<div class="outer">
	  	<?php if (!$article && isset($text_search_no_results)) { ?>
	  		<h4><?php echo $text_search_no_results; ?></h4>
	  	<?php } ?>
	    <div id="news_latest" class="bnews-list owl-carousel">
			<?php foreach ($article as $articles) { ?>
				<div class="artblock">

					<?php if ($articles['thumb']) { ?>
						<div class="contain-image">
								<img class="article-image" align="left" src="<?php echo $articles['thumb']; ?>" title="<?php echo $articles['name']; ?>" alt="<?php echo $articles['name']; ?>" />
							<a href="<?php echo $articles['href']; ?>">
							</a>
						</div>
					<?php } ?>
					<div class="deets">
						<?php if ($articles['name']) { ?>
							<div class="name"><a href="<?php echo $articles['href']; ?>"><?php echo $articles['name']; ?></a></div>
						<?php } ?>

						<div class="art-meta">
							<?php if ($articles['custom1']) { ?>
								<div class="custom1"><?php echo $articles['custom1']; ?>&nbsp;-&nbsp;</div>
							<?php } ?>
							<?php if ($articles['date_added']) { ?>
								<div>
									<?php echo $articles['date_added']; ?>
								</div>
							<?php } ?>
						</div>

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
					</div>
				</div>
			<?php } ?>
	    </div>

		<h2 class="home" style="display: none;">Videos</h2>

	    <div class="video-container">
	    	<div class="contain-r" id="<?= $articles['article_id'];?>">

				<div class="r-inner">
					<?php if ($articles['video']): ?>
						<div class="home iframe-container" style="display: none;">
							<?php echo $articles['video']; ?>
						</div>
					<?php endif ?>

					<div class="texts">
						<a href="<?php echo $articles['href']; ?>">
						<h4><?php echo $articles['name'] ?></h4>
						<div class="description">
							<p><?php echo mb_strimwidth(html_entity_decode($articles['description']), 0, 250, '...'); ?></p>
						</div>
						</a>
					</div>
				</div>
	    	</div>

	    	<div class="contain-l">
		    	<?php foreach ($article as $vids): ?>

	    			<div class="l-inner">
						<?php if ($vids['video']): ?>
							<div class="home iframe-container" style="display: none;">
								<span class="overlay"></span>
								<?php echo $vids['video']; ?>
							</div>
						<?php endif ?>

						<div class="texts">
							<a href="<?php echo $vids['href']; ?>">
								<h4><?php echo $vids['name'] ?></h4>
								<div class="description">
									<p><?php echo mb_strimwidth(html_entity_decode($vids['description']), 0, 200, '...'); ?></p>
								</div>
				    		</a>
						</div>					
	    			</div>

		    	<?php endforeach ?>
	    	</div>

	    </div>

	</div>
</div>

<script type="text/javascript">
	if ($('body').hasClass('common-home')) {
		$('.home').show();
		$('#news_latest').hide();
	}

	if ($('body').hasClass('news-ncategory')) {
		$('.video-container').hide();
		$('#news_latest').show();
		$('.outer').parent().css("background", "none");
	}
</script>

<script type="text/javascript">
	let main_vid = $(".contain-r .iframe-container");

	$(".contain-l .iframe-container").on("click", function(){
		let html = $(this).html();
		let texts = $(this).parent().find(".texts").html();

		$(".contain-r .iframe-container").empty().append(html);
		$(".contain-r .texts").empty().append(texts);
		let autop = $(".contain-r iframe").attr("src")+'?autoplay=1&mute=1';
		$(".contain-r iframe").attr("src", autop);
	})
</script>