<div id="footer-area">
<footer>
	<div class="contain">
		<div class="header-logo">
			<?php if ($icon) { ?>
				<div>
					<a class="header-logo-image">
						<img src="<?=$icon; ?>" alt="logo" class="img-responsive" />
					</a>
					<h3><?= $store; ?></h3>
				</div>
			<?php } else { ?>
				<a class="header-logo-text"><?=$name; ?></a>
			<?php } ?>
		</div>
		<div class="footer-upper-contet">

			<div class="footer-contact-info">
				<div class="texts">
					<address>
						<?= $address; ?>
					</address>
					<div>
						<?= $text_telephone; ?>: <a href="tel:<?= $telephone; ?>" ><?= $telephone; ?></a>
						<?php if($fax){ ?>
							<?= $text_fax; ?>: <a href="fax:<?= $fax; ?>" ><?= $fax; ?></a>
						<?php } ?>
					</div>
					<div>
						<?= $text_email; ?>: <a href="mailto:<?= $email; ?>" ><?= $email; ?></a>
					</div>
					<div>
						<?php if ($open) { ?>
							<span>Open: </span>
							<a><?= $open; ?></a><br />
							<br />
						<?php } ?>
					</div>
				</div>
			</div>

			<?php if ($menu) { ?>
				<?php foreach($menu as $i => $links){ ?>
				<div class="footer-contact-links" id="tab-<?=$i;?>">
					<h5>
						<?php if($links['href'] != '#'){ ?>
						<?= $links['name']; ?>
						<?php }else{ ?>
						<a href="<?= $links['href']; ?>" 
							<?php if($links['new_tab']){ ?>
								target="_blank"
							<?php } ?>
							>
							<?= $links['name']; ?></a>
						<?php } ?>
					</h5>
					<?php if($links['child']){ ?>
					<ul class="list-unstyled">
						<?php foreach ($links['child'] as $each) { ?>
						<li><a href="<?= $each['href']; ?>"
							<?php if($each['new_tab']){ ?>
								target="_blank"
							<?php } ?>
							
							>
								<?= $each['name']; ?></a></li>
						<?php } ?>
					</ul>
					<?php } ?>
				</div>
				<?php } ?>
			<?php } ?>

			<?php if($social_icons){ ?>
				<div class="contain-socs">
					<h5>Connect</h5>
					<div class="footer-social-icons">
						<?php foreach($social_icons as $icon){ ?>
						<a href="<?= $icon['link']; ?>" title="<?= $icon['title']; ?>" alt="
									<?= $icon['title']; ?>" target="_blank">
							<img src="<?= $icon['icon']; ?>" title="<?= $icon['title']; ?>" class="img-responsive" alt="<?= $icon['title']; ?>" />
						</a>
						<?php } ?>
					</div>
				</div>
			<?php } ?>

		</div>
		
		<hr/>
		<div class="footer-bottom row">
			<div class="col-xs-12 col-sm-6">
				<p><?= $powered; ?></p>
			</div>
		</div>
	</div>
</footer>
</div>
<div id="ToTopHover" ></div>

<?php if(isset($update_price_status) && $update_price_status) { ?>
	<script type="text/javascript">
    $(".product-inputs input[type='checkbox']").click(function() {
      var product_id = $(this).data('product-id');
      changePrice(product_id);
    });
    $(".product-inputs input[type='radio']").click(function() {
      var product_id = $(this).data('product-id');
      changePrice(product_id);
    });
    $(".product-inputs select").change(function() {
      var product_id = $(this).data('product-id');
      changePrice(product_id);
    });
    $(".input-number").blur(function() {
      var product_id = $(this).data('product-id');
      changePrice(product_id);
    });
    $(".input-number").parent(".input-group").find(".btn-number").click(function() {
      var product_id = $(this).data('product-id');
      changePrice(product_id);
    });
    function changePrice(product_id) {
      $.ajax({
        url: 'index.php?route=product/product/updatePrice&product_id=' + product_id,
        type: 'post',
        dataType: 'json',
        data: $('#product-'+ product_id + ' input[name=\'quantity\'], #product-'+ product_id + ' select, #product-'+ product_id + ' input[type=\'checkbox\']:checked, #product-'+ product_id + ' input[type=\'radio\']:checked'),
        success: function(json) {
          $('.alert-success, .alert-danger').remove();
          if(json['new_price_found']) {
            $('.product-price-'+product_id+' .price .price-new').html(json['total_price']);
            $('.product-price-'+product_id+' .price .price-tax').html(json['tax_price']);
          } else {
            $('.product-price-'+product_id+' .price .price-new').html(json['total_price']);
            $('.product-price-'+product_id+' .price .price-tax').html(json['tax_price']);
          }
        }
      });
    }
	</script>
<?php } ?>

<script>AOS.init({
	once: true
});</script>
<script>
	$('#account').click(function(){

        if(!$(this).hasClass('open')){

            // $(this).find("i").removeClass('fa-search');
            // $(this).find("i").addClass('fa-close');
            $(this).addClass('open');
            console.log('open')
            $(this).parent().find('.dropdown-menu').show();
        }
        else{
            // $(this).find("i").removeClass('fa-close');
            // $(this).find("i").addClass('fa-search');
            $(this).removeClass('open');
            console.log('close')
            $(this).parent().find('.dropdown-menu').hide();
        }
    });
</script>
<?php 
/* extension bganycombi - Buy Any Get Any Product Combination Pack */
echo $bganycombi_module; 
?>
</body></html>