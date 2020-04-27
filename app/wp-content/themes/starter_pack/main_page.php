<?php
/*
  Template Name: Главная страница
*/
?>
<? $page_id = 11 ?>

<? get_header(); ?>
  <header id="mp_header" class="mp_header"
          style="background-image: url(<?= get_field( 'header_bg', $page_id )['url']; ?>)
            ">
    <div class="main_wrapper">
			<? theQuoteIcon(); ?>
      <div class="pretitle">
        компания
      </div>
      <h1 class="h1_title"><? the_field( 'h1_title', $page_id ); ?></h1>
      <div class="content">
				<? the_field( 'h1_title_content', $page_id ); ?>
      </div>
      <a href="/about" class="button">Подробнее</a>
    </div>
  </header>
  <section id="production" class="production">
    <div class="main_wrapper">
      <div class="title_line">
        <h2 class="h2_title"><? the_field( 'prod_h2', $page_id ) ?></h2>
        <a href="/produkcija" class="remark">Каталог</a>
      </div>
			<? the_production_list(); ?>
    </div>
  </section>
  <section id="our_service" class="our_service">
    <div class="main_wrapper">

      <div class="left_part">
        <h2 class="h2_title"><? the_field( 'our_service_h2', $page_id ) ?></h2>
        <div id="dots_list" class="dots_list">
					<?
					$query = new WP_Query( array(
						'posts_per_page' => - 1,
						'category__in'   => '11',
						'post_status'    => 'publish',
						'order'          => 'ASC'
					) );
					$counter = 0;
					while ( $query->have_posts() ) {
						$query->the_post(); ?>
            <div class="dots_item <?= $counter ==0?'active':''; ?>"><? the_field( 'main_h1' ); ?></div>
						<?
            $counter++;
					};
					wp_reset_postdata();
					?>
        </div>
        <a href="/uslugi" class="remark">Все услуги</a>
      </div>
      <div class="right_part">

        <div class="our_service_carousel_navs">
          <div class="our_service_carousel_left_nav navs"><? theNavLeftIcon(); ?></div>
          <div class="our_service_carousel_right_nav navs"><? theNavRightIcon(); ?></div>
        </div>

        <div class="our_service_carousel owl-carousel">

				<?
				while ( $query->have_posts() ) {
					$query->the_post(); ?>
          <div class="our_service_item">

            <div class="top_part">
              <div class="image_wrapper"
              style="background-image: url('<? the_post_thumbnail_url(); ?>')"
              ></div>
              <div class="content_wrapper">
                <h3 class="h3_title"><? the_field( 'main_h1' ); ?></h3>
                <div class="content">
	                <?=
	                wpautop(mb_substr(strip_tags(get_the_content()), 0, 250, 'UTF-8') . '...');
	                ?>
                </div>
              </div>
            </div>
            <a href="<? the_permalink(); ?>" class="button">
              Подробнее об услуге
            <? theArrowLRightIcon(); ?>
            </a>

          </div>
        <? };
				wp_reset_postdata();
				?>



        </div>
      </div>
    </div>
  </section>
  <section id="about_organization" class="about_organization">
    <div class="inner_wrapper">
      <div class="left_part">
        <a href="/about" class="remark">Об организации</a>
        <h2 class="h2_title"><? the_field('about_organization_h2', $page_id ); ?></h2>
        <h2 class="desc"><? the_field('about_organization_desc', $page_id ); ?></h2>
        <div class="buttons_line">
          <a href="/about" class="button">Подробнее</a>
          <div class="button callback simple_button">Начать сотрудничество</div>
        </div>
      </div>
      <div class="video_wrapper">
        <? the_field('mp_video', $page_id ); ?>
      </div>
    </div>
  </section>
  <section id="news" class="news">
    <div class="main_wrapper">

      <div class="title_line">
        <h2 class="h2_title"><? the_field( 'pressa_h2', $page_id ) ?></h2>
        <div class="simple_link_wrapper subscribe">
          <? thePlainIcon(); ?>
          подписаться на рассылку
        </div>
        <a href="/about/pressa-o-nas/" class="remark">Все публикации</a>
      </div>
      <div class="preview_list">

	      <?
	      $offset = 3;
	      $query = new WP_Query( array(
		      'posts_per_page' => $offset,
		      'category__in'   => array(13,6,3,8),
		      'post_status'    => 'publish',
		      'order'          => 'DESC'
	      ) );

	      $counter = 0;
	      while ( $query->have_posts() ) {
		      $query->the_post();
		      $categories = get_the_category();
		      $cat_name = $categories[0] -> name;
		      if($counter == 0) {
			      previewItemBig(get_the_ID(), $cat_name);
		      }else{
			      previewItem(get_the_ID(), $cat_name);
          }
		      $counter++;
	      };
	      wp_reset_postdata();
	      ?>
      </div>
	    <? echo do_shortcode('[ajax_load_more container_type="div" scroll="false" post_type="post" offset="' . $offset . '" posts_per_page="8" category="ideolog-meropriyat,vse-meropriyatiya,pressa-o-nas,profsoyznye-meropriyatiya" pause="true" button_label="Загрузить еще"]');  ?>
    </div>
  </section>
  <section id="chiefs" class="chiefs">
    <div class="main_wrapper">
      <div class="title_line">
        <h2 class="h2_title"><? the_field( 'chiefs_h2', $page_id ) ?></h2>
        <a href="/about/rukovodstvo/" class="remark">Все сотрудники</a>
      </div>
      <div class="carousel_wrapper">
        <div class="chiefs_carousel_navs">
          <div class="chiefs_carousel_left_nav navs"><? theNavLeftIcon(); ?></div>
          <div class="chiefs_carousel_right_nav navs"><? theNavRightIcon(); ?></div>
        </div>
        <div class="chiefs_carousel owl-carousel">
	        <?
	        if( have_rows('chiefs_list', 23) ):
		        while ( have_rows('chiefs_list', 23) ) : the_row();?>
              <div class="carousel_item"
              style="background-image: linear-gradient(180deg, rgba(0, 0, 0, 0) 0%, rgba(0, 0, 0, 0.76) 100%), url('<?= get_sub_field('image')['sizes']['medium_large']; ?>');">
                <div class="visible_part">
                  <div class="position"><?= get_sub_field('position'); ?></div>
                  <div class="name"><?= get_sub_field('name'); ?></div>
                </div>
                <div class="hidden_part">
                  <div class="phone">
                    <div class="phone_title">
                      ТЕЛЕФОН
                    </div>
                    <span class="number"><?= get_sub_field('phone'); ?></div></span>
                  <div class="button claim">написать сообщение</div>
                </div>
              </div>
		        <? endwhile;
	        endif;
	        ?>
        </div>
      </div>

    </div>
  </section>
  <section id="partners" class="partners">
    <div class="main_wrapper">
      <div class="title_line">
        <h2 class="h2_title"><? the_field( 'partners_h2', $page_id ); ?></h2>
        <a href="/about/rukovodstvo/" class="remark">Все партнеры</a>
      </div>
      <div class="carousel_wrapper">
        <div class="partners_carousel_navs">
          <div class="partners_carousel_left_nav navs"><? theNavLeftIcon(); ?></div>
          <div class="partners_carousel_right_nav navs"><? theNavRightIcon(); ?></div>
        </div>
        <div class="partners_carousel owl-carousel">
	        <?
	        if( have_rows('partners_list', 44) ):
		        while ( have_rows('partners_list',44) ) : the_row();?>
              <div class="carousel_item">
                <img src="<?= get_sub_field('logo')['url']; ?>" alt="<?= get_sub_field('logo')['alt']; ?>">
              </div>
		        <? endwhile;
	        endif;
	        ?>
        </div>
      </div>
    </div>
  </section>
  <div id="contacts" class="contacts section">
    <div class="inner_wrapper">
      <div class="left_part">
        <a href="/contacts/" class="remark">Контакты</a>

          <div class="adress_wrapper">
		        <? the_field('contacts_adress', 46) ?>
          </div>
          <div class="phones_wrapper">

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
          <div class="wrapper">
            <div class="email_wrapper">
              <div class="title">e-mail</div>
              <? the_field('contacts_email', 46) ?>
            </div>
            <div class="skype_wrapper">
              <div class="title">skype</div>
              <? the_field('contacts_skype', 46) ?>
            </div>
          </div>
          <div class="button simple_button claim">
            написать сообщение
          </div>


      </div>

      <div class="right_part">
        <? the_field('contacts_map', 46) ?>
      </div>
    </div>
  </div>
<? get_footer(); ?>