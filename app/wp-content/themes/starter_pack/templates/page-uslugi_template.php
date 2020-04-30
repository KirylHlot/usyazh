<?php
/*
  Template Name: Страница услуги
*/
?>
<?
  $page_id = 102;
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
        <? the_services_list(); ?>
        <div class="the_content">
					<?= wpautop(get_the_content(false, false, $page_id)); ?>
        </div>
      </div>

    </div>

  </div>


</section>
<? get_footer(); ?>
