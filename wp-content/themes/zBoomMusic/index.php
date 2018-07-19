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
						    <?php the_time('m F, Y'); ?> <?php the_author(); ?>
						    <a href="#"><?php comments_number('No comment', 'One comment', '% comments'); ?></a>
						    <?php
						      //the_post_thumbnail();
						    ?>
						    <p><?php //the_content(); ?></p>
						    <p><?php read_more(50); ?><a href="<?php the_permalink() ?>"> ... Read more</a></p>
						    <p><?php //comments_template(); ?></p>

						   
						    <?php 
						      endWhile;
						    ?>
					</article>
					
					<ul id="pagi">
						<?php the_posts_pagination(array(
						'prev_text'=>'PREV',
						'next_text'=>'NEXT',
						'screen_reader_text'=>' ',
						)); ?>
					</ul>
				</div>
			</div>
			<div class="col-1-3">
				<div class="wrap-col">
					<div class="box">
						<div class="heading"><h2>Latest Albums</h2></div>
						<div class="content">
							<img src="<?php echo get_template_directory_uri(); ?>/images/albums.png"/>
						</div>
					</div>
					<div class="box">
						<div class="heading"><h2>Upcoming Events</h2></div>
						<div class="content">
							<div class="list">
								<ul>
									<li><a href="#">Magic Island Ibiza</a></li>
									<li><a href="#">Bamboo Is Just For You</a></li>
									<li><a href="#">Every Hot Summer</a></li>
									<li><a href="#">Magic Island Ibiza</a></li>
									<li><a href="#">Bamboo Is Just For You</a></li>
									<li><a href="#">Every Hot Summer</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!--Footer-->
<?php get_footer(); ?>