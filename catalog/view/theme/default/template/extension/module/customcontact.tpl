<div class="modal fade" id="quote" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      <div class="modal-body">
        <form action="<?= $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
          <h2><?= $title1; ?></h2>
          <div class="quote-description">
            <?= html_entity_decode($description); ?>
          </div>
          <div class="contact-body">
            <div class="form-group required">
              <input type="text" name="name2" value="<?= $name2; ?>" id="input-name2" class="form-control" placeholder="<?= $entry_name2; ?>" />
              <?php if ($error_name2) { ?>
                <div class="text-danger"><?= $error_name2; ?></div>
              <?php } ?>                
            </div>
          
            <div class="form-group required">
              <input type="text" name="email2" value="<?= $email2; ?>" id="input-email2" class="form-control" placeholder="<?= $entry_email2; ?>" />
              <?php if ($error_email2) { ?>
                <div class="text-danger"><?= $error_email2; ?></div>
              <?php } ?>
            </div>

            <div class="form-group required">
              <input type="text" name="company2" value="<?= $company2; ?>" id="input-company2" class="form-control" placeholder="<?= $entry_company2; ?>" />
              <?php if ($error_company2) { ?>
                <div class="text-danger"><?= $error_company2; ?></div>
              <?php } ?>
            </div>

            <div class="form-group required">
              <input type="text" name="position2" value="<?= $position2; ?>" id="input-position2" class="form-control" placeholder="<?= $entry_position2; ?>" />
              <?php if ($error_position2) { ?>
                <div class="text-danger"><?= $error_position2; ?></div>
              <?php } ?>
            </div>
          
            <div class="form-group required">
              <input type="tel" name="telephone2" value="<?= $telephone2; ?>" id="input-telephone2" class="form-control input-number" placeholder="Phone" />
              <?php if ($error_telephone2) { ?>
                <div class="text-danger"><?= $error_telephone2; ?></div>
              <?php } ?>
            </div>

            <div class="form-group required">
              <input type="text" name="subject2" value="<?= $subject2; ?>" id="input-subject2" class="form-control" placeholder="<?= $entry_subject2; ?>" />
              <?php if ($error_subject2) { ?>
                <div class="text-danger"><?= $error_subject2; ?></div>
              <?php } ?>
            </div>

            <div class="form-group required">
              <input type="text" name="productname" value="<?= $productname; ?>" id="input-productname" class="form-control" placeholder="<?= $entry_productname; ?>" />
              <?php if ($error_productname) { ?>
                <div class="text-danger"><?= $error_productname; ?></div>
              <?php } ?>
            </div>

            <div class="form-group required">
              <input type="text" name="psku" value="<?= $psku; ?>" id="input-psku" class="form-control" placeholder="<?= $entry_psku; ?>" />
              <?php if ($error_psku) { ?>
                <div class="text-danger"><?= $error_psku; ?></div>
              <?php } ?>
            </div>

            <div class="form-group required">
              <textarea name="enquiry2" rows="10" id="input-enquiry2" class="form-control" placeholder="<?= $entry_enquiry2; ?>"><?= $enquiry2; ?></textarea>
              <?php if ($error_enquiry2) { ?>
                <div class="text-danger"><?= $error_enquiry2; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="contact-footer text-center">
            <?= $captcha; ?>
            <input type="hidden" name="contact_form" value="0">
            <div class="the-button">
              <input class="btn this-btn pull-sm-right" type="submit" value="<?= $button_submit; ?>" />
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
