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
      	 		<h3 class="text-center"> Student support system tutorial -- mobile
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
	      	     				MAINPAGE INTRODUCTION 
	      	     			</a>

	      	     		</li>
	      	     		<li>
	      	     			<a href="#login">
	      	     				LOG IN
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
	      	     				UPDATE EXISTENT INFORMATION
	      	     			</a>
	      	     		</li>
	      	     		<li>
	      	     			<a href="#feedback">
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
	      	     			In the mobile application the main page is constructed from the list of universities, a button like e plus sign (+) to add new information, the search box, the login icon, the tutorial link in the upper part, and the menu in the left corner. This is illustrated with the picture below:


	      	     		</article>
	      	     		<div class="text-center">
	      	     			<img src="<?php echo site_url("dist/img/front/tutorial/mobile/home.png")?>" alt="">
	      	     		</div>
	      	     		
	      	     	</div>


	      	     	<div id="login">
	      	     		<h3>
	      	     			2. Log in
	      	     		</h3>
	      	     		<article class="text-justify">
	      	     			In order to use the full functionalities of our mobile application you have to log into the system. Following this steps you can log in:

	      	     		</article>
	      	     		<div class="col-md-12 text-justify">
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	Go the main page

	      	     			</div>
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	Press the log in icon in the upper part (Figure)

	      	     			</div>
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	Enter your credentials. If you don’t have an account click create one to register. Details are in the section below.

	      	     			</div>
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	You can chose to stay logged in


	      	     			</div>
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	Press login


	      	     			</div>
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	You will be directed to the main page. Now the log in button has turned into log out and you can press it if you want to log out. 


	      	     			</div>
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	Also the plus sign (+) button (shown in Figure) is usable and you can add information with it. Details are given in the sections below



	      	     			</div>
	      	     			
	      	     		</div>
	      	     		<div class="text-center">
	      	     			<img src="<?php echo site_url("dist/img/front/tutorial/mobile/login.png")?>" alt="">
	      	     		</div>
	      	     		


	      	     	</div>

	      	     	<div id="register">
	      	     		<h3>
	      	     			3. Register
	      	     		</h3>
	      	     		<article class="text-justify">
	      	     			If you want to add information, you cannot do it without having an account. To register you have to follow the steps below:


	      	     		</article>
	      	     		<div class="col-md-12 text-justify">
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	Open application in the main page


	      	     			</div>
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	Click the login icon


	      	     			</div>
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	At the bottom of the login page press the “Create one” button


	      	     			</div>
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	Fill in the information the form requires

	      	     			</div>
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	Press login


	      	     			</div>
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	Press register
	      	     			</div>
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	If you are successfully registered you will be redirected to the login page with the username already filled. 

	      	     			</div>
	      	     			The pictures below demonstrate the steps.

	      	     		</div>
	      	     		<div class="text-center">
	      	     			<img src="<?php echo site_url("dist/img/front/tutorial/mobile/register.png")?>" alt="">
	      	     		</div>
	      	     		
	      	     		<div>
	      	     			Redirected login page after registering. Button create one for registering
	      	     		</div>
	      	     		<div class="text-center">
	      	     			<img src="<?php echo site_url("dist/img/front/tutorial/mobile/redirect_login.png")?>" alt="">
	      	     		</div>
	      	     		
	      	     	</div>

	      	     	<div id="search">
	      	     		<h3>
	      	     			4. Search for University
	      	     		</h3>
	      	     		<div class="col-md-12">
	      	     			The first way:
 
	      	     		</div>
	      	     		<div class="col-md-12 text-justify">
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	Log in or open the main page

	      	     			</div>
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	Look into the list of all the universities that appear to find what you need

	      	     			</div>
	      	     			<div>
	      	     				The second way:
	      	     			</div>
	      	     			
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	Search in the search box for your university of interest

	      	     			</div>
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	You can search by the full or partial name ( the search box applies a filter)

	      	     			</div>
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	Once you find the university, you can click on the name to see some general information

	      	     			</div>
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	You can click on “Brief information about this university” to be directed to the full information that the system contains about that university 


	      	     			</div>

	      	     		</div>
	      	     		<div class="text-center">
	      	     			<img src="<?php echo site_url("dist/img/front/tutorial/mobile/search.png")?>" alt="">
	      	     		</div>
	      	     		
	      	     		<div>
	      	     			Using search box to search for university full/partial name:
	      	     		</div>
	      	     		<div class="text-center">
	      	     			<img src="<?php echo site_url("dist/img/front/tutorial/mobile/search_result.png")?>" alt="">
	      	     		</div>
	      	     		
	      	     	</div>


					<div id="view">
	      	     		<h3>
	      	     			5.	View university information

	      	     		</h3>
      	     			<div class="text-justify" style="margin-left:20px ">
      	     				-	Open main page
      	     			</div>
      	     			<div class="text-justify" style="margin-left:20px ">
      	     				-	Search for your university of interest


      	     			</div>
      	     			<div class="text-justify" style="margin-left:20px ">
      	     				-	Click on the university name

      	     			</div>
      	     			<div class="text-justify" style="margin-left:20px ">
      	     				-	For more information click on the “Brief information about this university”

      	     			</div>
      	     			<div class="text-justify" style="margin-left:20px ">
      	     				-	You will be directed to the page shown in Figure 7

      	     			</div>
      	     			<div class="text-justify" style="margin-left:20px ">
      	     				-	You can swipe to view the information in each of the categories 

      	     			</div>
      	     			<div class="text-center">
	      	     			<img src="<?php echo site_url("dist/img/front/tutorial/mobile/info.png")?>" alt="">
	      	     		</div>
	      	     		
	      	     	</div>


	      	     	<div id="upload">
	      	     		<h3>
	      	     			6.	Upload new information 
	      	     		</h3>
	      	     		<div class="text-justify" style="margin-left:20px ">
      	     				-	Open main page
      	     			</div>
      	     			<div class="text-justify" style="margin-left:20px ">
      	     				-	Log in
      	     			</div>
      	     			<div class="text-justify" style="margin-left:20px ">
      	     				-	Search for university of interest


      	     			</div>
      	     			<div class="text-justify" style="margin-left:20px ">
      	     				-	Open the brief information page

      	     			</div>
      	     			<div class="text-justify" style="margin-left:20px ">
      	     				-	Click on the plus sign button, you will be directed to the “Add record” page like in Figure 8
      	     			</div>
      	     			<div class="text-justify" style="margin-left:20px ">
      	     				-	Choose the category you want to add new information. A dropdown list is provided as shown in blew picture
      	     			</div>
      	     			<div class="text-justify" style="margin-left:20px ">
      	     				-	Click save

      	     			</div>
      	     			<div class="text-justify" style="margin-left:20px ">
      	     				-	*The content cannot be empty

      	     			</div>
      	     			<div class="text-center">
      	     				<img src="<?php echo site_url("dist/img/front/tutorial/mobile/update.png")?>" alt="">	
      	     			</div>
      	     			<div class="text-center">
      	     				<p>
      	     					The dropdown list for choosing the category you want to add new information
      	     				</p>
      	     				<img src="<?php echo site_url("dist/img/front/tutorial/mobile/update2.png")?>" alt="">	
      	     			</div>
      	     			
	      	     		
	      	     	</div>

	      	     	<div id="update">
	      	     		<h3>
	      	     			7.	Update existent information 
	      	     		</h3>
	      	     		<div class="col-md-12 text-justify">
					
 
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	Open main page

	      	     			</div>
	      	     			<div class="text-justify" style="margin-left:20px ">
								-	Log in

	      	     			</div>
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	Search for university of interest

	      	     			</div>
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	Open the brief information about that university

	      	     			</div>
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	Go to the information you want to update 

	      	     			</div>
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	Click on the information you want to update 

	      	     			</div>
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	You will be directed to the page shown in Figure 10

	      	     			</div>
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	Click update button 
 

	      	     			</div>
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	Change the content and click save
	      	     			</div>
	      	     	
	      	     		</div>
	      	     		<div class="text-center">
	      	     			<img src="<?php echo site_url("dist/img/front/tutorial/mobile/update3.png")?>" alt="">
	      	     		</div>
	      	     		
	      	     	</div>


	      	     	<div id="feedback">
	      	     		<h3>
	      	     			8.	Leave feedback 
	      	     		</h3>
	      	     		<div class="col-md-12 text-justify">
					
 
	      	     			<div class="text-justify" style="margin-left:20px ">
								-	Log in

	      	     			</div>
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	Search for the university you want to give feedback

	      	     			</div>
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	Open its brief information page

	      	     			</div>
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	Click on the content you want to feedback

	      	     			</div>
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	The same view as in above picture 
	      	     			</div>
	      	     			<div class="text-justify" style="margin-left:20px ">
	      	     				-	Click on like or dislike buttons to leave your positive or negative feedback


	      	     			</div>
	      	     			
	      	     	
	      	     		</div>
	      	     	</div>



	      	     </div>
	      	     

      	 	</div>
	      	 	
      	   <div class="clearfix"> </div>
      	 </div>
	   </div>
</div>

