
<?php get_header(); ?>

<?php

/*

Template name:home

*/

?>
<div class="featured">
	<div class="wrap-featured zerogrid">
		<div class="slider">
			<div class="rslides_container">
				<ul class="rslides" id="slider">
					<?php $sliders = new WP_Query(array(
						'post_type' => 'zboomslider',
						'posts_per_page' => 4
						)); ?>
					<?php while($sliders->have_posts()): $sliders->the_post(); ?>
					<li><?php the_post_thumbnail(); ?></li>
				<?php endwhile; ?>
				</ul>
			</div>
		</div>
	</div>
</div>

<!--Content-->
<section id="content">
	<div class="wrap-content zerogrid">
		<div class="row block01">
			<?php $service = new WP_Query(array(
						'post_type' => 'latest_post',
						'posts_per_page' => 3
						)); ?>
					<?php while($service->have_posts()): $service->the_post(); ?>
			<div class="col-1-3">
				<div class="wrap-col box">
                	
					<h2><?php the_title(); ?></h2>
					<p><?php read_more(20); ?></p>
					<div class="more"><a href="#">[...]</a></div>
				
				</div>
			</div>
			<?php endwhile; ?>
		</div>
		<div class="row block02">
			<div class="wrap-col">
				<?php echo tickr_list_shortcode(); ?>
			</div>
			<div class="wrap-col">
				<?php echo image_scroll_view(); ?>
			</div>
		</div>
		<div class="row block02">
			<div class="col-2-3">
				<div class="wrap-col">
					<div class="heading"><h2>Latest blog</h2></div>
					<?php $mainpost = new WP_Query(array(
						'post_type' => 'post',
						'posts_per_page' => 6
						)); ?>
					<?php while($mainpost->have_posts()): $mainpost->the_post(); ?>
						
					<article class="row">
						<div class="col-1-3">
							<div class="wrap-col">
								<?php if(has_post_thumbnail()==false){?>
									<img src="<?php echo get_template_directory_uri() ?>/images/albums.png">
								<?php } else the_post_thumbnail();?>
							</div>
						</div>
						<div class="col-2-3">
							<div class="wrap-col">
								<h2><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h2>
								<div class="info">By <?php the_author(); ?> on <?php the_time('h A m F Y') ?><a href="<?php the_permalink(); ?>"><?php comments_number(); ?></a></div>
								<p><?php read_more(30); ?></p>
								<a href="<?php the_permalink() ?>"> ... Read more</a></p>
							</div>
						</div>
					</article>
				<?php endwhile; ?>


				</div>
			</div>
			<div class="col-1-3">
				<?php get_sidebar(); ?>
			</div>
		</div>
	</div>
</section>
<?php get_footer(); ?>