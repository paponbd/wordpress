<?php

function sw_setup(){
	add_theme_support('title-tag');
	add_theme_support('custom-background');
	add_theme_support('post-thumbnails');
	add_theme_support('post-formats', array('aside', 'gallery', 'video', 'audio'));
	add_theme_support('custom-logo', array('height'=>'150', 'width'=>'250'));

	
	if(function_exists(register_nav_menu)){
	register_nav_menu('top_menu', 'Top Menu');
	}

	register_post_type('blog_title', array(
	'labels' => array(
		'name' => 'Blog Title', 'add_new_item' => 'Add Blog Title'
	), 'public' => true, 'supports' => array('title', 'editor')
	));

	function read_more($limit){
	$the_contents = explode(' ', get_the_content());
	$less_content = array_slice($the_contents, 0, $limit);
	$final = implode(' ', $less_content);
	echo $final;
	//print_r($the_contents);
	//print_r($less_content);

	}

	register_post_type('wp_slider', array(
	'labels' => array(
		'name' => 'Slider', 'add_new_item' => 'Add new slider'
	), 'public' => true, 'supports' => array('title', 'thumbnail')
	));

	register_post_type('wp_feature', array(
	'labels' => array(
		'name' => 'Feather', 'add_new_item' => 'Add new feather'
	), 'public' => true, 'supports' => array('title', 'editor')
	));

	register_post_type('wp_works', array(
	'labels' => array(
		'name' => 'Recent Works', 'add_new_item' => 'Add recent works'
	), 'public' => true, 'supports' => array('title', 'thumbnail')
	));

	function sidebar_widget(){
			register_sidebar(array(
				'name' => 'Footer Widget',
				'description' => 'You can add footer widgets',
				'id' => 'footer_widget',
				'before_title' => '<div class="col-md-3 col-sm-6"><div class="widget"><h3>',
				'after_title' => '</h3>',
				'before_widget' => '',
				'after_widget' => '</div></div>',
			));

			register_sidebar(array(
				'name' => 'Blog Sidebar Widget',
				'description' => 'You can add sidebar widgets for blog page',
				'id' => 'sidebar_1',
				'before_title' => '<div class="widget categories wow fadeInDown"><h3>',
				'after_title' => '</h3><div class="row">',
				'before_widget' => '<div class="col-sm-12">',
				'after_widget' => '</div></div></div>',
			));

			register_sidebar(array(
				'name' => 'All Sidebar Widget',
				'description' => 'You can add sidebar widgets for all page',
				'id' => 'sidebar_2',
				'before_title' => '<div class="widget categories wow fadeInDown"><h3>',
				'after_title' => '</h3><div class="row">',
				'before_widget' => '<div class="col-sm-12">',
				'after_widget' => '</div></div></div>',
			));

			register_sidebar(array(
				'name' => 'Front Sidebar Widget',
				'description' => 'You can add sidebar widgets for all page',
				'id' => 'sidebar_3',
				'before_title' => '<div class="col-sm-6 wow fadeInDown"><div class="skill"><h2>',
				'after_title' => '</h2><div class="progress-wrap">',
				'before_widget' => '',
				'after_widget' => '</div></div></div>',
			));

	}
add_action('widgets_init', 'sidebar_widget');


}

add_action('after_setup_theme', 'sw_setup');


?>