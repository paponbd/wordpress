<!DOCTYPE html>
<html <?php language_attributes(); ?>>
  <head>
    <meta charset="<?php bloginfo('charset') ?>">
    <meta name="description" content="<?php bloginfo('description') ?>">
    <meta name="author" content="SYFUR RAHMAN PAPON">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap -->
    <link href="<?php echo esc_url(get_template_directory_uri()) ?>/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="<?php echo esc_url(get_template_directory_uri()) ?>/css/font-awesome.min.css">
	<link href="<?php echo esc_url(get_template_directory_uri()) ?>/css/animate.min.css" rel="stylesheet">
    <link href="<?php echo esc_url(get_template_directory_uri()) ?>/css/prettyPhoto.css" rel="stylesheet">      
	<link href="<?php echo esc_url(get_template_directory_uri()) ?>/css/main.css" rel="stylesheet">
	<link href="<?php echo esc_url(get_template_directory_uri()) ?>/css/responsive.css" rel="stylesheet">
    <link rel="stylesheet" href="<?php bloginfo('stylesheet_url') ?>">
	 <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <?php wp_head(); ?>
  </head>
  <body <?php body_class(); ?>>   
	<header id="header">
        <nav class="navbar navbar-fixed-top" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="<?php bloginfo('home'); ?>"><?php the_custom_logo(); ?></a>
                </div>
				
                <div class="collapse navbar-collapse navbar-right">
                    <?php
                        $arg = array(
                            'theme_location' => 'top_menu',
                            'menu'           => 'Top Menu',
                            'menu_class'     => 'nav navbar-nav',
                            );
                        wp_nav_menu($arg);
                    ?>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
		
    </header><!--/header-->