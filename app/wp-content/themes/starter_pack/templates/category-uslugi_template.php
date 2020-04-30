<?php
/*
  Template Post Type: post
  Template Name: Категоия услуга (продукт)
*/

?>
<?
$page_id = get_the_ID();
$parent_link = '/uslugi/';
$menu_name = 'uslugi';
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

		<div class="main_content_wrapper">
			<? sidebarRouter($menu_name); ?>
			<div class="the_content_wrapper">
				<? innerPageTopTemplate($page_id); ?>
				<div class="the_content">
					<? the_content(); ?>
				</div>
				<? the_autopark_list($page_id); ?>
				<? the_start_friendship(); ?>
			</div>

		</div>

	</div>


</section>
<? get_footer(); ?>
