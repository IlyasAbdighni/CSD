<!-- //end-smoth-scrolling -->
<script src="<?php echo site_url("dist/js/front/easyResponsiveTabs.js"); ?>" type="text/javascript"></script>
		    <script type="text/javascript">
			    $(document).ready(function () {
			        $('#horizontalTab').easyResponsiveTabs({
			            type: 'default', //Types: default, vertical, accordion
			            width: 'auto', //auto or any width like 600px
			            fit: true   // 100% fit in a container
			        });
			    });
			   </script>
<!--header start here-->
 <div class="header-b">
 	  <div class="container">
 	       <div class="header-main">
 	        	<div class="logo">
 	        		<a href="<?php echo site_url('/')?>"><img src="<?php echo site_url('dist/img/front/logo.png')?>" alt=""></a>
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
<!--about-banner-->
<div class="about-banner">
	   <div class="container">
	      	 <div class="about-main">
	      	 	<h2> University of Camerino</h2>
	      	     <div class="col-md-8 about-left">
	      	   	      <h3> About the univeristy:</h3>
	      	   	      <p> It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy.</p>
	      	   	      <P>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</P>
	      	     </div>
	      	     <div class="col-md-4 about-right">
	      	   	       <img src="<?php echo site_url("dist/img/University_of_Camerino_logo.png");?>" alt="css3" title="exercitation">
	      	     </div>
	      	   <div class="clearfix"> </div>
	      	 </div>
	   </div>
</div>
<!---/about banner emd here-->
<div class="about-tab">
	  <div class="container"  "about-con">
	  	    <div class="about-tab-main">
	  	    	  <div class="sap_tabs">
				     <div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
						  <ul class="resp-tabs-list">
						  	  <li class="resp-tab-item" aria-controls="tab_item-0" role="tab"><span>Before Arrival</span></li>
							  <li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><span>After Arrival</span></li>
							  <li class="resp-tab-item" aria-controls="tab_item-2" role="tab"><span>Scholarships</span></li>
							  <div class="clear"></div>
						  </ul>
							<div class="resp-tabs-container">
							    <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
									<div class="facts">
									  <ul class="tab_list">
									  	<li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat</li>
									  	<li>augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigatione</li>
									  	<li>claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica</li>
									  	<li>Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.</li>
									  </ul>
							        </div>
							     </div>
							      <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
									<div class="facts">
									  <ul class="tab_list">
									    <li><a href="#">augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigatione</a></li>
									  	<li><a href="#">claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica</a></li>
									  	<li><a href="#">Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.</a></li>
									  </ul>
							        </div>
							     </div>
							      <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-2">
									<ul class="tab_list">
									  	<li><a href="#">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat</a></li>
									  	<li><a href="#">augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigatione</a></li>
									  	<li><a href="#">claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores leg</a></li>
									  	<li><a href="#">Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.</a></li>
									  </ul>
							     </div>
							  <div class="clearfix"> </div>
							 </div>
					      </div>
					 </div>

				</div>
			</div>
	  </div>
<!--about-middle-->
 <div class="about-middle">
	 <div class="container">
	 	<div class="about-middle-main">
	      	 	  <div class="col-md-4 about-icons">
		      	 	  	   <span class="f"> </span>
		      	 	  	   <h3> Skype</h3>
		      	 	  	   <p> "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
	      	 	  </div>
	      	 	  <div class="col-md-4 about-icons">
		      	 	  	   <span class="g"> </span>
		      	 	  	   <h3> Dribbble</h3>
		      	 	  	   <p> "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
	      	 	  </div>
	      	 	  <div class="col-md-4 about-icons">
		      	 	     <span class="h"> </span>
		      	 	  	 <h3>Twitter</h3>
		      	 	  	 <p> "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
	      	 	  </div>
	      	 	  <div class="clearfix"> </div>
	      	</div>
	  </div>
</div>
