<?php
    get_header();
?>
	
	<section id="blog" class="container ">
        
            <?php $blog_title = new WP_Query(array(
                        'post_type' => 'blog_title',
                        'posts_per_page' => 1,
                        )); ?>
                    <?php while($blog_title->have_posts()): $blog_title->the_post(); ?>
            <div class="center wow fadeInDown">        
            <h2><?php the_title(); ?></h2>
            <p class="lead"><?php the_content(); ?></p>
            </div>
            <?php endwhile ?>
        

        <div class="blog">
            <div class="row">
                 <div class="col-md-8">
                    <?php
                        while(have_posts()): the_post();
                    ?>
                    <div class="blog-item wow fadeInDown">
                        <div class="row">
                            <div class="col-xs-12 col-sm-2 text-center">
                                <div class="entry-meta">
                                    <span id="publish_date"><?php the_time('m F, Y'); ?></span>
                                    <span><i class="fa fa-user"></i> <a href="#"><?php the_author(); ?></a></span>
                                    <span><i class="fa fa-comment"></i> <a href="blog-item.html#comments"><?php comments_number('No comment', 'One comment', '% comments'); ?></a></span>
                                </div>
                            </div>
                                
                            <div class="col-xs-12 col-sm-10 blog-content">
                                <!-- <a href="<?php the_permalink() ?>"><?php the_post_thumbnail(); ?></a><br> -->
                                <h2><a href="<?php the_permalink() ?>"><?php the_title() ?></a></h2>
                                <p><?php read_more(50); ?></p>
                                <a class="btn btn-primary readmore" href="<?php the_permalink() ?>">Read More <i class="fa fa-angle-right"></i></a>
                            </div>
                        </div>    
                    </div><!--/.blog-item-->
                <?php endwhile ?>
                        
                        
                    
                    <ul class="pagination pagination-lg">
                        <li ><?php previous_posts_link(); ?></li>
                        <li ><?php next_posts_link(); ?></li>
                    </ul><!--/.pagination-->
                    <!--/.pagination-->
                </div><!--/.col-md-8-->

                <aside class="col-md-4">
                    <!--/.search-->

                    <?php get_sidebar(); ?> 

    			</aside>  
            </div><!--/.row-->
        </div>
    </section><!--/#blog-->
	
	

    
	<?php get_footer(); ?>