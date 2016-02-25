
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

<div class="about-banner tutorial">
	   <div class="container">
      	 <div class="about-main row">
      	 	<div class="col-md-8 col-md-offset-2 col-sm-12">
      	 		<h3 class="text-center"> Student support system tutorial -- web
				</h3>
	      	     <em class="text-center">
		      	     <div class="col-dm-12">
		      	     	This tutorial is made in order to help you find faster what you are looking for in our webpage. In this tutorial we will present to you each option and show you how you can use them. Each function will be associated with screenshots from the webpage to give you a better visual understanding. Next you will be presented with the structure of this document, to help you find easier what you are looking for. 
		      	     </div>
	      	     </em>

	      	     <div class="table_of_contents col-md-12">
	      	     	<ol>
	      	     		<li>
	      	     			<a href="#home" class="">
	      	     				HOMEPAGE INTRODUCTION 
	      	     			</a>

	      	     		</li>
	      	     		<li>
	      	     			<a href="#login">
	      	     				LOG IN
	      	     			</a>
	      	     		</li>
	      	     		<li>
	      	     			<a href="#user">
	      	     				USER PROFILE
	      	     			</a>
	      	     		</li>
	      	     		<li>
	      	     			<a href="#register">
	      	     				REGISTER
	      	     			</a>
	      	     		</li>
	      	     		<li>
	      	     			<a href="#search">
	      	     				SEARCH FOR UNIVERSITY
	      	     			</a>
	      	     		</li>
	      	     		<li>
	      	     			<a href="#view">
	      	     				VIEW UNIVERSITY INFORMATION
	      	     			</a>
	      	     		</li>
	      	     		<li>
	      	     			<a href="#upload">
	      	     				UPLOAD NEW INFORMATION
	      	     			</a>
	      	     		</li>
	      	     		<li>
	      	     			<a href="#update">
	      	     				UPDATE INFORMATION
	      	     			</a>
	      	     		</li>
	      	     	</ol>
	      	     </div>

	      	     <div class="list_content col-md-12">
	      	     	<div id="home">
	      	     		<h3>
	      	     			1. Homepage introduction
	      	     		</h3>
	      	     		<article class="text-justify">
	      	     			The first thing you see when you open our webpage is the homepage. The homepage is organized in a very user friendly way. You can find the most important functions listed in the upper right corner. In the front part of the page you are presented with a search box to enter the name of the university you are interested. Below is a picture of the homepage you will find:

	      	     		</article>
	      	     		<img src="<?php echo site_url("dist/img/front/tutorial/home.png")?>" alt="">
	      	     	</div>


	      	     	<div id="login">
	      	     		<h3>
	      	     			2. Log in
	      	     		</h3>
	      	     		<article class="text-justify">
	      	     			The log in is very easy to spot once you are in the homepage of our website. In the upper right corner the third listed is the log in function. If you click on it, you will be directed to the page below:


	      	     		</article>
	      	     		<img src="<?php echo site_url("dist/img/front/tutorial/login.png")?>" alt="">
	      	     		<div class="col-md-12">
	      	     			Follow this steps to login:
	      	     		</div>
	      	     		<div class="col-md-12 text-justify">
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	In the upper right corner find “Login” 
	      	     			</div>
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	In the login page fill in the email and password (enter a valid email address and the corresponding password)
	      	     			</div>
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	You will be directed to your profile
	      	     			</div>
							
							
							* You can log in in the system only if you are first registered.
							You can see that the upper right corner is still displayed and you can easily switch from one function to another. 
	      	     		</div>


	      	     	</div>
	      	     	<div id="user">
	      	     		<h3>
	      	     			3. User profile
	      	     		</h3>
	      	     		<article class="text-justify">
	      	     			Once you are logged in, you will be directed to the front page. The front page will contain the following information: user id, username, user email and user contributions. Below is shown an example of a user profile:



	      	     		</article>
	      	     		<img src="<?php echo site_url("dist/img/front/tutorial/user_profile.png")?>" alt="">
	      	     		<div class="col-md-12 text-justify">
	      	     			
							As seen in this picture, in the upper right corner, a new function with the username of the user is added. If we click on that, we will be directed to the above page. The others are still functional but now we use them as a contributor not as a visitor, meaning that we can add new information or update existent information and also leave a feedback. All this will be demonstrated in the next sections. 

	      	     		</div>
	      	     		<div class="col-md-12 text-justify">
	      	     			
							The added function log out, logs us out of the system and we are considered again as just visitors and we can only view the university information. 


	      	     		</div>


	      	     	</div>

	      	     	<div id="register">
	      	     		<h3>
	      	     			4. Register
	      	     		</h3>
	      	     		<article class="text-justify">
	      	     			If you want to be a contributor and add information about a university you have to register. To register follow the steps below:
	      	     		</article>
	      	     		<div class="col-md-12 text-justify">
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	In the upper right corner find “Register”
 
	      	     			</div>
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	Enter the information required from the system

	      	     			</div>
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	Press register

	      	     			</div>
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	Press back to login to log in and add your information with the new created account


	      	     			</div>
							
							
							*Keep in mind that the username filed must be at least 6 characters long. 

	      	     		</div>
	      	     		<img src="<?php echo site_url("dist/img/front/tutorial/register.png")?>" alt="">
	      	     		<img src="<?php echo site_url("dist/img/front/tutorial/reg_successs.png")?>" alt="">
	      	     	</div>

	      	     	<div id="search">
	      	     		<h3>
	      	     			5. Search for University
	      	     		</h3>
	      	     		<article class="text-justify">
	      	     			As displayed in the first section, the search box is found in the homepage. Whether you are logged in or not, we can use this box to search for universities that we are interested. 

	      	     		</article>
	      	     		<div class="col-md-12">
	      	     			Follow this steps: 
	      	     		</div>
	      	     		<div class="col-md-12 text-justify">
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	Go to homepage
	      	     			</div>
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	Look for the search box
	      	     			</div>
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	Enter the university full or partial name
	      	     			</div>
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	You will be directed to the results of your search

	      	     			</div>
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	Find and click on te university you were looking for to view its full information
	      	     			</div>

	      	     		</div>
	      	     		<img src="<?php echo site_url("dist/img/front/tutorial/search.png")?>" alt="">
	      	     		<div class="col-md-12">
	      	     			After searching for camerino we get the following:
	      	     		</div>
	      	     		<img src="<?php echo site_url("dist/img/front/tutorial/search_result.png")?>" alt="">

	      	     		<div class="col-md-12">
	      	     			Another way:
	      	     		</div>
	      	     		<div class="col-md-12 text-justify">
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	Go to homepage
	      	     			</div>
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	Scroll down the homepage
x
	      	     			</div>
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	Find the “Recent updates”

	      	     			</div>
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	Look if what you are searching is in there and click it to view its full information 
	      	     			</div>

	      	     		</div>
	      	     		<img src="<?php echo site_url("dist/img/front/tutorial/university.png")?>" alt="">
	      	     	</div>


					<div id="view">
	      	     		<h3>
	      	     			6.	View university information

	      	     		</h3>
	      	     		<article class="text-justify">
	      	     			Once you have found your university of interest, you can open its webpage by clicking in the link. Below is the view a contributor sees about University of Camerino:
	      	     		</article>
	      	     		<img src="<?php echo site_url("dist/img/front/tutorial/info.png")?>" alt="">
	      	     	</div>


	      	     	<div id="upload">
	      	     		<h3>
	      	     			7.	Upload new information 
	      	     		</h3>
	      	     		<article class="text-justify">
	      	     			*Keep in mind that you can upload information only if are logged into the system, so only if you are a contributor. Otherwise you have to register first, than log in and contribute. 

	      	     		</article>
						
						<h4>
							7.1	Existent university 

						</h4>
						<div class="col-md-12 text-justify">
						If the university you want to add information doesn’t contain any information in any of categories, then the “Make a contribution”. Follow the steps below:

	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	Go to homepage
	      	     			</div>
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	Search for the university you are interested
	      	     			</div>
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	Click on the result to open the university page
	      	     			</div>
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	As shown in Figure 10, click on the “Make contribution” button
 
	      	     			</div>
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	You will be directed to the editing page (Figure 11)

	      	     			</div>
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	Add your information (you can also modify your writing)

	      	     			</div>
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	Click submit

	      	     			</div>
	      	     			

	      	     		</div>

	      	     		<img src="<?php echo site_url("dist/img/front/tutorial/edit.png")?>" alt="">

	      	     		<div class="col-md-12">
	      	     			The editing page you are directed after clicking the “Make contribution” is shown below:

	      	     		</div>
	      	     		<img src="<?php echo site_url("dist/img/front/tutorial/edit2.png")?>" alt="">
	      	     		<img src="<?php echo site_url("dist/img/front/tutorial/edit3.png")?>" alt="">

	      	     		<h4>
							7.2	 New university
 

						</h4>
						<div class="col-md-12 text-justify">
						If the university that you are looking for is not yet present in the system then:


	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	Go to homepage
	      	     			</div>
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	In the upper right corner click on “University”

	      	     			</div>
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	Scroll down the search box 

	      	     			</div>
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	Under “University list” find “Add university” and click on it 

 
	      	     			</div>
	      	     	
	      	     		</div>

	      	     		<img src="<?php echo site_url("dist/img/front/tutorial/add.png")?>" alt="">

	      	     		<div class="col-md-12 text-justify">
						You will be directed to the same editing page as before, but here the fields are all blank. 
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	Fill in the fields and click submit

	      	     			</div>
	      	     	
	      	     		</div>

	      	     		<img src="<?php echo site_url("dist/img/front/tutorial/add2.png")?>" alt="">
	      	     	</div>

	      	     	<div id="update">
	      	     		<h3>
	      	     			8.	Update existent information 
	      	     		</h3>
	      	     		<div class="col-md-12 text-justify">
						For updating information about an existent university you have to follow this steps:
 
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	Log in


	      	     			</div>
	      	     			<div class="text-justify" style="margin-left:20px ">
								-	Search for the university you want to update

	      	     			</div>
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	Open the link of the university


	      	     			</div>
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	Click the button “Edit this article” as in Figure 14 or “Edit this article” at the end of the page as shown in Figure 15. 


	      	     			</div>
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	Edit the information you think is not up to date
	      	     			</div>
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	Click submit 

	      	     			</div>
	      	     	
	      	     		</div>
	      	     		<img src="<?php echo site_url("dist/img/front/tutorial/add3.png")?>" alt="">
	      	     		<img src="<?php echo site_url("dist/img/front/tutorial/add4.png")?>" alt="">
	      	     		<img src="<?php echo site_url("dist/img/front/tutorial/add5.png")?>" alt="">
	      	     	</div>



	      	     </div>
	      	     

      	 	</div>
	      	 	
      	   <div class="clearfix"> </div>
      	 </div>
	   </div>
</div>

