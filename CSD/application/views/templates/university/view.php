
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

<div class="about-banner">
		<div class="container">
				 <div class="about-main">
					<h2> <?php echo $university->UniversityName; ?> </h2>

					  <div class="col-md-8 about-left">
								<h3> About the univeristy:</h3>
							 <div class="university-info clearfix">
								  <div class="title university-name col-md-3">
										 University name:
									</div>
								  <div class="col-md-9">
										<b>
											 <p>
												  <?php echo $university->UniversityName; ?>
											 </p>
										</b>

								  </div>
							 </div>
							 <div class="university-info clearfix">
								  <div class="title university-name col-md-3">
										 University address:
									</div>
								  <div class="col-md-9">
										<b>
											 <p>
												<?php echo $university->UniversityAddress; ?>
											 </p>

										</b>

								  </div>
							 </div>
							 <div class="university-info clearfix">
								  <div class="title university-name col-md-3">
										 University Phone Number:
									</div>
								  <div class="col-md-9">
										<b>
											 <p>
												<?php echo $university->UniversityPhoneNumber; ?>
											 </p>
										</b>

								  </div>
							 </div>
							 <div class="university-info clearfix">
								  <div class="title university-name col-md-3">
										 University Website:
									</div>
								  <div class="col-md-9">
										<a href="<?php echo "http://" . $university->UniversityWebsite; ?>" target="_blank">
											 <b>
												  <p>
														  <?php echo $university->UniversityWebsite; ?>
												  </p>

											 </b>
										</a>


								  </div>
							 </div>
							 <div class="">
								  <?php echo anchor(site_url("university/edit") . "/" . $university->idUniversity, '<i class="fa fa-pencil-square-o"></i> Make this article better'); ?>
							 </div>
					  </div>
					  <div class="col-md-4 about-right">
								 <img src="<?php echo $university->UniversityLogoURL ? $university->UniversityLogoURL :  site_url("dist/img/University_of_Camerino_logo.png");?>" alt="css3" title="exercitation">
					  </div>
					<div class="clearfix"> </div>
				 </div>
		</div>
</div>
<!-- <?php dump($content); ?>   -->
<!---/about banner emd here-->
<div class="about-tab">
	  <div class="container"  "about-con">
			 <div class="about-tab-main">
				  <div class="sap_tabs">
					  <div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
						  <ul class="resp-tabs-list">

							<li class="resp-tab-item" aria-controls="tab_item-0" role="tab"><span>University Information</span></li>

					 		<li class="resp-tab-item" aria-controls="tab_item-2" role="tab"><span>Before Arrival</span></li>

							<li class="resp-tab-item" aria-controls="tab_item-3" role="tab"><span>After Arrival</span></li>

							<li class="resp-tab-item" aria-controls="tab_item-24" role="tab"><span>Scholarships</span></li>

							  <div class="clear"></div>
						  </ul>
							<div class="resp-tabs-container">
								 <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
						<div class="facts">
						  <ul class="tab_list">
						  <?php if($content["info"]): ?>
						  	<div class="text-right">
						  		<?php echo anchor(site_url("university/edit/" . $university->idUniversity), '<i class="fa fa-pencil"></i> edit this article', 'class=""'); ?>
						  	</div>
						  	<?php foreach($content["info"] as $this_content): ?>
							 <?php 
								$str = $this_content['ContentDescription'];
								// $str = preg_replace('/(?:<|&lt;)\/?([a-zA-Z]+) *[^<\/]*?(?:>|&gt;)/', '', $str)."\n";
								$str = preg_replace("/&#?[a-z0-9]+;/i","",$str);
								echo $str; 
							 ?>
							<? endforeach;?>
							<div>
								<?php echo anchor(site_url("university/edit/" . $university->idUniversity), 'edit this article', 'class="btn btn-info"'); ?>
							</div>
						  <?php else: ?>
							 <p>
								  This university has no record about before arrival.
							 </p>
							 <a href="<?php echo site_url("university/edit/" . $university->idUniversity); ?>">
								  <i class="fa fa-plus-square"></i> Make contribution.
							 </a>
						  <? endif; ?>
						  </ul>
							 </div>
						 </div>
						 <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
							<div class="facts">
								<ul class="tab_list">
							<?php if($content["before"]): ?>
							<div class="text-right">
					  		<?php echo anchor(site_url("university/edit/" . $university->idUniversity), '<i class="fa fa-pencil"></i> edit this article', 'class=""'); ?>
						  	</div>
							<?php foreach($content["before"] as $this_content): ?>
							 <?php 
								$str = $this_content['ContentDescription'];
								// $str = preg_replace('/(?:<|&lt;)\/?([a-zA-Z]+) *[^<\/]*?(?:>|&gt;)/', '', $str)."\n";
								$str = preg_replace("/&#?[a-z0-9]+;/i","",$str);
								echo $str; 
							 ?>
							<? endforeach;?>
							<div>
								<?php echo anchor(site_url("university/edit/" . $university->idUniversity), 'edit this article', 'class="btn btn-info"'); ?>
							</div>
						   <?php else: ?>
							 <p>
								  This university has no record about before arrival.
							 </p>
							 <a href="<?php echo site_url("university/edit/" . $university->idUniversity); ?>">
								  <i class="fa fa-plus-square"></i> Make contribution.
							 </a>
						  <? endif; ?>
									  </ul>
									  </div>
								  </div>
									<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-2">
									<div class="facts">
									  <ul class="tab_list">
							 <?php if($content["after"]): ?>
							 	<div class="text-right">
						  		<?php echo anchor(site_url("university/edit/" . $university->idUniversity), '<i class="fa fa-pencil"></i> edit this article', 'class=""'); ?>
						  	</div>
							<?php foreach($content["after"] as $this_content): ?>
							 <?php 
								$str = $this_content['ContentDescription'];
								// $str = preg_replace('/(?:<|&lt;)\/?([a-zA-Z]+) *[^<\/]*?(?:>|&gt;)/', '', $str)."\n";
								$str = preg_replace("/&#?[a-z0-9]+;/i","",$str);
								echo $str; 
							 ?>
							<? endforeach;?>
							<div>
								<?php echo anchor(site_url("university/edit/" . $university->idUniversity), 'edit this article', 'class="btn btn-info"'); ?>
							</div>
							 <?php else: ?>
								  <p>
										This university has no record about before arrival.
								  </p>
								  <a href="<?php echo site_url("university/edit/" . $university->idUniversity); ?>">
										<i class="fa fa-plus-square"></i> Make contribution.
								  </a>
							 <? endif; ?>
									  </ul>
									  </div>
								  </div>
									<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-3">
									<ul class="tab_list">
						<?php if($content["scholarship"]): ?>
							<div class="text-right">
						  		<?php echo anchor(site_url("university/edit/" . $university->idUniversity), '<i class="fa fa-pencil"></i> edit this article', 'class=""'); ?>
						  	</div>
							 <?php foreach($content["scholarship"] as $this_content): ?>
							 <?php 
								$str = $this_content['ContentDescription'];
								//$str = preg_replace('/(?:<|&lt;)\/?([a-zA-Z]+) *[^<\/]*?(?:>|&gt;)/', '', $str)."\n";
								//$str = strip_tags($str);
								$str = preg_replace("/&#?[a-z0-9]+;/i","",$str);
								echo $str; 
							 ?>
							<? endforeach;?>
							<div>
								<?php echo anchor(site_url("university/edit/" . $university->idUniversity), 'edit this article', 'class="btn btn-info"'); ?>
							</div>
							
						<?php else: ?>
						  <p>
								This university has no record about before arrival.
						  </p>
						  <a href="<?php echo site_url("university/edit/" . $university->idUniversity); ?>">
								<i class="fa fa-plus-square"></i> Make contribution.
						  </a>
						<? endif; ?>
									</ul>
								  </div>
							  <div class="clearfix"> </div>
							 </div>
							</div>
					 </div>

				</div>
			</div>
	  </div>


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
