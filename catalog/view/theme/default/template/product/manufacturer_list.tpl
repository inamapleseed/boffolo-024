<?php echo $header; ?>
<div class="contain">
  <?php echo $content_top; ?>
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li> <a href="<?php echo $breadcrumb['href']; ?>"> <?php echo $breadcrumb['text']; ?> </a> </li>
    <?php } ?>
  </ul>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>">
      <h2><?php echo $heading_title; ?></h2>
      <?php if ($categories) { ?>

        <?php foreach ($categories as $category) { ?>
          <?php if ($category['manufacturer']) { ?>
              <div class="contain-brands">
                <?php foreach ($category['manufacturer'] as $i => $manufacturer) { ?>

                  <div class="brand <?=$i;?>" data-aos="flip-left">
                    <a href="<?php echo $manufacturer['href']; ?>">
                      <img src="image/<?=$manufacturer['image'];?>" alt="<?php echo $manufacturer['name']; ?>">
                    </a>
                  </div>
                
                <?php } ?>
              </div>
          <?php } ?>

        <?php } ?>

        <?php if ($i > 20): ?>
          <div id="pagination-container"></div>
        <?php endif ?>

      <?php } else { ?>
      <p><?php echo $text_empty; ?></p>
      <div class="buttons clearfix">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      <?php } ?>
      </div>
    <?php echo $column_right; ?></div>
    <?php echo $content_bottom; ?>
</div>
<?php echo $footer; ?>

<script type="text/javascript">
  let items = $(".contain-brands .brand");
    let numItems = items.length;
    let perPage = 20;

    items.slice(perPage).hide();

    $('#pagination-container').pagination({
    items: numItems,
    itemsOnPage: perPage,
    hrefTextPrefix: '',
    prevText: "&lt;",
    nextText: "&gt;",
    onPageClick: function (pageNumber) {
        var showFrom = perPage * (pageNumber - 1);
        var showTo = showFrom + perPage;

      $(".simple-pagination a").each(function(e){
        $(this).removeAttr('href');
      });

        items.hide().slice(showFrom, showTo).show();
    }
    });

    $(".simple-pagination a").removeAttr("href");

    $(document).ready(function(){
      $("#pagination-container span").each(function(){
        let prev = $(this).text();
        $(this).text(prev.replace("prev", ""));
      });

      $("#pagination-container a").each(function(){
        let next = $(this).text();
        $(this).text(next.replace("next", ""));
      });
    })
</script>