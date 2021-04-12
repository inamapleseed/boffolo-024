<h2>Categories</h2>
<div class="contain contain-fcats">
  <?php foreach ($categories as $category) { ?>
    <div class="product-layout col-lg-3 col-md-3 col-sm-6 col-xs-12">
      <div class="product-thumb transition">
        <div class="image"><a href="<?php echo $category['href']; ?>"><img src="<?php echo $category['thumb']; ?>" alt="<?php echo $category['name']; ?>" title="<?php echo $category['name']; ?>" class="img-responsive" /></a></div>
          <h4><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></h4>
      </div>
    </div>
  <?php } ?>
</div>
<div class="home-button">
  <a href="index.php?route=product/category" class="btn this-btn">Learn More</a>
</div>

<script type="text/javascript">
  function initSlick() {
    $('.contain-fcats').slick({
      dots: false,
      infinite: true,
      speed: 500,
      arrows: true,
      pauseOnHover: false,
      autoplay: false,
      slidesToShow: 5,
      responsive: [
      {
        breakpoint: 1025,
        settings: {
          slidesToShow: 3
        }
      },
      {
        breakpoint: 1023,
        settings: {
          slidesToShow: 2
        }
      },
      {
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
