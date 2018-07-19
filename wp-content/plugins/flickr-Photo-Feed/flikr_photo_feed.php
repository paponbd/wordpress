<?php
/*
Plugin Name: Flickr Photo Feed
Plugin URI: http://wordpress.org/plugins/hello-dolly/
Description: This is not just a plugin, it symbolizes the hope and enthusiasm of an entire generation summed up in two words sung most famously by Louis Armstrong: Hello, Dolly. When activated you will randomly see a lyric from <cite>Hello, Dolly</cite> in the upper right of your admin screen on every page.
Author: Matt Mullenweg
Version: 1.0
Author URI: http://ma.tt/
*/
function flickr_post_setup() {
    wp_enqueue_style( 'flickr_css', plugins_url( '/css/flickr.css', __FILE__ ));
    wp_enqueue_script( 'flickr_js', plugins_url( '/js/jquery.flickrush.js', __FILE__ ), array('jquery'), false);
     
}
add_action('init','flickr_post_setup');
    

function flickr_post_activate() { ?>
       <script type="text/javascript">
		jQuery(function() {
			jQuery('#flickrImages').flickrush({
				limit:5,
				id:'139551397@N05',
				random:true,
				ssl:true
			});
		});
		</script>
		<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-36251023-1']);
  _gaq.push(['_setDomainName', 'jqueryscript.net']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
<?php }
add_action('wp_footer', 'flickr_post_activate');

function flickr_post_view(){ ?>
<div id="flickrImages"></div>
<?php
}
add_shortcode('flickrsss', 'flickr_post_view');

?>
