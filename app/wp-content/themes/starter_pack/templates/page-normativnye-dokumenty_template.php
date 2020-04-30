<?php
/*
  Template Post Type: post
  Template Name: Нормативные документы
*/
?>

<?
$page_id        = 78;
$parent_link    = '/';
$menu_name      = 'korrupc';
$offset         = 5;
$category__in   = array( 0 );
$posts_per_page = 6;
?>

<? get_header(); ?>
  <section id="main" class="main">
    <div class="main_wrapper">
			<? if ( function_exists( 'yoast_breadcrumb' ) ) {
				yoast_breadcrumb( '<div id="breadcrumbs" class="breadcrumbs">', '</div>' );
			}; ?>

      <div class="h1_wrapper">
        <h1 class="h1_title">
					<? the_field( 'main_h1', $page_id ); ?>
        </h1>

        <?= do_shortcode('[print-me target="body" title="" do_not_print=""]'); ?>
      </div>

      <div class="main_content_wrapper">
				<? sidebarRouter( $menu_name ); ?>
        <div class="the_content_wrapper half_part">

          <? theFileListTemplate($page_id); ?>
					<? if ( get_the_content() !== '' ) { ?>
            <div class="the_content">
							<? the_content(); ?>
            </div>
					<? } ?>

        </div>

      </div>

    </div>


  </section>
<? get_footer(); ?>