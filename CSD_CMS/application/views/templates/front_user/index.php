<!--header start here-->
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
<div class="strip"> </div>

<div class="container">
    <div class="row user-page">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-info">
              <div class="panel-heading">About user:</div>
              <ul class="list-group">
                <li class="list-group-item">User id: <?php echo $this->session->userdata["id"]; ?></li>
                <li class="list-group-item">User name: <?php echo $this->session->userdata["name"]; ?></li>
                <li class="list-group-item">User email: <?php echo $this->session->userdata["email"]; ?></li>
                <li class="list-group-item">User contributions: </li>
              </ul>
          <?php if(count($contributions)): ?>

              <table class="table">
                <thead>
                    <th width="70%">
                        university id
                    </th>
                    <th>
                        submit date
                    </th>
                    <th>
                        state
                    </th>
                </thead>
                <tbody>
                <?php foreach ($contributions as $contribution): ?>
                    <tr>
                        <td><?php echo $contribution["university_name"]; ?></td>
                        <td><?php echo $contribution["submit_time"]; ?></td>
                        <td>
                            <?php
                             switch ($contribution["status"]) {
                                 case REJECTED:
                                     echo "rejected";
                                     break;
                                 case APPROVED:
                                     echo "approved";
                                     break;
                                 case WAITING:
                                     echo "waiting";
                                     break;

                                 default:
                                    echo "waiting";
                                    break;
                             }
                            ?>
                        </td>
                    </tr>
                <?php endforeach; ?>
                </tbody>
              </table>

          <?php else: ?>
              <div class="panel-body">
                <p>You have no contributions yet.</p>
              </div>
          <? endif; ?>

            </div>
        </div>
    </div>
</div>
