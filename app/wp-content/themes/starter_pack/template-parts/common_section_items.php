<?php
function modal_search_template() {
	?>
  <div class="modal_search_wrapper">
    <div class="ms_wrapper">
			<?= do_shortcode( '[wpdreams_ajaxsearchlite]' ); ?>
      <div class="close_search_popup"><? theCloseMenuIcon(); ?></div>
    </div>
  </div>
	<?
}

function the_production_list() {
	$query = new WP_Query( array(
		'posts_per_page' => - 1,
		'category__in'   => '10',
		'post_status'    => 'publish',
	) );
	?>
  <div class="the_production_list">
		<?
		$counter = 0;
		while ( $query->have_posts() ) {
			$query->the_post(); ?>
      <a href="<? the_permalink(); ?>" class="item_wrapper">
        <div class="thumbnail" style="background-image: url('<? the_post_thumbnail_url(); ?>')"></div>
        <div class="title"><? the_field( 'main_h1' ); ?></div>
      </a>
			<?
			$counter ++;
		};
		wp_reset_postdata();
		?>
  </div>
	<?
}

function the_services_list() {
	$query = new WP_Query( array(
		'posts_per_page' => - 1,
		'category__in'   => '11',
		'post_status'    => 'publish',
		'order'          => 'ASC'
	) );
	?>
  <div class="the_services_list">
		<?
		$counter = 0;
		while ( $query->have_posts() ) {
			$query->the_post(); ?>

      <a href="<? the_permalink(); ?>" class="item_wrapper">
        <div class="thumbnail" style="background-image: url('<? the_post_thumbnail_url(); ?>')"></div>
        <span class="right_part">
          <div class="title"><? the_field( 'main_h1' ); ?></div>
          <span class="page_content">
              <?=
              wpautop( mb_substr( strip_tags( get_the_content() ), 0, 250, 'UTF-8' ) . '...' );
              ?>
          </span>
        </span>
        <span class="go">
        <? theArrowLRightIcon(); ?>
      </span>
      </a>

			<?
			$counter ++;
		};
		wp_reset_postdata();
		?>
  </div>
	<?
}

function the_autopark_list( $page_id ) {
	if ( have_rows( 'the_autopark_list', $page_id ) ):
		?>

    <h3 class="h3_title"><? the_field( 'h3_title', $page_id ); ?></h3>
    <div class="the_autopark_list">
			<?
			while ( have_rows( 'the_autopark_list', $page_id ) ) : the_row();
				$image_url = get_sub_field( 'image' )['url'];
				$desc      = get_sub_field( 'desc' );
				?>
        <div class="autopark__item">
          <div class="image_wrapper" style="background-image: url(<?= $image_url; ?>)"></div>
          <div class="desc"><?= $desc; ?></div>
        </div>
			<? endwhile;
			?>
    </div>

	<?
	endif;
}

function the_start_friendship() {
	?>
  <div class="the_start_friendship">
		<? theMailMediumIcon(); ?>
    <div class="content">
      Начните сотрудничество с индивидуальной консультации по подбору продукции и цсловий доставки.
    </div>
    <div class="button_line">
      <div class="button claim">заказать услугу</div>
      <div class="button simple_button callback">
				<? theQuestionIcon(); ?>
      </div>
    </div>

  </div>
	<?
}

function previewItemBig( $page_id, $cat_name, $size = '' ) {
	?>
  <a href="<? the_permalink( $page_id ); ?>" class="big_preview_item <?= $size; ?>"
     style="background-image: url('<?= get_the_post_thumbnail_url( $page_id ); ?>')">
    <div class="content">
      <div class="category">
				<?= $cat_name; ?>
      </div>
      <div class="title"><? the_field( 'main_h1', $page_id ); ?></div>
      <div class="date"><? the_field( 'event_date', $page_id ); ?></div>
    </div>
  </a>
	<?
}

function previewItem( $page_id, $cat_name, $size = '' ) {
	?>

  <a href="<? the_permalink( $page_id ); ?>" class="preview_item <?= $size; ?>">
    <div class="thumbnail"
         style="background-image: url('<?= get_the_post_thumbnail_url( $page_id ); ?>')"></div>
    <div class="content">
      <div class="category">
				<?= $cat_name; ?>
      </div>
      <div class="title"><? the_field( 'main_h1', $page_id ); ?></div>
      <div class="date"><? the_field( 'event_date', $page_id ); ?></div>
    </div>
  </a>
	<?
}

function innerPageTopTemplate( $page_id ) {
	if ( get_field( 'inner_img', $page_id ) ) {
		?>
    <div class="inner_page_top">
      <div class="page_top_image_wrapper"
           style="background-image: url('<?= get_field( 'inner_img', $page_id )['url']; ?>')"></div>
			<? if ( get_field( 'event_date', $page_id ) and get_field( 'event_date', $page_id ) !== '' ) { ?>
        <div class="perk_line">
          <div class="date"><?= get_field( 'event_date', $page_id ); ?></div>
          <div class="category"><?= get_the_category( $page_id )[0]->name; ?></div>
        </div>
			<? } ?>
    </div>
		<?
	}
}

function theFotogalaryTemplate( $page_id, $full_page = '' ) {
//  <!-- $full_page = 'full_page' -->
	if ( have_rows( 'faotogalary_list', $page_id ) ):
		?>
    <div class="fotogalary_wrapper <?= $full_page ?>">
			<?
			while ( have_rows( 'faotogalary_list', $page_id ) ) : the_row(); ?>
				<? $galary_img = get_sub_field( 'image' ); ?>
        <a data-fancybox="galary" href="<? echo $galary_img['url']; ?>" class="image_item"
           style="background-image: url('<? echo $galary_img['sizes']['medium']; ?>')"></a>
			<? endwhile;
			?>
    </div>
	<?
	endif;
}

function the_customer_list( $page_id, $full_page = '' ) {

	if ( have_rows( 'the_customer_list', $page_id ) ):
		?>
    <div class="the_customer_list <?= $full_page ?>">
			<?
			while ( have_rows( 'the_customer_list', $page_id ) ) : the_row(); ?>
				<? $galary_img = get_sub_field( 'image' ); ?>
        <div class="customer_item">
          <a data-fancybox="galary" href="<?= $galary_img['url']; ?>" class="image_item"
             style="background-image: url('<?= $galary_img['sizes']['medium']; ?>')"></a>
          <div class="content_wrapper">
            <div class="position"><?= get_sub_field( 'position' ); ?></div>
            <div class="name"><?= get_sub_field( 'name' ); ?></div>
          </div>
        </div>
			<? endwhile;
			?>
    </div>
	<?
	endif;
}

function the_vakansy_list( $page_id ) {

	if ( have_rows( 'the_vakansy_list', $page_id ) ):
		?>
    <div class="the_vakansy_list">
			<?
			while ( have_rows( 'the_vakansy_list', $page_id ) ) : the_row();
				$vk_title      = get_sub_field( 'vk_title' );
				$vk_price      = get_sub_field( 'vk_price' );
				$vk_education  = get_sub_field( 'vk_education' );
				$vk_experience = get_sub_field( 'vk_experience' );
				$vk_housing    = get_sub_field( 'vk_housing' );
				?>
        <div class="vakansy_item">
          <div class="top_part">
            <div class="vk_title">
							<?= $vk_title; ?>
            </div>
            <div class="vk_price">
							<?= $vk_price; ?>
            </div>
          </div>
          <div class="bottom_part">
            <div class="vk_education hr_column">
              <div class="preset">Образование</div>
              <span><?= $vk_education; ?></span>
            </div>
            <div class="vk_experience hr_column">
              <div class="preset">Cтаж работы</div>
              <span><?= $vk_experience; ?></span>
            </div>
            <div class="vk_housing hr_column">
              <div class="preset">Обеспеченность жильем</div>
              <span><?= $vk_housing; ?></span>
            </div>
          </div>
        </div>
			<? endwhile;
			?>
    </div>
	<?
	endif;
}

function theFileListTemplate( $page_id ) {
	if ( have_rows( 'file_list', $page_id ) ):
		?>
    <div class="files_list">
			<?
			$counter = 0;

			while ( have_rows( 'file_list', $page_id ) ) : the_row();
				$file     = get_sub_field( 'file' );
				$size     = round( $file['filesize'] / 1000 );
				$url      = $file['url'];
				$filetype = substr( $file['filename'], - 3 );
				?>
        <div class="file_item">
					<? if ( $filetype === 'ocx' or $filetype === 'doc' or $filetype === 'rtf' ) {
						theDocIcon();
					} else if ( $filetype === 'pdf' ) {
						thePdfIcon();
					} else {
						theLsxIcon();
					} ?>
          <a href="<?= $url; ?>" class="info_wrapper">
            <div class="filename"><? the_sub_field( 'filename' ); ?></div>
            <div class="filesize"><?= $size; ?>кб</div>
          </a>
          <a href="<?= $url; ?>" class="download">
						<? theDownloadIcon(); ?>
          </a>
        </div>
			<?
			endwhile;

			?>
    </div>
	<?
	endif;
}

function backToListButton( $link ) {
	if ( $link === '' ) {
		return '';
	} else { ?>
    <a href="<?= $link; ?>" class="back_to_list">
			<? theArrowLeftIcon(); ?>
      Назад к списку
    </a>
		<?
	}
}

function the_preview_list( $offset, $category__in, $posts_per_page = 8, $size = '' ) {
	?>

  <div class="preview_list <?= $size; ?>">

		<?
		$query = new WP_Query( array(
			'posts_per_page' => $offset,
			'category__in'   => $category__in,
			'post_status'    => 'publish',
			'order'          => 'DESC'
		) );

		$counter  = 0;
		$cat_slug = '';
		while ( $query->have_posts() ) {
			$query->the_post();
			$categories = get_the_category();
			$cat_name   = $categories[0]->name;
			$cat_slug   = $categories[0]->slug;
			if ( $counter == 0 ) {
				previewItemBig( get_the_ID(), $cat_name, $size );
			} else {
				previewItem( get_the_ID(), $cat_name, $size );
			}
			$counter ++;
		};
		wp_reset_postdata();
		?>
  </div>
	<? echo do_shortcode( '[ajax_load_more container_type="div" scroll="false" post_type="post" offset="' . $offset . '" posts_per_page="' . $posts_per_page . '" category="' . $cat_slug . '" pause="true" button_label="Загрузить еще"]' ); ?>

	<?
}

function needKonsultItem() {
	?>
  <div class="need_konsult_wrapper">
		<? theMailBigIcon(); ?>
    <div class="title">Нужна консультация?</div>
    <div class="desc">Наши специалисты ответят на любой интересующий вопрос</div>
    <div class="link claim">задать вопрос</div>
  </div>
<? }

function the_chiefs_list() {
	if ( have_rows( 'chiefs_list', 23 ) ):
		?>
    <div class="the_chiefs_list">
			<?
			while ( have_rows( 'chiefs_list', 23 ) ) : the_row();
				$image_url = get_sub_field( 'image' )['sizes']['medium_large'];
				$phone     = get_sub_field( 'phone' );
				$name      = get_sub_field( 'name' );
				$position  = get_sub_field( 'position' );
				$graffik   = get_sub_field( 'graffik' );
				?>
        <div class="chief_item">
          <div class="image_wrapper" style="background-image: url('<?= $image_url; ?>')"></div>
          <div class="content_part">
            <div class="position preset"><?= $position; ?></div>
            <div class="name"><?= $name; ?></div>
            <div class="phone">
              <div class="preset">Телефон</div>
              <div class="inner"><?= $phone; ?></div>
            </div>
            <div class="graffik">
              <div class="preset">ГРАФИК ПРИЕМА ГРАЖДАН И ЮРИДИЧЕСКИХ ЛИЦ</div>
              <div class="inner"><?= $graffik; ?></div>
            </div>
          </div>
          <div class="right_part">
            <div class="button claim simple_button">написать сообщение</div>
          </div>
        </div>
			<? endwhile;
			?>
    </div>
	<?
	endif;
}

function the_history_list( $page_id ) {
	if ( have_rows( 'the_history_list', $page_id ) ):
		?>
    <h2 class="the_history_list h2_title">Исторические вехи:</h2>
    <div class="the_history_list">
			<?
			while ( have_rows( 'the_history_list', $page_id ) ) : the_row();
				$hs_date = get_sub_field( 'hs_date' );
				$hs_desc = get_sub_field( 'hs_desc' );
				?>

        <div class="hs_item">
          <div class="date"><?= $hs_date; ?></div>
          <div class="desc"><?= $hs_desc; ?></div>
        </div>


			<? endwhile;
			?>
    </div>
	<?
	endif;
}

function the_partners_list( $page_id ) {
	if ( have_rows( 'partners_list', $page_id ) ):
		?>

    <div class="the_partners_list">
			<?
			while ( have_rows( 'partners_list', $page_id ) ) : the_row();
				$logo_url = get_sub_field( 'logo' )['url'];
				$logo_alt = get_sub_field( 'logo' )['alt'];
				$title    = get_sub_field( 'title' );
				$adress   = get_sub_field( 'adress' );
				?>

        <div class="partner_item">

          <div class="logo_wrapper">
            <img src="<?= $logo_url; ?>" alt="<?= $logo_alt; ?>">
          </div>
          <div class="title"><?= $title; ?></div>
          <div class="adress">
            <div class="pretitle">Адрес</div>
            <span><?= $adress; ?></span>
          </div>
        </div>


			<? endwhile;
			?>
    </div>
	<?
	endif;
}

function the_alert_wrapper( $page_id ) {
	?>
  <div class="the_alert_wrapper">
		<? theAlertIcon(); ?>
    <div class="desc"><? the_field( 'alert_desc', $page_id ); ?></div>
  </div>
	<?
}

function the_product_info( $page_id, $d_none = '' ) {
	$product_image_url = get_field( 'product_image', $page_id )['url'];
	$pre_perk_field    = get_field( 'pre_perk_field', $page_id );
	$after_perk_field  = get_field( 'after_perk_field', $page_id );
	?>

  <div class="the_product_info">
    <div class="main_wrapper">
      <div class="left_part">
        <div class="image_wrapper"
             style="background-image: url(<?= $product_image_url; ?>)"
        ></div>
      </div>
      <div class="right_part">

        <div class="pre_perk_field perk_field">
					<?= $pre_perk_field; ?>
        </div>
        <div class="product_charact_list">
					<?
					if ( have_rows( 'product_charact_list', $page_id ) ):
						while ( have_rows( 'product_charact_list', $page_id ) ) : the_row();
							$name          = get_sub_field( 'name' );
							$product_exect = get_sub_field( 'product_exect' );
							?>
              <div class="charact_line">
                <div class="name"><?= $name; ?></div>
                <div class="product_exect"><?= $product_exect; ?></div>
              </div>
						<? endwhile;
					endif;
					?>
        </div>
        <div class="after_perk_field perk_field">
					<?= $after_perk_field; ?>
        </div>
        <div class="curs <?= $d_none; ?>">
          <span>Упаковка</span>
					<? theArrowLRightIcon(); ?>
        </div>
      </div>
    </div>
  </div>

	<?
}

function the_pack_info( $page_id ) {
	if ( have_rows( 'pack_list', $page_id ) ):
		?>
    <div class="the_pack_info">
      <div class="main_wrapper h3_t">
        <h3 class="h3_title">
          Упаковка
        </h3>
      </div>
      <div class="main_wrapper">
        <div class="left_part">

          <div class="pack_list">
						<?

						while ( have_rows( 'pack_list', $page_id ) ) : the_row();
							$desc          = get_sub_field( 'desc' );
							$price         = get_sub_field( 'price' );
							$price_comment = get_sub_field( 'price_comment' );
							$image_url     = get_sub_field( 'image' )['url'];
							?>

              <div class="pack_item">
                <div class="content_wrap">
                  <div class="desc"><?= $desc; ?></div>
                  <div class="bottom">
                    <div class="title">цена</div>
                    <div class="price">
											<?= $price; ?>
                    </div>
                    <div class="price_comment">
											<?= $price_comment; ?>
                    </div>
                  </div>
                </div>
                <div class="image_wrap"
                     style="background-image: url(<?= $image_url; ?>)"></div>
              </div>

						<? endwhile;
						?>


          </div>
        </div>
        <div class="right_part">
					<? needKonsultItem(); ?>
        </div>
      </div>
    </div>
	<?
	endif;
}

function the_product_callback_form($page_id){?>
  <div class="the_product_callback_form">
    <div class="main_wrapper h3_t">
      <h3 class="h3_title">
        Форма заказа
      </h3>
    </div>
    <div class="main_wrapper">

      <div class="product_form_wrapper">
        <form id="product_form" class="form_wrapper">

          <input type="hidden" name="email" aria-label="email" value="<? the_field( 'email_name', 'option' ); ?>">
          <input type="hidden" name="page_title" value="<?= get_the_title(); ?>">
          <input type="hidden" name="usloviya" id="usloviya" value="Самовывоз">
          <input type="hidden" name="product" id="product" value="Брикеты топливные БТ-2">


          <input type="text" name="name" aria-label="name" placeholder="Ваше ФИО (полностью) или наименование Юр. лица *" required>
          <input type="number" name="phone" aria-label="phone" placeholder="Ваш контактный телефон *" required>
          <input type="text" name="sub_email" aria-label="email" placeholder="Ваш E-mail *" required>

          <div class="custom_select">
            <div class="title">Продукция</div>
            <div class="wrap">

              <div class="visible">
                <span id="vis_item" class="vis_item">Брикеты топливные БТ-2</span>
                <? theNavBottomIcon(); ?>
              </div>
              <div id="invisible_block" class="invisible d_none">
                <span class="invis_item">Грунт растительный на основе торфа</span>
                <span class="invis_item">Топливо на основе торфа для ТЭЦ и котельных</span>
                <span class="invis_item">Мелиорант грунтов технический торфозольный</span>
                <span class="invis_item">Топливо торфодревесное</span>
              </div>
            </div>
          </div>
          
          
          <input type="text" name="massa" aria-label="massa" placeholder="Количество покупаемой продукции (в тоннах)" required>

          <div class="custom_checkbox">
            <div class="title">Условия поставки</div>
            <div class="wrap">
              <div id="sam" class="c_checkbox active">Самовывоз</div>
              <div id="dost" class="c_checkbox ">Доставка</div>
            </div>

          </div>


          <input type="text" name="adress" aria-label="adress" placeholder="Адрес доставки или реквизиты Юр. лица" required>



          <button class="button">Отправить</button>

        </form>
        <div id="product_form_done" class="alert_done d_none">Ваше сообщение отправлено!</div>
      </div>
      <div class="info_wrapper">
        <?= wpautop(get_field( 'bank_rek', $page_id));  ?>
      </div>
    </div>
  </div>
<?}