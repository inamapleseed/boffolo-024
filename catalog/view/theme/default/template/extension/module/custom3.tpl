<div class="contain-applications">
	<?php if ($repeater): ?>
		<?php foreach ($repeater as $con): ?>
			<div class="applications-inner">
				<div class="applications-text">
					<?php if ($con['title']): ?>
						<h3>
							<?= $con['title']; ?>
						</h3>
					<?php endif ?>
					<?php if ($con['text']): ?>
						<div>
							<?= html_entity_decode($con['text']); ?>
						</div>
					<?php endif ?>
				</div>

				<?php if ($con['image']): ?>
					<div class="applications-image">
						<img src="image/<?= $con['image']; ?>" alt="<?=$con['title'];?>">
					</div>
				<?php endif ?>
			</div>
		<?php endforeach ?>
	<?php endif ?>
</div>