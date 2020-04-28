<?php
/*
  Template Post Type: post
  Template Name: Общее мероприятие
*/
?>

<?
$page_id = get_the_ID();
$parent_link = '/obsh-zhizn/vse-meropriyatiya/';
$menu_name = 'obsh_zhizn';
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
				<div class="print_wrapper">
					<? thePrintIcon(); ?>
				</div>

			</div>

		<div class="main_content_wrapper">
			<? sidebarRouter($menu_name); ?>
      <div class="the_content_wrapper">
        <? innerPageTopTemplate($page_id); ?>
        <div class="the_content">
		      <? the_content(); ?>
        </div>
        <? theFotogalaryTemplate($page_id); ?>
        <? theFileListTemplate($page_id); ?>
        <? backToListButton($parent_link); ?>
      </div>

		</div>

		</div>


	</section>
<? get_footer(); ?>
