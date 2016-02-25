


<!--header start here-->
<div class="header">
    <div class="container">
        <div class="header-main home">
            <div class="logo">
                <a href="index.html"><img src="<?php echo site_url('dist/img/front/logo.png')?>"></a>
            </div>
            <span class="menu"> <img src="<?php echo site_url('dist/img/front/icon.png')?>"> </span>
            <div class="header-navg">
                <!-- <ul class="res">
                    <li><a href="index.html">HOME</a></li>
                    <li><a class="active" href="<?php echo site_url("university");; ?>">university</a></li>
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
        <div class="header-bottom">
            <h1>Search for a university: </h1>
            <form method="post" action="<?php echo site_url("search/index");?>">
                <input type="text" onfocus="this.value = '';" placeholder="Search for a university" name="searching_word">
                <input type="submit"  class="ser" value="Search"><br>

            </form>
        </div>
    </div>
</div>
<div class="intro-strip"> </div>
<!--about start here-->
<div class="intro">
    <div class="container">
        <div class="intro-main">
            <h2>Welcome to our website!</h2>
            <h3>You can get information about universites here.</h3>
            <span class="b"> </span>
            <p>
                Based in Surry Hills, the creative hub of Sydney we are surrounded by creativity
                <br>and that reflects on the type of jobs we recruit for.
                <br>and that reflects on the type of jobs we recruit for.
                <br>and that reflects on the type of jobs we recruit for.
            </p>
            <h4><a href="#"> FIND OUT MORE UVNIVERSITIES!</a></h4>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>
</body>
<!--contant start here-->
<div class="strip"> </div>
<div class="clients">
	 <div class="container">
	 	  <div class="clients-main">
	 		     <h3> Recent Updates </h3>
	 		     <P>These are the recent updated universities. If you want to find out more universities, please click more button or search for a univeristy.</P>
	 	     <div class="section1">

                <?php foreach ($universities as $university): ?>
						<div class="col-md-4 univeristy-list">
                            <div class="css3">
                                <a href="<?php echo site_url("university/view/" . $university->idUniversity);?>"><img src="<?php
                                if ($university->UniversityLogoURL == null) {
                                    echo site_url("dist/img/default_logo.png");
                                } else {
                                    echo $university->UniversityLogoURL;
                                }
                                ;?>" alt="" />
                                </a>
                            </div>
						    <div class="university-name">
                                <?php echo anchor(site_url("university/view/" . $university->idUniversity), "{$university->UniversityName}"); ?>
						    </div>
						</div>
                <? endforeach; ?>
						<div class="clearfix"> </div>
					</div>
        <div class="clear fix"> </div>
	 	  </div>
	 </div>
</div>
