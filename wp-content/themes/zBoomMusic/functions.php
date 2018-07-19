<?php

function zboom_setup(){

add_theme_support('title-tag');
add_theme_support('custom-background');
add_theme_support('post-thumbnails');
add_theme_support('post-formats', array('aside', 'gallery', 'video'));
add_theme_support('custom-logo', array('height'=>'100', 'width'=>'200'));
add_theme_support('custom-header', array('default_image'=>get_template_directory_uri().'/images/header.jpg'));

if(function_exists('register_nav_menu')){
register_nav_menu('top_menu', 'Top Menu');
}

if(function_exists('register_nav_menu')){
register_nav_menu('upper_menu', 'Upper Menu');
}
function read_more($limit){
	$the_contents = explode(' ', get_the_content());
	$less_content = array_slice($the_contents, 0, $limit);
	$final = implode(' ', $less_content);
	echo $final;
	//print_r($the_contents);
	//print_r($less_content);

}

register_post_type('zboomslider', array(
	'labels' => array(
		'name' => 'sliders', 'add_new_item' => 'Add new slider'
	), 'public' => true, 'supports' => array('title', 'thumbnail')
));
register_post_type('latest_post', array(
	'labels' => array(
		'name' => 'Latest Post', 'add_new_item' => 'Add new post'
	), 'public' => true, 'supports' => array('title', 'editor')
));
register_post_type('partners', array(
	'labels' => array(
		'name' => 'Partners', 'add_new_item' => 'Add new partner'
	), 'public' => true, 'supports' => array('title', 'editor', 'thumbnail')
));
function sidebar_widget(){
	register_sidebar(array(
		'name' => 'Footer Widget',
		'description' => 'You can add sidebar widgets',
		'id' => 'footer_widget',
		'before_title' => '<div class="heading"><h2>',
		'after_title' => '</h2></div>
							<div class="content">',
		'before_widget' => '<div class="col-1-4">
								<div class="wrap-col">
									<div class="box">',
		'after_widget' => '				</div>
									</div>
								</div>
							</div>',
	));

	register_sidebar(array(
		'name' => 'Right Sidebar_2',
		'description' => 'You can add sidebar widgets',
		'id' => 'right_bar_2',
		'before_title' => '<h3>',
		'after_title' => '</h3>',
		'before_widget' => '',
		'after_widget' => '',
	));

	register_sidebar(array(
		'name' => 'New Sidebar_1',
		'description' => 'You can add sidebar widgets',
		'id' => 'new_sidebar_1',
		'before_title' => '<div class="heading"><h2>',
		'after_title' => '</h2></div>
						<div class="content">',
		'before_widget' => '<div class="box">',
		'after_widget' => '</div></div>',
	));
}
add_action('widgets_init', 'sidebar_widget');

register_post_type('tickr_post', array(
	'labels' => array(
		'name' => 'Tickr Post', 'add_new_item' => 'Add new post'
	), 'public' => true, 'supports' => array('title', 'editor')
));

}

add_action('after_setup_theme', 'zboom_setup');

?>