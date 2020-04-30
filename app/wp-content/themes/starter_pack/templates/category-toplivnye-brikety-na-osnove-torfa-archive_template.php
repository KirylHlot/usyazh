<?php
/*
  Template Post Type: post
  Template Name: Продукт
*/

?>


<?
$page_id = get_the_ID();
$parent_link = '/about/';
$menu_name = 'kompany';
?>

<? get_header(); ?>
  <section id="main" class="main">
	<div class="main_wrapper full_width">

		<? if (function_exists('yoast_breadcrumb')) {
			yoast_breadcrumb('<div id="breadcrumbs" class="breadcrumbs">', '</div>');
		}; ?>

		<div class="h1_wrapper">
			<h1 class="h1_title">
				<? the_field('main_h1', $page_id); ?>
			</h1>
			<?= do_shortcode('[print-me target="body" title="" do_not_print=""]'); ?>
		</div>



		<? if(get_the_content() !==''){ ?>
    <div class="main_content_wrapper">
			<? sidebarRouter($menu_name); ?>
      <div class="the_content_wrapper">

        <div class="the_content">
		      <? the_content(); ?>
        </div>
      </div>
    </div>
		<? } ?>


	</div>




	  <? if( get_the_content() ==''){ ?>
    <? the_product_info($page_id); ?>
    <? the_pack_info($page_id); ?>
    <? the_product_callback_form($page_id); ?>
	  <? } ?>

</section>
<? get_footer(); ?>
