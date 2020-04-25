<?php
function top_menu(){?>
	<nav id="top_nav" class="top_nav" >
		<div class="inner_wrapper">
		<div id="left_menu_phones_list_item" class="phones_list">
			<div class="phones_list_item">

				<div class="burger" id="open_menu">
					<? theBurgerIcon(); ?>
				</div>

				<a href="/" class="logo_wrapper">
					<? $main_logo = get_field('main_logo', 'option');
					if($main_logo){?>
						<img src="<? $main_logo['url']; ?>" alt="<? $main_logo['alt']; ?>">
					<?} else{
						theMainLogo();
					}
					?>
				</a>

				<? wp_nav_menu([
					'theme_location'  => 'menu-1',
					'menu_id' => 'top_menu_wrapper'
				]);  ?>


				<div class="phones_wrapper">
					<?
					$counter = 0;
					if(get_field('cf_phone_zakaz_list', 'option')){
						$rows_count = count(get_field('cf_phone_zakaz_list', 'option'));
					}
					if (have_rows('cf_phone_zakaz_list', 'option')):
						while (have_rows('cf_phone_zakaz_list', 'option')) :
							the_row();
							if($counter == 1){?>
								<div class="hidden_list d_none">
							<?}
							?>
							<div class="single_phone_wrapper <?= $counter > 0?'hidden':''; ?>">
								<? if($counter == 0 and $rows_count > 1){
									theCarretDownIcon();
								}?>
								<a href="tel:<? the_sub_field('phone_visible'); ?>"
								   class="phone">
									<? the_sub_field('phone_visible'); ?>
								</a>

							</div>
							<?
							if($counter == $rows_count - 1 and $rows_count > 1){?>
								</div>
							<?}
							$counter++;
						endwhile;
					endif;
					?>
				</div>

			</div>
		</div>
	</div>
	</nav>
<?}