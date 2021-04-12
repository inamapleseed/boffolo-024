<div class="contain-downloads contain">
	<?php if ($files): ?>
		<table class="table table-striped">
			<thead>
				<h3>Audio Products</h3>
			</thead>

			<tbody>
				<?php foreach ($files as $file): ?>
					<?php if ($file['category'] === 'Audio Products'): ?>
						<tr class="<?=$file['category'];?>">
							<td>
										<?=$file['name'];?>
									<a class="btn" href="<?=$file['link'];?>" download>
									</a>						
							</td>

							<?php if ($file['description']): ?>
								<td><a target="_blank" href="<?=$file['description'];?>"><?=$file['description'];?></a></td>
							<?php else: ?>
								<td><i>Description Unavailable</i></td>
							<?php endif ?>

							<?php if ($file['description2']): ?>
								<td><?=$file['description2'];?></td>
							<?php else: ?>
								<td><i>N/A</i></td>
							<?php endif ?>
							<td><?=$file['date_added'];?></td>
							<td><?=$file['moreinfo'];?></td>
						</tr>
					<?php endif ?>
				<?php endforeach ?>
			</tbody>
		</table>
	<?php endif ?>

	<?php if ($files): ?>
		<table class="table table-striped">
			<thead>
				<h3>Visual Products</h3>
			</thead>

			<tbody>
				<?php foreach ($files as $file): ?>
					<?php if ($file['category'] === 'Visual Products'): ?>
						<tr class="<?=$file['category'];?>">
							<td>
									<?=$file['name'];?>
								<a class="btn custom_button" href="<?=$file['link'];?>" download>
								</a>						
							</td>

							<?php if ($file['description']): ?>
								<td><a target="_blank" href="<?=$file['description'];?>"><?=$file['description'];?></a></td>
							<?php else: ?>
								<td><i>Description Unavailable</i></td>
							<?php endif ?>

							<?php if ($file['description2']): ?>
								<td><?=$file['description2'];?></td>
							<?php else: ?>
								<td><i>N/A</i></td>
							<?php endif ?>
							<td><?=$file['date_added'];?></td>
							<td><?=$file['moreinfo'];?></td>
						</tr>
					<?php endif ?>
				<?php endforeach ?>
			</tbody>
		</table>	
	<?php endif ?>

	<?php if ($files): ?>
		<table class="table table-striped">
			<thead>
				<h3>Lighting Products</h3>
			</thead>

			<tbody>
				<?php foreach ($files as $file): ?>
					<?php if ($file['category'] === 'Lighting Products'): ?>
						<tr class="<?=$file['category'];?>">
							<td>
									<?=$file['name'];?>
								<a class="btn custom_button" href="<?=$file['link'];?>" download>
								</a>						
							</td>

							<?php if ($file['description']): ?>
								<td><a target="_blank" href="<?=$file['description'];?>"><?=$file['description'];?></a></td>
							<?php else: ?>
								<td><i>Description Unavailable</i></td>
							<?php endif ?>

							<?php if ($file['description2']): ?>
								<td><?=$file['description2'];?></td>
							<?php else: ?>
								<td><i>N/A</i></td>
							<?php endif ?>
							<td><?=$file['date_added'];?></td>
							<td><?=$file['moreinfo'];?></td>
						</tr>
					<?php endif ?>
				<?php endforeach ?>
			</tbody>
		</table>	
	<?php endif ?>

	<?php if ($files): ?>
		<table class="table table-striped">
			<thead>
				<h3>Networking Products</h3>
			</thead>

			<tbody>
				<?php foreach ($files as $file): ?>
					<?php if ($file['category'] === 'Networking Products'): ?>
						<tr class="<?=$file['category'];?>">
							<td>
									<?=$file['name'];?>
								<a class="btn custom_button" href="<?=$file['link'];?>" download>
								</a>						
							</td>

							<?php if ($file['description']): ?>
								<td><a target="_blank" href="<?=$file['description'];?>"><?=$file['description'];?></a></td>
							<?php else: ?>
								<td><i>Description Unavailable</i></td>
							<?php endif ?>

							<?php if ($file['description2']): ?>
								<td><?=$file['description2'];?></td>
							<?php else: ?>
								<td><i>N/A</i></td>
							<?php endif ?>
							<td><?=$file['date_added'];?></td>
							<td><?=$file['moreinfo'];?></td>
						</tr>
					<?php endif ?>
				<?php endforeach ?>
			</tbody>
		</table>
	<?php endif ?>
</div>
<style type="text/css">
	td a {
		color: black;
	}

	td a:hover {
		color: #B52726;
	}
</style>