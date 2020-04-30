<?php
/*
  Template Post Type: post
  Template Name: Вакансии
*/

?>

<?
$page_id = 35;
$parent_link = '/';
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

				<?
				if(get_the_content() !==''){ ?>
					<div class="the_content">
						<? the_content(); ?>
					</div>
				<? } ?>

        <div class="hr_block">
          <div class="phone_wrapper">
            <div class="preset">Отдел кадров</div>
            <div class="phone"><? the_field('hr_phone', $page_id); ?></div>
          </div>
          <div class="slogan">
	          <? the_field('hr_slogan', $page_id); ?>
          </div>
          <div class="button claim">отправить резюме</div>
        </div>


        <? the_vakansy_list($page_id); ?>

			</div>

		</div>

	</div>


</section>
<? get_footer(); ?>
