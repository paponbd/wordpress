<section id="bottom">
        <div class="container wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
            <div class="row">
                <?php dynamic_sidebar('footer_widget'); ?>
            </div>
        </div>
    </section><!--/#bottom-->
    
    <div class="top-bar">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                   <div class="social">
                        <ul class="social-share">
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li> 
                            <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                            <li><a href="#"><i class="fa fa-skype"></i></a></li>
                        </ul>
                   </div>
                </div>
            </div>
        </div><!--/.container-->
    </div><!--/.top-bar-->
<footer id="footer" class="midnight-blue">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    &copy; 2018 &nbsp;<a target="_blank" href="<?php bloginfo('home'); ?>"><?php echo bloginfo('name'); ?>&nbsp;</a> All Rights Reserved.
                </div>
                <!-- 
                    All links in the footer should remain intact. 
                    Licenseing information is available at: http://bootstraptaste.com/license/
                    You can buy this theme without footer links online at: http://bootstraptaste.com/buy/?theme=Gp
                -->
                <div class="col-sm-6">
                    <ul class="pull-right">
                        <?php wp_nav_menu(); ?>
                    </ul>
                </div>
            </div>
        </div>
    </footer><!--/#footer-->
	
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="<?php echo esc_url(get_template_directory_uri()) ?>/js/jquery.js"></script>
    <script src="<?php echo esc_url(get_template_directory_uri()) ?>/js/bootstrap.min.js"></script>
    <script src="<?php echo esc_url(get_template_directory_uri()) ?>/js/jquery.prettyPhoto.js"></script>
    <script src="<?php echo esc_url(get_template_directory_uri()) ?>/js/jquery.isotope.min.js"></script>   
    <script src="<?php echo esc_url(get_template_directory_uri()) ?>/js/wow.min.js"></script>
	<script src="<?php echo esc_url(get_template_directory_uri()) ?>/js/main.js"></script>

    <?php wp_footer(); ?>
  </body>
</html>