
<!--header start here-->
 <div class="header-b">
 	  <div class="container">
 	       <div class="header-main">
 	        	<div class="logo">
 	        		<a href="index.html"><img src="<?php echo site_url('dist/img/front/logo.png')?>" alt=""></a>
 	        	</div>
 	        	<span class="menu"> <img src="<?php echo site_url('dist/img/front/icon.png')?>"> </span>
 	        	<div class="header-navg">
                    <?php echo get_menu($menu); ?>
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
	      	 	<h2> REGISTER</h2>

                <div class="col-md-6 col-md-offset-3 text-center">
                    <form action="<?php echo site_url("register/reg_user");?>" method="post" class="form-horizontal" id="register-form">
                        <div class="form-group">
                          <label for="email" class="col-sm-2 control-label">User name</label>
                          <div class="col-sm-10">
                            <input type="text" <?php echo set_value("name"); ?> class="form-control input-lg name" id="name" name="name" placeholder="Name">
                          </div>
                        </div>
                      <div class="form-group">
                        <label for="email" class="col-sm-2 control-label">Email</label>
                        <div class="col-sm-10">
                          <input type="email" <?php echo set_value("email"); ?> class="form-control input-lg email" id="email" name="email" placeholder="Email">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="password" class="col-sm-2 control-label">Password</label>
                        <div class="col-sm-10">
                          <input type="password" class="form-control input-lg password" id="password" name="password" placeholder="Password">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="confirm_password" class="col-sm-2 control-label">Confirm password</label>
                        <div class="col-sm-10">
                          <input type="password" <?php echo set_value("email"); ?> name="confirm_password" class="form-control input-lg" id="confirm_password" placeholder="Confirm Password">
                        </div>
                      </div>
                      <div class="form-group">
                          <div class="col-sm-10 col-sm-offset-2">
                              <?php echo validation_errors("<p class='error'>"); ?>
                          </div>
                      </div>

                      <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                          <button type="submit" class="btn btn-info btn-lg">Register</button>
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
    $("#register-form").validate({
            rules: {
                password: {
                    required: true,
                    minlength: 5
                },
                confirm_password: {
                    required: true,
                    minlength: 6,
                    equalTo: "#password"
                },
                email: {
                    required: true,
                    email: true
                },
            },
            messages: {
                password: {
                    required: "Please provide a password",
                    minlength: "Your password must be at least 6 characters long"
                },
                confirm_password: {
                    required: "Please provide a password",
                    minlength: "Your password must be at least 6 characters long",
                    equalTo: "Please enter the same password as above"
                },
                email: "Please enter a valid email address",
            }
        });
</script>

<!--about-middle-->
