<?php if ($is_author) { ?>
 <?php if ($author_image || $author_desc) { ?>
  <div class="category-info">
    <?php if ($author_image) { ?>
    <div class="image"><img src="<?php echo $author_image; ?>" alt="<?php echo $author; ?>" /></div>
    <?php } ?>
    <?php if ($author_desc) { ?>
    <?php echo $author_desc; ?>
    <?php } ?>
  </div>
  <?php } ?>
<?php } ?>
<?php if ($is_category) { ?>
 <?php if ($thumb || $description) { ?>
  <div class="category-info">
    <?php if ($thumb) { ?>
    <div class="image"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" /></div>
    <?php } ?>
    <?php if ($description) { ?>
    <?php echo $description; ?>
    <?php } ?>
  </div>
  <?php } ?>
<?php } ?>
<?php if ($article) { ?>
	<div class="bnews-list<?php if ($display_style) { ?> bnews-list-2<?php } ?>">
		<?php foreach ($article as $articles) { ?>
			<div class="artblock<?php if ($display_style) { ?> artblock-2<?php } ?>">

				<?php if ($articles['thumb']) { ?>
					<div class="contain-image">
						<a href="<?php echo $articles['href']; ?>"><img class="article-image" align="left" src="<?php echo $articles['thumb']; ?>" title="<?php echo $articles['name']; ?>" alt="<?php echo $articles['name']; ?>" /></a>
					</div>
				<?php } ?>

				<div class="deets">
					<?php if ($articles['name']) { ?>
						<div class="name"><a href="<?php echo $articles['href']; ?>"><?php echo $articles['name']; ?></a></div>
					<?php } ?>
					<div class="art-meta">
						<?php if ($articles['custom1']) { ?>
							<div class="custom1"><?php echo $articles['custom1']; ?>&nbsp;-&nbsp;</div>
						<?php } ?>
						<?php if ($articles['date_added']) { ?>
							<?php echo $articles['date_added']; ?>
						<?php } ?>
					</div>
					<?php if ($articles['custom2']) { ?>
						<div class="custom2"><?php echo $articles['custom2']; ?></div>
					<?php } ?>
					<?php if ($articles['custom3']) { ?>
						<div class="custom3"><?php echo $articles['custom3']; ?></div>
					<?php } ?>
					<?php if ($articles['custom4']) { ?>
						<div class="custom4"><?php echo $articles['custom4']; ?></div>
					<?php } ?>
					<?php if ($articles['description']) { ?>
						<div class="description"><?php echo $articles['description']; ?></div>
					<?php } ?>
				</div>
			</div>
		<?php } ?>
	</div>
	<div class="pagination-container"><?php echo $pagination; ?></div>

<?php } ?>
<?php if ($is_category) { ?>
  <?php if (!$ncategories && !$article) { ?>
  <div class="content"><?php echo $text_empty; ?></div>
  <?php } ?>
<?php } else { ?>
  <?php if (!$article) { ?>
  <div class="content"><?php echo $text_empty; ?></div>
  <?php } ?>
<?php } ?>