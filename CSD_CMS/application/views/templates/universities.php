



<!--header start here-->
<div class="header">
    <div class="container">
        <div class="header-main home">
            <div class="logo">
                <a href="index.html"><img src="<?php echo site_url('dist/img/front/logo.png')?>"></a>
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
        <div class="header-bottom">
            <h1>Search for a university: </h1>
            <form>
                <input type="text" value="Search for a university" onfocus="this.value = '';" onblur="if (this.value = 'Search for a university') {this.value = 'Search for a university';}">
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
<div class="contant">
    <div class="container">
        <div class="contant-main">
            <!-- <h3>Subscribe to our Job Seeker Mailing List</h3>
	  	   	    <span class="search"> <input type="text" value="Enter Your Email Address"onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter Your Email Address';}"/>

 	  	        <input type="submit" value=""></span> -->
                <?php $this->load->view("templates/" . $subview); ?>
        </div>
    </div>
</div>
<!--footer start here-->
<div class="strip"> </div>
<div class="footer-h">
    <div class="container">
        <div class="footer-main">
            <div class="col-md-6 footer-left">
                <p class="data"> <a href="mailto:example@mail.com"> Hello@ twobytes.com.au </a> <span class="d"> </span></p>
                <p> 2014 &copy Template by <a href="http://w3layouts.com/"> W3layouts </a></p>
            </div>
            <div class="col-md-6 footer-right">
                <ul>
                    <li><a href="#"> <span class="x"> </span> </a></li>
                    <li class="m">692</li>
                    <li><a href="#"> <span class="y"> </span> </a></li>
                    <li class="r"> 117</li>
                </ul>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
