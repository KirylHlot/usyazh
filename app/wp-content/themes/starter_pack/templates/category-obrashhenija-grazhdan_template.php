<?php
/*
  Template Post Type: post
  Template Name: Обращения граждан
  */
?>

<?
$page_id = 827;
$parent_link = '/obsh_zhizn/';
$menu_name = 'obsh_zhizn';
$offset = 5;
$category__in = array(0);
$posts_per_page = 6;
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

          <? theFileListTemplate($page_id); ?>

          <div class="bottom_part">

            <div class="obr_gr_wrapper">
              <div class="title">Форма обращения</div>

              <form id="obr_gr_form" class="form_wrapper">
                <input type="hidden" name="email" aria-label="email" value="<? the_field( 'email_name', 'option' ); ?>">
                <input type="hidden" name="page_title" value="<?= get_the_title(); ?>">


                <input type="text" name="name" aria-label="name" placeholder="Ваше ФИО (полностью) или наименование Юр. лица *" required>
                <input type="number" name="phone" aria-label="phone" placeholder="Ваш контактный телефон *" required>
                <input type="text" name="sub_email" aria-label="email" placeholder="Ваш E-mail *" required>
                <input type="text" name="topic" aria-label="topic" placeholder="Тема">
                <input type="text" name="message" aria-label="message" placeholder="Сообщение" required>



                <button class="button">Отправить</button>

              </form>

              <div id="obr_gr_alert_done" class="alert_done d_none">Ваше сообщение отправлено!</div>
            </div>



            <? needKonsultItem(); ?>

          </div>

				</div>

			</div>

		</div>


	</section>
<? get_footer(); ?>