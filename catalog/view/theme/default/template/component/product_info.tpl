<div class="product-gutter" id="product-<?=$product_id?>"> <?php /* product option in product component :: add product id to div  */ ?>
	<div class="product-block <?= $out_of_stock; ?>">
		<div class="product-image-block relative image-zoom-hover">
			<?php if($sticker && $sticker['name']){ ?>
			<a 
			href="<?= $href; ?>" 
			title="<?= $name; ?>" 
			class="sticker absolute" 
			style="color: <?= $sticker['color']; ?>; background-color: <?= $sticker['background-color']; ?>">
				<?= $sticker['name']; ?>
			</a>
			<?php } ?>
			<?php if($show_special_sticker){ ?>
			<a 
			href="<?= $href; ?>" 
			title="<?= $name; ?>" 
			class="special-sticker absolute" 
			style="top:<?= $sticker ? '30px' : '0px' ?>; color: #fff; background-color: red;">
				<?= $text_sale; ?>
			</a>
			<?php } ?>
			<a 
				href="<?= $href; ?>" 
				title="<?= $name; ?>" 
				class="product-image image-container relative" >
				<img 
					src="<?= $thumb; ?>" 
					alt="<?= $name; ?>" 
					title="<?= $name; ?>"
					class="img-responsive img1" />
				<?php if($thumb2 && $hover_image_change) { ?>
					<img 
						src="<?= $thumb2; ?>" 
						alt="<?= $name; ?>" 
						title="<?= $name; ?>"
						class="img-responsive img2" style="display: none"/>
				<?php } ?>
			</a>
			<div class="btn-group product-button">

				<a href="<?= $href; ?>"><i class="fa fa-search" aria-hidden="true"></i></a>
			</div>
		</div>
		<div class="product-texts">
			<div class="product-name">
				<a href="<?= $href; ?>"><?= $name; ?></a>
			</div>
			
			<div class="product-description">
				<a href="<?= $href; ?>"><?=$description;?></a>
			</div>
			<div class="product-details product-price-<?=$product_id?>">
				<?php if ($price && !$enquiry) { ?>
					<div class="price">
						<?php if (!$special) { ?>
							<span class="price-new"><?= $price; ?></span>
						<?php } else { ?>
							<span class="price-old"><?= $price; ?></span>
							<span class="price-new sale"><?= $special; ?></span>
						<?php } ?>
						<?php if ($tax) { ?>
							<span class="price-tax"><?= $text_tax; ?> <?= $tax; ?></span>
						<?php } ?>
					</div>
					<?php } else { ?>
						<i><b style="color: black">Price Unavailable</b></i>
				<?php } ?>
			</div>
			<div class="btn-cont">
				<a href="<?php echo $href; ?>" class="btn btn-primary">View Details</a>
			</div>
		</div>
	</div>
</div>




