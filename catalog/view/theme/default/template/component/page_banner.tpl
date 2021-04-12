<div class='page-banner relative'>
    <img src="<?= $banner_image; ?>" alt="<?= $page_name; ?>" class="img-responsive hidden-xs" />
    <img src="<?= $mobile_banner_image; ?>" alt="<?= $page_name; ?>" class="img-responsive visible-xs" />

    <div class="page-banner-title absolute position-center-center container">
        <h3><?= $page_name; ?></h3>

        <?php if ($page_sub): ?>
	        <h4><?= $page_sub; ?></h4>
        <?php endif ?>

        <div class="contact-button"></div>

    </div>
</div>