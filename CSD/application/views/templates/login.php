


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
<!--about-banner-->
<div class="about-banner">
	   <div class="container">
	      	 <div class="about-main">
	      	 	<h2> LOGIN</h2>
                <div class="col-md-6 col-md-offset-3 text-center">
                    <form method="post" action="<?php echo site_url("login/login");?>" class="form-horizontal" id="login-form">
                        <?php if(isset($_POST['redirect'])) : ?>
                          <input type="hidden" name="redirect" value="<?php echo $_POST['redirect']; ?>" />
                        <?php endif; ?>
                      <div class="form-group">
                        <label for="input-email" class="col-sm-2 control-label">Email</label>
                        <div class="col-sm-10">
                          <input type="email" class="form-control input-lg " id="" name="email" placeholder="Email">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
                        <div class="col-sm-10">
                          <input type="password" name='password' class="form-control input-lg" id="inputPassword3" placeholder="Password">
                        </div>
                      </div>
                      <div class="form-group">
                          <div class="col-sm-10 col-sm-offset-2">
                              <?php echo validation_errors("<p class='error'>"); ?>
                                   <?php echo $this->session->flashdata('error'); ?>
                          </div>
                      </div>
                      <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                          <button type="submit" class="btn btn-info btn-lg">Sign in</button>
                        </div>
                      </div>
                    </form>

                </div>

	      	   <div class="clearfix"> </div>
	      	 </div>
	   </div>
</div>


<script src="<?php echo site_url("dist/js/front/jquery.validate.min.js"); ?>" charset="utf-8"></script>
<script type="text/javascript">
    // $("#login-form").validate();
    $("#login-form").validate({
            email: "required",
            rules: {
                password: {
                    required: true,
                    minlength: 6
                },
                email: {
                    required: true,
                    email: true
                },
            },
            messages: {
                email: "Please enter your email",
                password: "Please enter your password",
                email: "Please enter a valid email address",
            }
        });
</script>

<!--about-middle-->
