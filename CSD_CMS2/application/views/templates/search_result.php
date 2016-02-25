


<!--header start here-->
 <div class="header-b">
 	  <div class="container">
 	       <div class="header-main">
 	        	<div class="logo">
 	        		<a href="index.html"><img src="<?php echo site_url('dist/img/front/logo.png')?>" alt=""></a>
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
<!--about-banner-->
<div class="about-banner">
	   <div class="container">
	      	 <div class="about-main">
	      	 	<h2> You are searching for :</h2>

            <?php foreach ($universities as $university): ?>
				<div class="col-md-4 univeristy-list">
                    <div class="css3">
                        <a href="<?php echo site_url("university/view/" . $university["idUniversity"]);?>"><img src="<?php
                        if ($university["UniversityLogoURL"] == null) {
                            echo site_url("dist/img/default_logo.png");
                        } else {
                            echo $university["UniversityLogoURL"];
                        }
                        ;?>" alt="" />
                        </a>
                    </div>
				    <div class="university-name">
                        <?php echo anchor(site_url("university/view/" . $university["idUniversity"]), "{$university["UniversityName"]}"); ?>
				    </div>
				</div>
            <? endforeach; ?>
						<div class="clearfix"> </div>

	      	   <div class="clearfix"> </div>
	      	 </div>
	   </div>
</div>



<!--about-middle-->
