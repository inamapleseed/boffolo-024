<?= $header; ?>
<div class="contain">
	<?= $content_top; ?>
	<ul class="breadcrumb">
		<?php foreach ($breadcrumbs as $i => $breadcrumb) { ?>
			<?php if ($i == 0): ?>
				<li><a href="<?= $breadcrumb['href']; ?>"><?= $breadcrumb['text']; ?></a></li>
			<?php endif ?>
			<?php if ($i == 1): ?>
				<li><a href="<?= $breadcrumb['href']; ?>">Contact Us</a></li>
			<?php endif ?>
		<?php } ?>
	</ul>
	<div class="row"><?= $column_left; ?>
		<?php if ($column_left && $column_right) { ?>
			<?php $class = 'col-sm-6'; ?>
			<?php } elseif ($column_left || $column_right) { ?>
			<?php $class = 'col-sm-9'; ?>
			<?php } else { ?>
			<?php $class = 'col-sm-12'; ?>
		<?php } ?>
		<div id="content" class="<?= $class; ?>">
			<h2>Leave us a Message</h2>

			<div class="image">
			</div>

			<div class="">
				<div class="contact-deets">
					<div class="them-tabs">
						<a target="_blank" class="overlay" href="<?= $gmap_iframe; ?>"></a>
						<img src="image/catalog/slicing/contactus/pin.png" alt="location">
						<address>
							<?= $address; ?>
						</address>
					</div>

					<div class="them-tabs">
						<a href="tel:<?= $store_telephone; ?>" class="overlay"></a>
						<img src="image/catalog/slicing/contactus/phone.png" alt="location">
						<p><?= $text_telephone; ?>:</p>
						<a href="tel:<?= $store_telephone; ?>" alt="<?= $store_telephone; ?>" title="<?= $store_telephone; ?>" ><?= $store_telephone; ?></a>
						
						<?php if ($fax) { ?>
							<strong><?= $text_fax; ?></strong>
							<a href="fax:<?= $fax; ?>" alt="<?= $fax; ?>" title="<?= $fax; ?>" ><?= $fax; ?></a>
						<?php } ?>
					</div>

					<div class="them-tabs">
						<a href="mailto:<?=$store_email;?>" class="overlay"></a>
						<img src="image/catalog/slicing/contactus/mail.png" alt="location">
						<p>Email:</p>
						<a href="mailto:<?=$store_email;?>"><?=$store_email;?></a>
					</div>

				</div>
			</div>

			<?php if ($locations) { ?>
				<h3><?= $text_store; ?></h3>
				<div class="panel-group" id="accordion">
					<?php foreach ($locations as $index => $location) { ?>
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a href="#collapse-location<?= $location['location_id']; ?>" class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" >
										<?= $location['name']; ?> <i class="fa fa-caret-down"></i>
									</a>
								</h4>
							</div>
							<div class="panel-collapse collapse" id="collapse-location<?= $location['location_id']; ?>" >
								<div class="panel-body">
									<div class="row">
											<div class="col-sm-12">
												<div class="iframe-wrap"><?= $location['gmap_iframe'] ?></div>
											</div>
										    <?php /*if ($location['geocode'] || $location['google_map']) { ?> 
												<div class="col-sm-12">
													<div data-id="gmap<?= $index; ?>" data-toggle="gmap" class="gmap"
														<?php if($location['google_map']){ ?>
															data-lat="<?= $location['google_map']['lat']; ?>" 
															data-lng="<?= $location['google_map']['lng']; ?>" 
															data-store="<?= $location['google_map']['store']; ?>" 
															data-address="<?= $location['google_map']['address']; ?>" 
														<?php } ?>
													>
													<div id="gmap<?= $index; ?>" ></div>
													</div>
												</div>
											<?php }*/ ?>
										
										<?php if ($location['image']) { ?>
											<div class="col-sm-3"><img src="<?= $location['image']; ?>" alt="<?= $location['name']; ?>" title="<?= $location['name']; ?>" class="img-thumbnail" /></div>
										<?php } ?>
										<div class="col-sm-3"><strong><?= $location['name']; ?></strong><br />
											<address>
												<?= $location['address']; ?>
											</address>
											<?php if ($location['geocode']) { ?>
												<a href="https://maps.google.com/maps?q=<?= urlencode($location['geocode']); ?>&hl=<?= $geocode_hl; ?>&t=m&z=15" target="_blank" class="btn btn-info"><i class="fa fa-map-marker"></i> <?= $button_map; ?></a>
											<?php } ?>
										</div>
										<div class="col-sm-3"> <strong><?= $text_telephone; ?></strong><br>
											<?= $location['telephone']; ?><br />
											<br />
											<?php if ($location['fax']) { ?>
												<strong><?= $text_fax; ?></strong><br>
												<?= $location['fax']; ?>
											<?php } ?>
										</div>
										<div class="col-sm-3">
											<?php if ($location['open']) { ?>
												<strong><?= $text_open; ?></strong><br />
												<?= $location['open']; ?><br />
												<br />
											<?php } ?>
											<?php if ($location['comment']) { ?>
												<strong><?= $text_comment; ?></strong><br />
												<?= $location['comment']; ?>
											<?php } ?>
										</div>
									</div>
								</div>
							</div>
						</div>
					<?php } ?>
				</div>
			<?php } ?>

			<div class="pop-button" style="display: none;">
				<button type="button" class="btn btn-default" data-toggle="modal" data-target="#contact">
					Contact Us
				</button>
			</div>

			<!-- Modal -->
			<div class="modal fade" id="contact" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			  <div class="modal-dialog" role="document">
			    <div class="modal-content">
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			          <span aria-hidden="true">&times;</span>
			        </button>
			      <div class="modal-body">
					<form action="<?= $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
						<h2><?= $text_contact; ?></h2>
						<?php if ($comment): ?>
							<div>
								<?=$comment;?>
							</div>
						<?php endif ?>
						<div class="contact-body">
							<div class="form-group required">
								<input type="text" name="name" value="<?= $name; ?>" id="input-name" class="form-control" placeholder="<?= $entry_name; ?>" />
								<?php if ($error_name) { ?>
									<div class="text-danger"><?= $error_name; ?></div>
								<?php } ?>								
							</div>
						
							<div class="form-group required">
								<input type="text" name="email" value="<?= $email; ?>" id="input-email" class="form-control" placeholder="<?= $entry_email; ?>" />
								<?php if ($error_email) { ?>
									<div class="text-danger"><?= $error_email; ?></div>
								<?php } ?>
							</div>

							<div class="form-group required">
								<input type="text" name="company" value="<?= $company; ?>" id="input-company" class="form-control" placeholder="<?= $entry_company; ?>" />
								<?php if ($error_company) { ?>
									<div class="text-danger"><?= $error_company; ?></div>
								<?php } ?>
							</div>

							<div class="form-group required">
								<input type="text" name="position" value="<?= $position; ?>" id="input-position" class="form-control" placeholder="<?= $entry_position; ?>" />
								<?php if ($error_position) { ?>
									<div class="text-danger"><?= $error_position; ?></div>
								<?php } ?>
							</div>
						
							<div class="form-group required">
								<input type="tel" name="telephone" value="<?= $telephone; ?>" id="input-telephone" class="form-control input-number" placeholder="Phone" />
								<?php if ($error_telephone) { ?>
									<div class="text-danger"><?= $error_telephone; ?></div>
								<?php } ?>
							</div>

							<div class="form-group required">
								<input type="text" name="subject" value="<?= $subject; ?>" id="input-subject" class="form-control" placeholder="<?= $entry_subject; ?>" />
								<?php if ($error_subject) { ?>
									<div class="text-danger"><?= $error_subject; ?></div>
								<?php } ?>
							</div>

							<div class="form-group required">
								<textarea name="enquiry" rows="10" id="input-enquiry" class="form-control" placeholder="<?= $entry_enquiry; ?>"><?= $enquiry; ?></textarea>
								<?php if ($error_enquiry) { ?>
									<div class="text-danger"><?= $error_enquiry; ?></div>
								<?php } ?>
							</div>
						</div>
						<div class="contact-footer text-center">
							<input type="hidden" name="contact_form" value="1"/>
							<?= $captcha; ?>
							<div class="the-button">
								<input class="btn btn-default pull-sm-right" type="submit" value="<?= $button_submit; ?>" />
							</div>
						</div>
					</form>
			      </div>
			    </div>
			  </div>
			</div>

		</div>
	<?= $column_right; ?></div>
	<?= $content_bottom; ?>
</div>
<?= $footer; ?>
<script type="text/javascript">
	let banner = $('.page-banner').html();
	$('.image').append(banner);
	$('#pg-banner-wrap').css("display","none");

	let button = $('.pop-button').html();
	$('.contact-button').append(button);
</script>