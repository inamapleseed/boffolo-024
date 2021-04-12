<h3 class="pname"><?= $product_name; ?></h3>
<span class="hidden sku"><?php echo $sku; ?></span>
<?php if ($price && !$enquiry) { ?>
  <ul class="list-unstyled">
    <?php if (!$special) { ?>
    <li>
      <div class="product-price old-prices" ><?= $price; ?></div>
    </li>
    <?php } else { ?>
    <li><span style="text-decoration: line-through;" class="old-prices"><?= $price; ?></span></li>
    <li>
      <div class="product-special-price new-prices"><?= $special; ?></div>
    </li>
    <?php } ?>
    <?php if ($tax) { ?>
    <li class="product-tax-price product-tax" ><?= $text_tax; ?> <?= $tax; ?></li>
    <?php } ?>
    <?php if ($points) { ?>
    <li><?= $text_points; ?> <?= $points; ?></li>
    <?php } ?>
    <?php if ($discounts) { ?>
    <li>
      <hr>
    </li>
    <?php foreach ($discounts as $discount) { ?>
    <li><?= $discount['quantity']; ?><?= $text_discount; ?><?= $discount['price']; ?></li>
    <?php } ?>
    <?php } ?>
  </ul>
<?php } ?>

<?php if($enquiry){ ?>
<div class="enquiry-block" style="margin-bottom: 15px;">
  <div class="label label-primary" style=" background: #B52726;">
    <?= $text_enquiry_item; ?>
  </div>
</div>
<script type="text/javascript">
  $('.product-product').addClass('enquiry');
</script>
<?php } ?>
<div class="product-description">
  <?= $description; ?>
</div>

<?php include_once('product_options.tpl'); ?>

<?= $waiting_module; ?>

<script type="text/javascript">
  let sku = $('.sku').text();
  let pname = $('.pname').text();

  $('.product-product.enquiry .customcontact #input-psku').val(sku);
  $('.product-product.enquiry .customcontact #input-productname').val(pname);
</script>