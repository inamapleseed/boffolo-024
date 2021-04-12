<button id="articles-filter-trigger-open" class="btn btn-primary" onclick="$('#articles-column-left').addClass('open');" ><?= $button_filter; ?></button>
<div id="articles-column-left" class="f16">
	<button id="articles-filter-trigger-close" class="btn btn-danger fixed position-right-top" onclick="$('#articles-column-left').removeClass('open');"> <i class="fa fa-times"></i> </button>
	<div class="elsie f30 upper"><?= $text_categories ?></div>
	<div class="">
		<div class="list-group news-ctgr">
		<?php foreach ($categories as $c) { ?>
			<div class="a">
				<a href="<?= $c['url'] ?>" class="<?= $ncategory_id == $c['ncategory_id'] ? 'active' : '' ?>"><?= $c['name'] ?></a>
			</div>
		<?php } ?>
		</div>
	</div>
	<div class="elsie f30 upper">Archives</div>
	<div class="list-group">
		<?php $index = 0; ?>
				<?php foreach ($archives as $archive) { ?>
			<?php $index++ ?>
				<span class="list-group-item hidesthemonths" style="cursor: pointer"><a  style="padding:0;"><?php echo $archive['year']; ?><div class="caret"></div></a>
					<div class="list-group" <?= $achive_yr == $archive['year'] ? 'style="display: block;"' : 'style="display: none;"' ?>>
						<?php foreach ($archive['month'] as $month) { ?>
							<a class="list-group-item <?= $archive_query == ($archive['year'].'-'.$month['num']) ? 'active' : '' ?>" href="<?php echo $month['href']; ?>"><?php echo $month['name']; ?></a>
						<?php } ?>
					</div>
				</span>
				<?php } ?>
			<?php echo !$archives ? 'No articles' : ''; ?>
	</div>
</div>
<script type="text/javascript">
	$(document).ready(function () {
		$('.hidesthemonths').on('click', function () {
			$(this).find('div').slideToggle('fast');
			$('.caret').addClass('rotate');
			$(this).addClass('toggled');
		});

		$('.toggled').on('click', function() {
			$('.caret').removeClass('rotate');
			$(this).addClass('test');
		})
	});

	if ($('body').hasClass('news-ncategory')) {
		$('#column-right').removeClass('hidden-xs');
	}

	$(window).scroll(function () {
		if ($(this).scrollTop() > 100) {
			$('#articles-filter-trigger-open').css("top","70px");
		} else {
			$('#articles-filter-trigger-open').css("top","130px");
		}
	});


</script>