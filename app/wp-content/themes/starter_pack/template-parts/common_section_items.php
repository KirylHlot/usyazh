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
	?>
  <div class="the_production_list">
		<?
		$query   = new WP_Query( array(
			'posts_per_page' => - 1,
			'category__in'   => '10',
			'post_status'    => 'publish',
		) );
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
      <div class="date"><?= get_the_date( 'j F Y', $page_id ) ?></div>
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
      <div class="date"><?= get_the_date( 'j F Y', $page_id ) ?></div>
    </div>
  </a>
<?
}
