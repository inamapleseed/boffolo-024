<div class="contain-brands" data-aos="fade-up">
	<h2><?=$title;?></h2>
	<div class="content-brands">
		<?php foreach ($repeater as $con): ?>
			<img src="image/<?=$con['image'];?>" alt="image">
		<?php endforeach ?>
	</div>
</div>

<script type="text/javascript">
  function initSlick() {
    $('.content-brands').slick({
      dots: false,
      infinite: true,
      speed: 500,
      arrows: true,
      pauseOnHover: false,
      autoplay: true,
      slidesToShow: 5,
      responsive: [
      {
        breakpoint: 1023,
        settings: {
          slidesToShow: 3
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
