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

      <div class="callback">
        <? thePhoneIcon(); ?>
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
      <div class="arrow_left_icon close_menu">
	      <? theArrowLeftIcon(); ?>
      </div>
      <? theMainLogo(); ?>
	    <?php echo do_shortcode( '[bvi text="Версия для слабовидящих"]' ); ?>
      <div class="close_menu close_icon_wrapper">
	      <? theCloseMenuIcon(); ?>
      </div>
    </div>
    <div class="search_line">
	    <?= do_shortcode('[wpdreams_ajaxsearchlite]'); ?>
      <div class="button claim">
        Задать вопрос
      </div>
    </div>
    <div class="menu_wrapper">
      <div class="menu_column">
        <a href="/produkcija" class="title">Продукция</a>
        <ul>
		      <?
		      $query = new WP_Query(array(
			      'posts_per_page' => 10,
			      'category_name' => 'produkcija',
			      'post_status' => 'publish',
			      'include_children' => 'false',
		      ));
		      $counter = 0;
		      while ($query->have_posts()) {
			      $query->the_post();?>
            <li>
              <a href="<? the_permalink(); ?>">
					      <? the_title(); ?>
              </a>
            </li>
			      <?
			      $counter++;
		      };
		      wp_reset_postdata();
		      ?>
        </ul>
        <a href="/uslugi" class="title">Услуги</a>
        <ul>
		      <?
		      $query = new WP_Query(array(
			      'posts_per_page' => 10,
			      'category__in' => '11',
			      'post_status' => 'publish',
			      'include_children' => 'false',
		      ));
		      $counter = 0;
		      while ($query->have_posts()) {
			      $query->the_post();?>
            <li>
              <a href="<? the_permalink(); ?>">
					      <? the_title(); ?>
              </a>
            </li>
			      <?
			      $counter++;
		      };
		      wp_reset_postdata();
		      ?>
        </ul>
      </div>
      <div class="menu_column">
        <a href="/about" class="title">Компания</a>
        <ul>
			    <?
			    $query = new WP_Query(array(
				    'posts_per_page' => 10,
				    'category__in' => '1',
				    'post_status' => 'publish',
				    'include_children' => 'false',
			    ));
			    $counter = 0;
			    while ($query->have_posts()) {
				    $query->the_post();?>
            <li>
              <a href="<? the_permalink(); ?>">
						    <? the_title(); ?>
              </a>
            </li>
				    <?
				    $counter++;
			    };
			    wp_reset_postdata();
			    ?>
        </ul>
      </div>
      <div class="menu_column">
        <a href="/obsh-zhizn" class="title">Общественная жизнь</a>
        <ul>
			    <?
			    $query = new WP_Query(array(
				    'posts_per_page' => 10,
				    'category__in' => '2',
				    'post_status' => 'publish',
				    'include_children' => 'false',
			    ));
			    $counter = 0;
			    while ($query->have_posts()) {
				    $query->the_post();?>
            <li>
              <a href="<? the_permalink(); ?>">
						    <? the_title(); ?>
              </a>
            </li>
				    <?
				    $counter++;
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
          <span>Заказать звонок</span>
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
    <div class="partners_list">
	    <?
	    if( have_rows('cf_links_list', 'option') ):
		    while ( have_rows('cf_links_list', 'option') ) : the_row();
	        $image = get_sub_field('image' );?>
          <a href="<? the_sub_field('url'); ?>" class="link_item" target="_blank">
            <img src="<?= $image['url']; ?>" alt="<?= $image['alt']; ?>">
          </a>
		    <? endwhile;
	    endif;
	    ?>
    </div>
  </div>
</div>

<?}