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
<footer id="footer" class="footer"></footer>


<div id="callback_popup" class="callback_popup popup d_none">
  <div class="close_callback_popup">
		<? theCloseMenuIcon(); ?>
  </div>

  <div class="main_content">
    <div class="h2_title">заказать звонок</div>
    <div class="desc">Пожалуйста, укажите свой номер телефона и мы обязательно свяжемся с вами в течение рабочего дня.</div>
    <form id="callback_form" class="form_wrapper">
      <input type="hidden" name="email" aria-label="email" value="<? the_field('email_name', 'option'); ?>">
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
    <div class="h2_title">заказать звонок</div>
    <div class="desc">Пожалуйста, укажите свой номер телефона и мы обязательно свяжемся с вами в течение рабочего дня.</div>
    <form id="claim_form" class="form_wrapper">
      <input type="hidden" name="email" aria-label="email" value="<? the_field('email_name', 'option'); ?>">
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
<div id="overlay" class="d_none"></div>

  <?php wp_footer(); ?>
</body>
</html>