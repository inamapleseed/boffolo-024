<?php echo $header; ?>
<div style="background: url('image/catalog/slicing/bg-min.jpg'); background-position: top right; background-repeat: no-repeat; background-size: 100%;">
  <div class="contain">
    <?php echo $content_top; ?>
    <ul class="breadcrumb">
      <?php foreach ($breadcrumbs as $breadcrumb) { ?>
      <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
      <?php } ?>
    </ul>
      <h2><?php echo $heading_title; ?></h2> 
      
    <div class="row">
    
      <?php echo $column_left; ?>

      <?php if ($column_left && $column_right) { ?>
      <?php $class = 'col-sm-6'; ?>
      <?php } elseif ($column_left || $column_right) { ?>
      <?php $class = 'col-sm-9'; ?>
      <?php } else { ?>
      <?php $class = 'col-sm-12'; ?>
      <?php } ?>

      <div id="content" class="<?php echo $class; ?>">

        <div id="product-filter-replace">
          <div id="product-filter-loading-overlay"></div>
          
            <?php if ($products) { ?>
            
              <?php include_once('sort_order.tpl'); ?>
                
              <div id="product-filter-detect">
                
                <div class="row row-special">
                  <div class="product-view">
                    <?php foreach ($products as $product) { ?>
                      <?php echo $product; ?>
                    <?php } ?>
                  </div>
                </div>

                <div class="pagination-container"><?php echo $pagination; ?></div>
                <div class="results hidden"><?php echo $item_count; ?></div>
                <!-- <div class=""><?php echo $results; ?></div> -->

              </div> <!-- product-filter-detect -->

            <?php } ?>

            <?php if (!$products) { ?>
            
              <p><?php echo $text_empty; ?></p>
              <div class="buttons hidden">
                <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
              </div>

            <?php } ?>
            <script type="text/javascript">
              let len = $(window).width();
              if (len >= 768) {
                $(document).ready(function(){
                  let cnt = $('.results').html();
                  $('.sorts').prepend("<div class='item-count'><b> Results</b></div>");
                  $('.item-count b').prepend(cnt);
                  let page = $('.pagination-container').html();

                  let active = $('.pagination .active span').html();
                  let total = $('.next-arrow').prev().html();
                  let next = $('.next-arrow').html();
                  let prev = $('.prev-arrow').html();

                  $('.sorts .flex').append('<div class="custom-page"><span>Page ' + active + ' of</span> ' + total + '&nbsp;&nbsp;&nbsp;' + prev + next + '</div>');

                   <?php if (!$pagination): ?>
                      $('.custom-page').empty().append('<span>Page 1 of 1</span>&nbsp;&nbsp;&nbsp;<a class="prev" disabled style="cursor: not-allowed">Prev</a><a class="next" disabled style="cursor: not-allowed">Next</a>');
                      $('.custom-page').addClass('test'); 
                  <?php endif ?>

                  let last = $('.custom-page a').last().addClass('last');
                  $(last).prev().addClass('prev');

                  $('.last').empty().append('Next');
                  $('.last').prev().empty().append('Prev');
                })
              }
            </script>
        </div> <!-- product-filter-replace -->
      </div> <!-- #content -->

      <?php echo $column_right; ?></div>
      <?php echo $content_bottom; ?>
  </div>
</div>

<?php echo $footer; ?>
