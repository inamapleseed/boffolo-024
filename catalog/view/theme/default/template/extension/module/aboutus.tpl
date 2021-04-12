<div class="about-container">
	<div class="content">
		<img src="image/<?=$image;?>" alt="image">
		<h2><?=$title;?></h2>
		<?php foreach ($repeater as $con): ?>
			<?= html_entity_decode($con['text']);?>
		<?php endforeach ?>
	</div>
</div>

<script type="text/javascript">
	$('.aboutus').removeClass('max-offset', 'section-space');
</script>