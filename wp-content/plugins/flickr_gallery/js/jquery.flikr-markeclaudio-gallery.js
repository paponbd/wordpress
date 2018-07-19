function markeclaudioFlickrBox(id){
$.getJSON("http://api.flickr.com/services/feeds/photos_public.gne?id="+id+"&lang=it-it&format=json&jsoncallback=?", function(data){
        $.each(data.items, function(i,item){
            jQuery("<img class='imgflikr' />").attr("src", item.media.m).appendTo("#flickrbox").wrap("<div class='imagesflickr'><a title='"+item.tags+"' rel='prettyPhoto[flickrgallery]' href='"+item.media.m.replace("_m.jpg", "_z.jpg")+"'></a></div>").mouseover(function() {
              jQuery(this).css("filter","alpha(opacity=70)");
              jQuery(this).css("-moz-opacity",".70");
              jQuery(this).css("opacity",".70");
              
            }).mouseout(function(){
               jQuery(this).css("filter","alpha(opacity=1)");
              jQuery(this).css("-moz-opacity","1");
              jQuery(this).css("opacity","1");
              
            });
            
            });
        jQuery("a[rel^='prettyPhoto']").prettyPhoto();
    });
    
} 