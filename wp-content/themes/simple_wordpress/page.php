<?php
    get_header();
?>
	
	<section id="blog" class="container">

        <div class="blog">
            <div class="row">
                <div class="col-md-8">
                <?php
                        while(have_posts()): the_post();
                    ?>
                    <div class="blog-item wow fadeInDown">
                        <div class="row">
                            <div class="col-xs-12 col-sm-2 text-center">
                                
                            </div>
                                
                            <div class="col-xs-12 col-sm-10 blog-content">
                                <!-- <a href="<?php the_permalink() ?>"><?php the_post_thumbnail(); ?></a><br> -->
                                <h2><a href="<?php the_permalink() ?>"><?php //the_title() ?></a></h2>
                                <p><?php the_content(); ?></p>
                            </div>
                        </div>    
                    </div><!--/.blog-item-->
                <?php endwhile ?>
                    <!--/.pagination-->    
                </div><!--/.col-md-8-->

                <aside class="col-md-4">
                    <!--/.search-->

                    <?php dynamic_sidebar('sidebar_2'); ?> 

    			</aside>  
            </div><!--/.row-->
        </div>
    </section><!--/#blog-->
	
	

    
	<?php get_footer(); ?>