<?php
    get_header();
?>
<?php
/*
Template Name: contact page
*/
?>
		
	<div class="map wow fadeInDown">
		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3652.15264753935!2d90.37174311540622!3d23.74193539501553!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755bf4adf496f43%3A0x30743cd448376595!2sDATAPARK+BD+LTD!5e0!3m2!1sen!2sbd!4v1523335968678" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
	</div>
	
	<section id="contact-page">
        <div class="container">
            <div class="center wow fadeInDown">        
                <h2>Drop Your Message</h2>
                <p class="lead">Your email address will not be published. Required fields are marked * </p>
            </div> 
            <div class="row contact-wrap wow fadeInDown"> 
                <div class="status alert alert-success" style="display: none"></div>
                <form id="main-contact-form" class="contact-form" name="contact-form" method="post" action="sendemail.php">
                    <div class="col-sm-5 col-sm-offset-1">
                        <div class="form-group">
                            <label>Name *</label>
                            <input type="text" name="name" class="form-control" required="required">
                        </div>
                        <div class="form-group">
                            <label>Email *</label>
                            <input type="email" name="email" class="form-control" required="required">
                        </div>
                        <div class="form-group">
                            <label>Phone</label>
                            <input type="number" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Company Name</label>
                            <input type="text" class="form-control">
                        </div>                        
                    </div>
                    <div class="col-sm-5">
                        <div class="form-group">
                            <label>Subject *</label>
                            <input type="text" name="subject" class="form-control" required="required">
                        </div>
                        <div class="form-group">
                            <label>Message *</label>
                            <textarea name="message" id="message" required="required" class="form-control" rows="8"></textarea>
                        </div>                        
                        <div class="form-group">
                            <button type="submit" name="submit" class="btn btn-primary btn-lg" required="required">Submit Message</button>
                        </div>
                    </div>
                </form> 
            </div><!--/.row-->
        </div><!--/.container-->
    </section><!--/#contact-page-->
<?php get_footer(); ?>