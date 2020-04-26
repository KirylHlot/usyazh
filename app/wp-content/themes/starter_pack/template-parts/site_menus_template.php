<?php
function top_menu() {
	?>
  <nav id="top_nav" class="top_nav">
    <div class="inner_wrapper">

      <div class="burger" id="open_menu">
				<? theBurgerIcon(); ?>
      </div>

      <a href="/" class="logo_wrapper">
				<? $main_logo = get_field( 'main_logo', 'option' );
				if ( $main_logo ) {
					?>
          <img src="<? $main_logo['url']; ?>" alt="<? $main_logo['alt']; ?>">
				<? } else {
					theMainLogo();
				}
				?>
      </a>

			<? wp_nav_menu( [
				'theme_location' => 'menu-1',
				'menu_class'     => 'top_menu_wrapper',
				'container'      => 'false'
			] ); ?>

			<?php echo do_shortcode( '[bvi text="Версия для слабовидящих"]' ); ?>

      <div class="phones_wrapper">
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
              </a>
	            <? if ( $counter == 0 and $rows_count > 1 ) {
		            theCarretDownIcon();
	            } ?>
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
      </div>
      <div class="search_button" id="show_search_popup">
        <? theSearchIcon(); ?>
      </div>

    </div>
  </nav>
<? }

function hidden_menu(){?>
<div id="hidden_menu" class="hidden_menu">
  <div class="hidden_menu_wrapper">
    <div class="top_wrapper">
      <? theArrowLeftIcon(); ?>
      <? theMainLogo(); ?>
      <div class="close_menu">
	      <? theCloseMenuIcon(); ?>
      </div>
    </div>
    <div class="search_line">
	    <?= do_shortcode('[wpdreams_ajaxsearchlite]'); ?>
      <div class="button claim">
        Задать вопрос
      </div>
    </div>

  </div>
</div>

<?}