



<!--header start here-->
<div class="header">
    <div class="container">
        <div class="header-main home">
            <div class="logo">
                <a href="<?php echo site_url();?>"><img src="<?php echo site_url('dist/img/front/logo.png')?>"></a>
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
        <div class="header-bottom">
            <h1>Search for a university: </h1>
            <form method="post" action="<?php echo site_url("search/index");?>">
                <input type="text" onfocus="this.value = '';" placeholder="Search for a university" name="searching_word">
                <input type="submit"  class="ser" value="Search"><br>

            </form>
        </div>
    </div>
</div>

</body>
<!--contant start here-->
<div class="strip"> </div>
<div class="clients">
	 <div class="container">
	 	  <div class="clients-main">
	 		<h3> Univeristy list </h3>
            <div class="text-center add-btn">
                <a class="btn btn-info" href="<?php echo site_url("university/add"); ?>"><i class="fa fa-plus-square"></i> Add a university</a>
            </div>
	 	    <div class="section1">
            <?php foreach ($universities["universities"] as $university): ?>
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
                        <?php echo anchor(site_url("university/" . $university["idUniversity"]), "{$university["UniversityName"]}"); ?>
                        <a href="<?php echo site_url("university/view/" . $university["idUniversity"]);?>"></a>
    			    </div>
    			</div>
            <? endforeach; ?>

			    <div class="clearfix"> </div>
                <?php
                    // if (count($universities["universities"])) {
                    //     foreach ($links as $link) {
                    //         echo $link;
                    //     }
                    // }

                  ?> 
			</div>
            <div class="clear fix"> </div>
	 	  </div>
	 </div>
</div>
