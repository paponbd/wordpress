<?php get_header(); ?>

<?php

/*

Template name:home

*/

?>
	
	<div class="slider wow fadeInDown">
		<div class="container">
			<div id="about-slider">
                <div id="carousel-slider" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators visible-xs">
                        <li data-target="#carousel-slider" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-slider" data-slide-to="1"></li>
                        <li data-target="#carousel-slider" data-slide-to="2"></li>
                    </ol>

                    <div class="carousel-inner">
                        <?php $jpost = new WP_Query(array(
                        'post_type' => 'wp_slider',
                        'posts_per_page' => 6,
                        ));
                            $abc = 0;
                        ?>
                        <?php while($jpost->have_posts()): $jpost->the_post(); $abc++; ?>
                        <?php if($abc==1): ?>
                            <div class="item active">
                        <?php else : ?>
                            <div class="item">
                        <?php endif; ?>
                            <?php the_post_thumbnail(); ?> 
                       </div>
                       <?php endwhile; ?> 
                    </div>
                    
                    <a class="left carousel-control hidden-xs" href="#carousel-slider" data-slide="prev">
                        <i class="fa fa-angle-left"></i> 
                    </a>
                    
                    <a class=" right carousel-control hidden-xs"href="#carousel-slider" data-slide="next">
                        <i class="fa fa-angle-right"></i> 
                    </a>
                </div> <!--/#carousel-slider-->
            </div>
		</div>
	</div>

	 <section id="feature" >
        <div class="container">
           <div class="center wow fadeInDown">
                <h2>Features</h2>
                <p class="lead">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut <br> et dolore magna aliqua. Ut enim ad minim veniam</p>
            </div>

            <div class="row">
                <div class="features">
                    <?php $fpost = new WP_Query(array(
                        'post_type' => 'wp_feature',
                        'posts_per_page' => 6,
                        )); ?>
                    <?php while($fpost->have_posts()): $fpost->the_post(); ?>
                    <div class="col-md-4 col-sm-6 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
                        <div class="feature-wrap">
                            <i class="fa fa-laptop"></i>
                            <h2><?php the_title(); ?></h2>
                            <h3><?php the_content(); ?></h3>
                        </div>
                    </div><!--/.col-md-4-->
                    <?php endwhile; ?>
                </div><!--/.services-->
            </div><!--/.row-->    
        </div><!--/.container-->
    </section><!--/#feature-->
	
    <section id="services" class="service-item">
       <div class="container">
            <div class="center wow fadeInDown">
                <h2>Our Service</h2>
                <p class="lead">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut <br> et dolore magna aliqua. Ut enim ad minim veniam</p>
            </div>

            <div class="row">
                    <?php $fpost = new WP_Query(array(
                        'post_type' => 'wp_feature',
                        'posts_per_page' => 6,
                        )); ?>
                    <?php while($fpost->have_posts()): $fpost->the_post(); ?>
                <div class="col-sm-6 col-md-4">
                    <div class="media services-wrap wow fadeInDown">
                        <div class="pull-left">
                            <img class="img-responsive" src="<?php echo get_template_directory_uri(); ?>/images/services/services1.png">
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading"><?php the_title(); ?></h3>
                            <p><?php the_content(); ?></p>
                        </div>
                    </div>
                </div>
                <?php endwhile ?>                                                
            </div><!--/.row-->
        </div><!--/.container-->
    </section><!--/#services-->
	 <section id="recent-works">
        <div class="container">
            <div class="center wow fadeInDown">
                <h2>Recent Works</h2>
                <p class="lead">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut <br> et dolore magna aliqua. Ut enim ad minim veniam</p>
            </div>

            <div class="row">
                <?php $wpost = new WP_Query(array(
                        'post_type' => 'wp_works',
                        'posts_per_page' => 8,
                        )); ?>
                    <?php while($wpost->have_posts()): $wpost->the_post(); ?>
                <div class="col-xs-12 col-sm-4 col-md-3">
                    <div class="recent-work-wrap wow fadeInDown">
                        <?php the_post_thumbnail(); ?>
                        <div class="overlay">
                            <div class="recent-work-inner">
                                <h3><a href="#">Business theme</a> </h3>
                                <p>There are many variations of passages of Lorem Ipsum available, but the majority</p>
                                <a class="preview" href="images/portfolio/full/item1.png" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                            </div> 
                        </div>
                    </div>
                </div> 
                <?php endwhile ?>    
            </div><!--/.row-->
        </div><!--/.container-->
    </section><!--/#recent-works-->	
	
    <section id="middle">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 wow fadeInDown">
                    <div class="skill">
                        <h2>Our Skills</h2>
                          <div class="progress-wrap">
                             <?php dynamic_sidebar('sidebar_3') ?> 
                          </div>
                        </div>
                    </div>
                </div><!--/.col-sm-6-->

            </div><!--/.row-->
        </div><!--/.container-->
    </section><!--/#middle-->
	
	<?php get_footer(); ?>