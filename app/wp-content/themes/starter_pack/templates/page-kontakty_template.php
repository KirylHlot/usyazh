<?php
/*
  Template Name: Страница контакты
*/
?>
<?
  $page_id = 46;
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

  <div class="contacts_list">

    <div class="left">
      <div class="top">
        <div class="adress_wrapper top_wrap">
          <div class="title">Адрес</div>
		      <? the_field('contacts_adress', 46) ?>
        </div>
        <div class="phones_wrapper top_wrap">

          <div class="ph_wrap">
            <div class="title">Приемная:</div>
            <ul class="phone_list">
				      <?
				      if( have_rows('contacts_phone_priyomnaya', 46) ):
					      while ( have_rows('contacts_phone_priyomnaya', 46) ) : the_row();?>
                  <li>
                    <div class="type"><?= get_sub_field('type'); ?></div>
                    <div class="number"><?= get_sub_field('number'); ?></div>
                  </li>
					      <? endwhile;
				      endif;
				      ?>
            </ul>
          </div>

          <div class="ph_wrap">
            <div class="title">Бухгалтерия:</div>
            <ul class="phone_list">
				      <?
				      if( have_rows('contacts_phone_buhgalteriya', 46) ):
					      while ( have_rows('contacts_phone_buhgalteriya', 46) ) : the_row();?>
                  <li>
                    <div class="type"><?= get_sub_field('type'); ?></div>
                    <div class="number"><?= get_sub_field('number'); ?></div>
                  </li>
					      <? endwhile;
				      endif;
				      ?>
            </ul>
          </div>

          <div class="ph_wrap">
            <div class="title">Отдел снабжения и сбыта:</div>
            <ul class="phone_list">
				      <?
				      if( have_rows('contacts_phone_otdel_snabzheniya', 46) ):
					      while ( have_rows('contacts_phone_otdel_snabzheniya', 46) ) : the_row();?>
                  <li>
                    <div class="type"><?= get_sub_field('type'); ?></div>
                    <div class="number"><?= get_sub_field('number'); ?></div>
                  </li>
					      <? endwhile;
				      endif;
				      ?>
            </ul>
          </div>
        </div>
        <div class="wrapper top_wrap">
          <div class="email_wrapper">
            <div class="title">e-mail</div>
			      <? the_field('contacts_email', 46) ?>
          </div>
          <div class="skype_wrapper">
            <div class="title">skype</div>
			      <? the_field('contacts_skype', 46) ?>
          </div>
        </div>
      </div>

      <div class="bottom">

        <div class="graf_wrapper">
          <div class="title">График работы дирекции</div>
          <div class="desc"><? the_field('contacrs_grafik_direkciya', $page_id); ?></div>
        </div>

        <div class="graf_wrapper">
          <div class="title">График работы производства</div>
          <div class="desc"><? the_field('contacrs_grafik_proizvodstvo', $page_id); ?></div>
        </div>

        <div class="graf_wrapper">
          <div class="title">Отгрузка готовой продукции населению и организациям</div>
          <div class="desc"><? the_field('contacrs_grafik_otgruzka', $page_id); ?></div>
        </div>

      </div>

    </div>

    <div class="right">
      <? needKonsultItem(); ?>
    </div>
  </div>


  </div>

  <div class="map_wrapper">
    <? the_field('contacts_map', $page_id) ?>
  </div>

<div class="main_wrapper">
  <div class="main_content_wrapper">
		<? the_product_callback_form($page_id); ?>
  </div>
</div>


</section>
<? get_footer(); ?>
