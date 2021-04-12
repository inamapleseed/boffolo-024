<div data-aos="fade-up" class="featured-module featured_<?= $uqid; ?>">
  <h2 class="text-center target-heading products-" style="display: none;">
    <?= $heading_title; ?>
  </h2>

  <h2 class="text-center target-heading non-pro" style="display: none;">
    Featured Products
    <div class="home-button">
      <a href="index.php?route=product/category" class="btn this-btn">View All</a>
    </div>
  </h2>

  <div class="fproducts-description">
    <?= $heading_title; ?>
  </div>

  <div class="featured section relative" style="opacity: 0;">
    <div id="featured_slider_<?= $uqid; ?>" >
      <?php foreach ($products as $product) { ?>
        <?= html($product); ?>
      <?php } ?>
    </div>

    <script type="text/javascript">

      $(window).load(function(){
        setTimeout(function () {
          featured_product_slick<?= $uqid; ?>();
          AOS.init();
        }, 250);
      });

      function featured_product_slick<?= $uqid; ?>(){
        $("#featured_slider_<?= $uqid; ?>").on('init', function (event, slick) {
          $('#featured_slider_<?= $uqid; ?>').parent().removeAttr('style');
        });

        $("#featured_slider_<?= $uqid; ?>").slick({
          dots: false,
          infinite: false,
          speed: 300,
          slidesToShow: 4,
          slidesToScroll: 1,
          responsive: [
            {
              breakpoint: 1199,
              settings: {
                slidesToShow: 2,
              }
            },
            {
              breakpoint: 767,
              settings: {
                slidesToShow: 1,
              }
            }
          ],
          prevArrow: "<div class='pointer slick-nav left prev absolute'><div class='absolute position-center-center'><img src='image/catalog/slicing/lar.png' alt='image'></div></div>",
          nextArrow: "<div class='pointer slick-nav right next absolute'><div class='absolute position-center-center'><img src='image/catalog/slicing/rar.png' alt='image'></div></div>",
        });

        
      }
    </script>

  </div>
</div>

<script type="text/javascript">
  if ($('body').hasClass('product-product')) {
    $('.fproducts-description').hide();
    $('.products-').show();
    $('.home-button').hide();
  } else {
    $('.non-pro').show();
  }
  if ($('body').hasClass('iid-7')) {
    $('.featured').css("background","url(image/catalog/slicing/application/feat-bg-min.jpg)");
  }
</script>