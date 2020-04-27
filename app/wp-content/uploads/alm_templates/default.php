<? 
	$categories = get_the_category();
	$cat_name = $categories[0] -> name;
	$page_id = get_the_ID();
?>
<a href="<? the_permalink($page_id); ?>" class="preview_item">
    <div class="thumbnail"
          style="background-image: url('<?= get_the_post_thumbnail_url($page_id); ?>')"></div>
    <div class="content">
      <div class="category">
				<?= $cat_name; ?>
      </div>
      <div class="title"><? the_field( 'main_h1', $page_id ); ?></div>
      <div class="date"><?= get_the_date( 'j F Y', $page_id ) ?></div>
    </div>
  </a>