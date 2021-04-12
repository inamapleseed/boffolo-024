<?php echo $header; ?>
<div style="background: url('image/catalog/slicing/bg-min.jpg'); background-position: top right; background-repeat: no-repeat; background-size: 100%;">
  <div class="contain">
    <ul class="breadcrumb">
      <?php foreach ($breadcrumbs as $breadcrumb) { ?>
      <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
      <?php } ?>
    </ul>
    <h2 class="that-h2"><?php echo $heading_title; ?></h2>
    <h2 class="this-h2" style="display: none;"></h2>
    <?php echo $content_top; ?>
    <div class="row"><?php echo $column_left; ?>
      <?php if ($column_left && $column_right) { ?>
      <?php $class = 'col-sm-6'; ?>
      <?php } elseif ($column_left || $column_right) { ?>
      <?php $class = 'col-sm-9'; ?>
      <?php } else { ?>
      <?php $class = 'col-sm-12'; ?>
      <?php } ?>
      <div id="content" class="<?php echo $class; ?>">
        <?php echo $description; ?></div>
      <?php echo $column_right; ?></div>
      <div class="page-script"></div>
      <?php echo $content_bottom; ?>
  </div>
</div>
<?php echo $footer; ?> 

<script type="text/javascript">
  let page = $('.pagination-container').html();
  $('.pagination-container').hide();

  $('.page-script').append(page);
  $('.page-script').addClass('pagination-contain');
</script>