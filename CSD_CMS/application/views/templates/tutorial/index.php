<div class="header-b">
     <div class="container">
          <div class="header-main">
               <div class="logo">
                   <a href="<?php echo site_url();?>"><img src="<?php echo site_url('dist/img/front/logo.png')?>" alt=""></a>
               </div>
               <span class="menu"> <img src="<?php echo site_url('dist/img/front/icon.png')?>"> </span>
               <div class="header-navg">
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

<div class="about-banner tutorial mobile">
	   <div class="container">
      	 <div class="about-main row">
      	 	<div class="col-md-8 col-md-offset-2 col-sm-12">
      	 		<div class="cover">
      	 			<div class="title text-center">
      	 				UniGen tutorial
      	 			</div>
      	 			<div class="text-center university">
      	 				Unicam -- University of Camerino
      	 			</div>
      	 			
      	 			<div class="text-center">
      	 				<img src="<?php echo site_url('dist/img/University_of_Camerino_logo.png'); ?>" alt="">
      	 			</div>
      	 			<div class="text-center links">
      	 				<a href="<?php echo site_url("tutorial/web");?>" class="">
							tutorial for web
      	 				</a>
      	 				<a href="<?php echo site_url("tutorial/mobile");?>" class="">
							tutorial for android app
      	 				</a>
      	 			</div>
      	 			<div class="text-center class"> 
      	 				Complex System Design
      	 			</div>
      	 			<div class="text-center">
      	 				February 26, 2016
      	 			</div>
      	 			<div class="text-center">
      	 				Creatd by: Ha Tuan Anh - Nguyen Huy Hoang - Shilla Lecbello - Ilyas Abdighni
      	 			</div>
      	 		</div>
      	 	</div>
	      	 	
      	   <div class="clearfix"> </div>
      	 </div>
	   </div>
</div>

