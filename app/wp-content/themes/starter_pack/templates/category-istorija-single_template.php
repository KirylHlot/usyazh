<?php
/*
  Template Post Type: post
  Template Name: История
*/

?>

<?
$page_id = 30;
$parent_link = '/about/';
$menu_name = 'kompany';
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
	      <?
	      if(get_the_content() !==''){ ?>
          <div class="the_content">
			      <? the_content(); ?>
          </div>
	      <? } ?>

        <? the_alert_wrapper($page_id); ?>

        <? the_history_list($page_id); ?>

				<? theFotogalaryTemplate($page_id); ?>


      </div>

    </div>

  </div>


</section>
<? get_footer(); ?>
