<?php
/*
  Template Name: Страница продукция
*/
?>
<?
$page_id = 94;
?>

<? get_header(); ?>
<section id="main" class="main">
	<div class="main_wrapper">
		<? if (function_exists('yoast_breadcrumb')) {
			yoast_breadcrumb('<div id="breadcrumbs" class="breadcrumbs">', '</div>');
		}; ?>

		<div class="h1_wrapper">
			<h1 class="h1_title">
				<? the_field('main_h1', $page_id); ?>
			</h1>
			<?= do_shortcode('[print-me target="body" title="" do_not_print=""]'); ?>

		</div>

		<div class="main_content_wrapper full_width">

			<div class="the_content_wrapper">

				<?
				if(get_the_content() !==''){ ?>
          <div class="the_content">
						<? the_content(); ?>
          </div>
				<? } ?>
				<? the_production_list(); ?>
			</div>

		</div>

	</div>


</section>
<? get_footer(); ?>
