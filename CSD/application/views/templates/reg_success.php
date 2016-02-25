

<!--header start here-->
 <div class="header-b">
 	  <div class="container">
 	       <div class="header-main">
 	        	<div class="logo">
 	        		<a href="<?php echo site_url();?>"><img src="<?php echo site_url('dist/img/front/logo.png')?>" alt=""></a>
 	        	</div>
 	        	<span class="menu"> <img src="<?php echo site_url('dist/img/front/icon.png')?>"> </span>
 	        	<div class="header-navg">
 	        		<!-- <ul class="res">
 	        			<li><a href="index.html">HOME</a></li>
 	        			<li><a class="active" href="aboutus.html">ABOUT US</a></li>
 	        			<li><a href="jobs.html">JOBS</a></li>
 	        			<li><a href="clients.html">CLIENTS</a></li>
 	        			<li><a href="employers.html">EMPLOYERS</a></li>
 	        			<li><a href="contactus.html">CONTACT US</a></li>
 	        		</ul> -->
                    <?php echo show_menu(); ?>
 	        		<script>
			             $( "span.menu").click(function() {
			                $(  "ul.res" ).slideToggle("slow", function() {
			                // Animation complete.
			                });
			            });
		            </script>
 	        	</div>
 	        	<div class="clearfix"> </div>
 	       </div>
 	 </div>
</div>
<div class="about-banner" style="padding-botton:80px">
	   <div class="container">
	      	 <div class="about-main">
	      	 	<h2> Registration Successful! </h2>
                <div class="col-md-6 col-md-offset-3 text-center">


                  <div class="alert alert-success" role="alert">
                      Thanks for your registeration.
                  </div>
                  <div class="text-center" style="margin-top:30px">
                    <a href="<?php echo site_url(); ?>" class="btn btn-info">
                      Back to login
                    </a>

                  </div>


                </div>

	      	   <div class="clearfix"> </div>
	      	 </div>
	   </div>
</div>
