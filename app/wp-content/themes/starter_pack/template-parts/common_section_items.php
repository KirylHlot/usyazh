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

function previewItemBig( $page_id, $cat_name ) {
	?>
  <a href="<? the_permalink( $page_id ); ?>" class="big_preview_item"
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

function previewItem( $page_id, $cat_name ) {
	?>

  <a href="<? the_permalink( $page_id ); ?>" class="preview_item">
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
      <div class="perk_line">
        <div class="date"><?= get_field( 'event_date', $page_id ); ?></div>
        <div class="category"><?= get_the_category( $page_id )[0]->name; ?></div>
      </div>
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
					<? if ( $filetype === 'ocx' or $filetype === 'doc' ) {
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