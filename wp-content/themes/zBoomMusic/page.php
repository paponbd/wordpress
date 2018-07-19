<?php get_header(); ?>

<!--Content-->
<section id="content">
	<div class="wrap-content zerogrid">
		<div class="row block03">
			<div class="col-2-3">
				<div class="wrap-col">
					<article>
						<?php
						      while(have_posts()): the_post();
						    ?>
						    <h1><a href="<?php the_permalink() ?>"><?php the_title() ?></a></h1>
						    <?php //the_time('m F, Y'); ?> <?php //the_author(); ?>
						    <a href="#"><?php //comments_number('No comment', 'One comment', '% comments'); ?></a>
						    <?php
						      the_post_thumbnail();
						    ?>
						    <p><?php the_content(); ?></p>
						    <p><?php //comments_template(); ?></p>

						   <div class="comment">
							<?php //comments_template(); ?>
						</div>
						    <?php 
						      endWhile;
						    ?>
					</article>
					
					
				</div>
			</div>
			<div class="col-1-3">
				<?php get_sidebar(); ?>
			</div>
		</div>
	</div>
</section>
<!--Footer-->
<?php get_footer(); ?>