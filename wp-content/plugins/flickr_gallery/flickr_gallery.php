<?php
ob_start();
error_reporting();
?>
<?php
/*
Plugin Name: Flickr Gallery
Plugin URI: http://wordpress.org/plugins/hello-dolly/
Description: This is not just a plugin, it symbolizes the hope and enthusiasm of an entire generation summed up in two words sung most famously by Louis Armstrong: Hello, Dolly. When activated you will randomly see a lyric from <cite>Hello, Dolly</cite> in the upper right of your admin screen on every page.
Author: Matt Mullenweg
Version: 1.0
Author URI: http://ma.tt/
*/
function flickr_gallery_setup() {
    wp_enqueue_style( 'flickr_css_1', plugins_url( '/style/prettyPhoto.css', __FILE__ ));
    wp_enqueue_style( 'flickr_css_2', plugins_url( '/style/jquery.markeclaudio.flikrgallery.css', __FILE__ ));
    wp_enqueue_script( 'flickr_js_1', plugins_url( '/js/jquery.prettyPhoto.js', __FILE__ ), array('jquery'), false);
    wp_enqueue_script( 'flickr_js_2', plugins_url( '/js/jquery.flikr-markeclaudio-gallery.js', __FILE__ ), array('jquery'), false);
     
}
add_action('init','flickr_gallery_setup');
    

function flickr_gallery_activate() { ?>
  <script type="text/javascript" charset="utf-8">
    jQuery(document).ready(function(){
       markeclaudioFlickrBox('139551397@N05');
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
add_action('wp_footer', 'flickr_gallery_activate');

function flickr_gallery_view(){ ?>
<div id='flickrbox'> </div>
<?php
}
add_shortcode('flickgallery', 'flickr_gallery_view');

?>






		
	
  
  


        


