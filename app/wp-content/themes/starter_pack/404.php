<?php
/**
 * The template for displaying 404 pages (not found)
 *
 * @link https://codex.wordpress.org/Creating_an_Error_404_Page
 *
 * @package starter_pack
 */

get_header();
?>
  <style>
    .main_wrapper{
      text-align: center;
      padding: 5% 0;
    }

    h1{
      font-size: 32px;
      font-weight: 600;
      margin-bottom: 20px;
    }

    .desc{
      font-size: 24px;
      margin-bottom: 40px;
    }

    .button{
      width: 300px;
      margin: 0 auto;
    }

  </style>

<div class="main_wrapper">
  <h1>Извините, мы не можем найти такую страницу.</h1>
  <div class="desc">(Ошибка 404)</div>
  <a class="button" href="/">На главную страницу</a>
</div>

<?php
get_footer();



