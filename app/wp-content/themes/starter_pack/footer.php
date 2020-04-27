<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package starter_pack
 */

?>

<footer id="footer" class="footer">

  <div class="main_wrapper">
    <div class="menu_wrapper footer_menu">
      <div class="menu_column">
        <a href="/produkcija" class="title">Продукция</a>
        <ul>
					<?
					$query   = new WP_Query( array(
						'posts_per_page'   => 10,
						'category_name'    => 'produkcija',
						'post_status'      => 'publish',
						'include_children' => 'false',
					) );
					$counter = 0;
					while ( $query->have_posts() ) {
						$query->the_post(); ?>
            <li>
              <a href="<? the_permalink(); ?>">
								<? the_title(); ?>
              </a>
            </li>
						<?
						$counter ++;
					};
					wp_reset_postdata();
					?>
        </ul>
        <a href="/uslugi" class="title">Услуги</a>
        <ul>
					<?
					$query   = new WP_Query( array(
						'posts_per_page'   => 10,
						'category__in'     => '11',
						'post_status'      => 'publish',
						'include_children' => 'false',
					) );
					$counter = 0;
					while ( $query->have_posts() ) {
						$query->the_post(); ?>
            <li>
              <a href="<? the_permalink(); ?>">
								<? the_title(); ?>
              </a>
            </li>
						<?
						$counter ++;
					};
					wp_reset_postdata();
					?>
        </ul>
      </div>
      <div class="menu_column">
        <a href="/about" class="title">Компания</a>
        <ul>
					<?
					$query   = new WP_Query( array(
						'posts_per_page'   => 10,
						'category__in'     => '1',
						'post_status'      => 'publish',
						'include_children' => 'false',
					) );
					$counter = 0;
					while ( $query->have_posts() ) {
						$query->the_post(); ?>
            <li>
              <a href="<? the_permalink(); ?>">
								<? the_title(); ?>
              </a>
            </li>
						<?
						$counter ++;
					};
					wp_reset_postdata();
					?>
        </ul>
      </div>
      <div class="menu_column">
        <a href="/obsh-zhizn" class="title">Общественная жизнь</a>
        <ul>
					<?
					$query   = new WP_Query( array(
						'posts_per_page'   => 10,
						'category__in'     => '2',
						'post_status'      => 'publish',
						'include_children' => 'false',
					) );
					$counter = 0;
					while ( $query->have_posts() ) {
						$query->the_post(); ?>
            <li>
              <a href="<? the_permalink(); ?>">
								<? the_title(); ?>
              </a>
            </li>
						<?
						$counter ++;
					};
					wp_reset_postdata();
					?>
        </ul>
      </div>
      <div class="menu_column">
        <div class="phones_wrapper">
					<? thePhoneIcon(); ?>
					<?
					$counter = 0;
					if ( get_field( 'cf_phone_zakaz_list', 'option' ) ) {
						$rows_count = count( get_field( 'cf_phone_zakaz_list', 'option' ) );
					}
					if ( have_rows( 'cf_phone_zakaz_list', 'option' ) ):
						while ( have_rows( 'cf_phone_zakaz_list', 'option' ) ) :
							the_row();
							if ( $counter == 1 ) {
								?>
                <div class="hidden_list">
								<?
							}
							?>
              <div class="single_phone_wrapper <?= $counter > 0 ? 'hidden' : ''; ?>">
                <a href="tel:<? the_sub_field( 'phone_invisible' ); ?>"
                   class="phone">
									<? the_sub_field( 'phone_visible' ); ?>
									<? if ( $counter == 0 and $rows_count > 1 ) {
										theCarretDownIcon();
									} ?>
                </a>

              </div>
							<?
							if ( $counter == $rows_count - 1 and $rows_count > 1 ) {
								?>
                </div>
								<?
							}
							$counter ++;
						endwhile;
					endif;
					?>
          <span class="callback">Заказать звонок</span>
        </div>
        <div class="mail_wrapper">
					<? theMailIcon() ?>
          <a href="mailto:<? the_field( 'email_name', 'option' ); ?>" class="email">
						<? the_field( 'email_name', 'option' ); ?>
          </a>
        </div>
        <div class="adress_wrapper">
					<? theMapMarkerIcon(); ?>
          <span><? the_field( 'cf_adress', 'option' ); ?></span>
        </div>
      </div>
    </div>
  </div>
  <div class="line"></div>
  <div class="main_wrapper bottom">
    <div class="copyright">
      © 2020 Все права защищены
    </div>
    <div class="right_part">
      <a href="#">ВЕРСИЯ ДЛЯ ПЕЧАТИ</a>
      <a href="<?= get_field('cf_politic', 'option')['url']; ?>">ПОЛИТИКА КОНФИДЕНЦИАЛЬНОСТИ</a>
    </div>
  </div>

</footer>


<div id="callback_popup" class="callback_popup popup d_none">
  <div class="close_callback_popup">
		<? theCloseMenuIcon(); ?>
  </div>

  <div class="main_content">
    <div class="h2_title">заказать звонок</div>
    <div class="desc">Пожалуйста, укажите свой номер телефона и мы обязательно свяжемся с вами в течение рабочего дня.
    </div>
    <form id="callback_form" class="form_wrapper">
      <input type="hidden" name="email" aria-label="email" value="<? the_field( 'email_name', 'option' ); ?>">
      <input type="hidden" name="page_title" value="<?= get_the_title(); ?>">
      <input type="text" name="name" aria-label="name" placeholder="Ваше имя" required>
      <input type="number" name="phone" aria-label="phone" placeholder="Телефон" required>
      <div class="desc">Нажимая на кнопку «Отправить», я даю согласие на обработку моих персональных данных</div>
      <button class="button">Отправить</button>
    </form>
  </div>
  <div class="alert_done d_none">
    <div class="h2_title">Спасибо</div>
    <div class="desc thank">Мы свяжемся с вами в течение рабочего дня.</div>
  </div>
</div>
<div id="claim_popup" class="claim_popup popup d_none">
  <div class="close_callback_popup">
		<? theCloseMenuIcon(); ?>
  </div>

  <div class="main_content">
    <div class="h2_title">Оставить заявку</div>
    <div class="desc">Пожалуйста, укажите свой номер телефона и мы обязательно свяжемся с вами в течение рабочего дня.
    </div>
    <form id="claim_form" class="form_wrapper">
      <input type="hidden" name="email" aria-label="email" value="<? the_field( 'email_name', 'option' ); ?>">
      <input type="hidden" name="page_title" value="<?= get_the_title(); ?>">
      <input type="text" name="name" aria-label="name" placeholder="Ваше имя" required>
      <input type="number" name="phone" aria-label="phone" placeholder="Телефон" required>
      <textarea name="comment" placeholder="Комментарий" aria-label="comment"></textarea>
      <div class="desc">Нажимая на кнопку «Отправить», я даю согласие на обработку моих персональных данных</div>
      <button class="button">Отправить</button>
    </form>
  </div>
  <div class="alert_done d_none">
    <div class="h2_title">Спасибо</div>
    <div class="desc thank">Мы свяжемся с вами в течение рабочего дня.</div>
  </div>
</div>
<div id="subscribe_popup" class="subscribe_popup popup d_none">
  <div class="close_callback_popup">
		<? theCloseMenuIcon(); ?>
  </div>

  <div class="main_content">
    <div class="h2_title">Подписаться</div>
    <div class="desc">Пожалуйста, укажите свой электронный адрес и мы добавим его в базу для рассылки полезных новостей компании</div>
    <form id="subscribe_form" class="form_wrapper">
      <input type="hidden" name="email" aria-label="email" value="<? the_field( 'email_name', 'option' ); ?>">
      <input type="hidden" name="page_title" value="<?= get_the_title(); ?>">
      <input type="text" name="sub_email" aria-label="email" placeholder="электронная почта" required>
      <div class="desc">Нажимая на кнопку «Отправить», я даю согласие на обработку моих персональных данных</div>
      <button class="button">Отправить</button>
    </form>
  </div>
  <div class="alert_done d_none">
    <div class="h2_title">Спасибо</div>
    <div class="desc thank">Мы рады, что вы нам доверяете.</div>
  </div>
</div>
<div id="overlay" class="d_none"></div>

<? modal_search_template(); ?>
<?php wp_footer(); ?>
</body>
</html>