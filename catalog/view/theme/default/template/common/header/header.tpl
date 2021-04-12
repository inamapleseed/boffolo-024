<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?=$direction; ?>" lang="<?=$lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?=$direction; ?>" lang="<?=$lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?=$direction; ?>" lang="<?=$lang; ?>">
<!--<![endif]-->

<?= $head_tags ?>

<body class="<?=$class; ?> <?= $seo_enabled?'short_hand':''; ?> <?= $isMobile; ?>">

	<div id="loading_wrapper">
		<div class="spinner">
		  <div class="dot1"></div>
		  <div class="dot2"></div>
		</div>
	</div>

	<?php /*** loading page ***/ ?>
	<style>
		.loader {
			position: fixed;
			left: 0px;
			top: 0px;
			width: 100%;
			height: 100%;
			z-index: 9999; 
		}
	</style>
	<div class="loader" style="background: rgb(255, 255, 255);"></div>
	<!-- <div class="loader" style="background: url('<?=$logo; ?>') 50% 50% / auto 50px no-repeat rgb(255, 255, 255);"></div> -->
	<script tyle="text/javascript">
		$(window).load(function() {
			// hide loading gif when page done loading
			$(".loader").fadeOut("slow");
		});
	</script>
	<?php /*** loading page ***/ ?>

	<?= $fb_messanger; ?>
	<div class="x213"><h1 id="page_heading_title" ><?= $title; ?></h1></div>
	<header class="fixed-header">

		<?php if (!$announcement['disable'] || $announcement['disable'] == 'disable'): ?>
			<?php if ($announcement['content']): ?>
				<marquee class="marquee">
					<?= html_entity_decode($announcement['content']); ?>
				</marquee>
			<?php endif ?>
		<?php endif ?>

		<div class="contain-">
			<div class="header-container">
				<div class="header-mobile-links visible-xs visible-sm">
					<div class="header-links">
						<a id="mobileNav" href="#sidr" class="pointer esc">
							<i class="fa fa-bars"></i>
						</a>
						<span class="hidden-xs hidden-sm">
							<?= $pop_up_search; ?>
						</span>
					</div>
				</div>

				<div class="contain-mid">
					<div class="header-logo">
						<?php if ($logo) { ?>
							<a class="header-logo-image" href="<?=$home; ?>">
								<img src="<?=$logo; ?>" title="<?=$name; ?>" alt="<?=$name; ?>" class="img-responsive" />
							</a>
						<?php } else { ?>
							<a class="header-logo-text" href="<?=$home; ?>"><?=$name; ?></a>
						<?php } ?>
					</div>

					<div class="top-menu header-menu hidden-xs hidden-sm">
						<?= $menu; ?>
					</div>

					<div class="header-top">

						<div class="quote">
							<button type="button" class="btn btn-default" data-toggle="modal" data-target="#quote">
								Quick Quote
							</button>
						</div>

						<?=$wishlist; ?>

						<span class="hidden-xs hidden-sm">
							<?= $login_part; ?>
						</span>

						<?= $cart; ?>
						<?php echo $enquiry; ?>

						<span class="hidden" >
							<?=$currency; ?>
							<?=$language; ?>
						</span>
					</div>
				</div>

				<div class="header-outer hidden-xs hidden-sm">
					<div class="search_container">
						<label>Search For: </label><span class="hidden-xs hidden-sm"><?= $search; ?></span>
					</div>
				</div>

				<div class="header-bottom">
					<div class="mega-menu" style="display: none;"></div>
					<div class="inner-bottom">
						<div class="bottom-menu header-menu hidden-xs hidden-sm">
							<?= $menu4; ?>
						</div>
					</div>
				</div>
				
			</div>
		</div>
	</header>

	<div id="sidr">
		<div class="header-mobile">
			<div>
				<ul class="mobile-account relative ">
					<li class="ma-li">
						<a>My Account</a>
						<ul class="ma-inner" style="display: none">
							<?php if($logged) { ?> 
								<li>
									<a href="<?= $account; ?>">
									<i class="fa fa-user-circle-o" aria-hidden="true"></i>
									<?= $text_account; ?></a>
								</li>
								<li>
									<a href="<?= $logout; ?>">
									<i class="fa fa-sign-out" aria-hidden="true"></i>
									<?= $text_logout; ?></a>
								</li>
							<?php } else { ?> 
								<li>
									<a href="<?= $login; ?>">
									<i class="fa fa-user-circle-o" aria-hidden="true"></i>
									<?= $text_login; ?></a>
								</li>
								<li>
									<a href="<?= $register; ?>">
										<i class="fa fa-pencil-square-o" aria-hidden="true"></i>
									<?= $text_register; ?></a>
								</li>
							<?php } ?>
							<li>
								<a href="index.php?route=checkout/cart">My Cart</a>
							</li>
							<div class="x">X</div>
						</ul>
					</li>
				</ul>
			</div>

			<script type="text/javascript">
				$(".ma-li").on("click", function(){
					$('.ma-inner').toggle();
				})

				// $(document).mouseleave(function(e) 
				// {
				//     var con = $(".ma-inner");

				//     if (!con.is(e.target) && con.has(e.target).length === 0) 
				//     {
				//         con.hide();
				//     }
				// });
			</script>

			<div class="quote toggle-quote">
				<button type="button" class="btn btn-default" data-toggle="modal" data-target="#quote">
					Quick Quote
				</button>
			</div>

			<div class="mobile-search">
				<?= $search; ?>
			</div>
		</div>

		<?= $mobile_menu; ?>
	</div>

	<div id="pg-banner-wrap">
		<?= $page_banner; ?>
	</div>

<script type="text/javascript">
	$(window).scroll(function(){
		if ($(this).scrollTop() > 100) {
			$('.fixed-header').addClass('scrolled');
			$('body').css("padding-top","232px");
		} else {
			$('.fixed-header').removeClass('scrolled');
		}
	})

	$('.bottom-menu #main-menu li ul').hide();

	$('.mega-menu').mouseover(function(){
		$(this).show();
	});

	$('.mega-menu').mouseleave(function(){
		$(this).hide();
	});
	$('.bottom-menu #main-menu li ul.content').each(function(){

		let content = $(this).parent().find("a").siblings().html();

		$(this).parent().find("a").hover(function(){
			$('.mega-menu').empty();
			$('.mega-menu').append(content);
			$('.mega-menu').show();

		});

		$(this).parent().find("a").mouseleave(function(){
			$('.mega-menu').empty();
			$('.mega-menu').append(content);
			$('.mega-menu').hide();
		});
	});

	$('.bottom-menu #main-menu li').each(function(){
		$(this).hover(function(){
			let bmenu = $(".bottom-menu").position().left;
			let left1 = bmenu + $(this).position().left;
		    let left2 = left1 - 11;
		    $(".mega-menu").css("left", left2);

		});
	});

    
    // $(".cd-accordion-menu ~ li").hide();
</script>