<div class="custom-container" data-aos="fade-up">
	<div class="text-content">
		<?php foreach ($repeater as $con): ?>
			<div class="inner">
				<div class="img">
					<img src="image/<?=$con['image'];?>" alt="image">
				</div>
				<div>
					<h3><?=$con['title'];?></h3>
					<div><?= html_entity_decode($con['text']) ;?></div>
				</div>
			</div>
		<?php endforeach ?>
	</div>

	<div class="text-content-2" style="background-image: url('image/<?=$bgi;?>'); background-size: cover; background-attachment: fixed; background-position: top left; background-repeat: no-repeat;">
		<h3>
			<?= html_entity_decode($title2);?>
		</h3>
		<a href="<?=$url;?>" class="btn btn-default">Shop Now</a>
	</div>
</div>

<script type="text/javascript">
  function initSlick() {
    $('.text-content').slick({
      dots: false,
      infinite: true,
      speed: 500,
      arrows: false,
      pauseOnHover: false,
      autoplay: true,
      slidesToShow: 3,
      responsive: [
      {
        breakpoint: 1023,
        settings: {
          slidesToShow: 2
        }
      },{
        breakpoint: 767,
        settings: {
          slidesToShow: 1
        }
      },
      ],
          prevArrow: "<div class='pointer slick-nav left prev absolute'><div class='absolute position-center-center'><img src='image/catalog/slicing/lar.png' alt='image'></div></div>",
          nextArrow: "<div class='pointer slick-nav right next absolute'><div class='absolute position-center-center'><img src='image/catalog/slicing/rar.png' alt='image'></div></div>",

    });
  }
  initSlick();
</script>
