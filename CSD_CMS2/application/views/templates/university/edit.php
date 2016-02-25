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
<div class="strip"> </div>


<div class="edit-container clearfix clients">
    <div class="col-md-8 col-sm-12 col-md-offset-2 col-sm-offset-0">
        <!-- <form method="post" action="<?php echo site_url("university/edit") . "/" . $university->idUniversity; ?>" id="edit_form"> -->
        <?php echo form_open(); ?>
            <div class="form-group">
                <div class="panel panel-info">
                    <div class="panel-heading">
                      <h3 class="panel-title">
                          <label for="name">University name: <small class="neccessay">*</small></label>
                      </h3>
                    </div>
                    <div class="panel-body">
                        <input type="text" class="form-control " id="name" name="name" placeholder="University Name:" value="<?php echo $university->UniversityName; ?>">
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="panel panel-info">
                    <div class="panel-heading">
                      <h3 class="panel-title">
                          <label for="address">University address: <small class="neccessay">*</small></label>
                      </h3>
                    </div>
                    <div class="panel-body">
                        <input type="text" class="form-control " id="address" name="address" placeholder="University Address:" value="<?php echo $university->UniversityAddress; ?>">
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="panel panel-info">
                    <div class="panel-heading">
                      <h3 class="panel-title">
                          <label for="phone">University phone number: </label>
                      </h3>
                    </div>
                    <div class="panel-body">
                        <input type="text" class="form-control " id="phone" name="phone" placeholder="University Phone:" value="<?php echo $university->UniversityPhoneNumber; ?>">
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="panel panel-info">
                    <div class="panel-heading">
                      <h3 class="panel-title">
                          <label for="logo">University website: <small class="text-muted"><em>url of university website address</em></small></label>
                      </h3>
                    </div>
                    <div class="panel-body">
                        <input type="text" class="form-control " id="website" name="website" placeholder="University Website:" value="<?php echo $university->UniversityWebsite; ?>">
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="panel panel-info">
                    <div class="panel-heading">
                      <h3 class="panel-title">
                          <label for="logo">University logo: <small class="text-muted"><em>url of university logo picture(not neccessary)</em></small></label>
                      </h3>
                    </div>
                    <div class="panel-body">
                        <input type="text" class="form-control " id="logo" name="logo" placeholder="University Logo:" value="<?php echo $university->UniversityLogoURL; ?>">
                    </div>
                </div>
            </div>
            <div class="form-group">
              <div class="panel panel-info">
                  <div class="panel-heading">
                    <h3 class="panel-title">
                        <label for="category">Content Category: University info</label>
                    </h3>
                  </div>
                  <div class="panel-body">
                      <textarea class="form-control editor" rows="8" name=4 ><?php echo isset($content["info"]->ContentDescription) ? $content["info"]->ContentDescription : ''; ?></textarea>
                  </div>
              </div>
            </div>
            <div class="form-group">
              <div class="panel panel-info">
                  <div class="panel-heading">
                    <h3 class="panel-title">
                        <label for="category">Content Category: Before Arrival</label>
                    </h3>
                  </div>
                  <div class="panel-body">
                      <textarea class="form-control editor" rows="8" name="1"><?php echo isset($content["before"]->ContentDescription) ? $content["before"]->ContentDescription : ''; ?></textarea>
                  </div>
              </div>
            </div>
            <div class="form-group">
              <div class="panel panel-info">
                  <div class="panel-heading">
                    <h3 class="panel-title">
                        <label for="category">Content Category: After Arrival</label>
                    </h3>
                  </div>
                  <div class="panel-body">
                      <textarea class="form-control editor" rows="8" name="2"><?php echo isset($content["after"]->ContentDescription) ? $content["after"]->ContentDescription : ''; ?></textarea>
                  </div>
              </div>
            </div>
            <div class="form-group">
              <div class="panel panel-info">
                  <div class="panel-heading">
                    <h3 class="panel-title">
                        <label for="category">Content Category: Scholarships</label>
                    </h3>
                  </div>
                  <div class="panel-body">
                      <textarea class="form-control editor" rows="8" name=3><?php echo isset($content["scholarship"]->ContentDescription) ? $content["scholarship"]->ContentDescription : ''; ?></textarea>
                  </div>
              </div>
            </div>

            <?php echo validation_errors("<p class='error'>"); ?>
          <input type="submit" class="btn btn-info" value="Submit">
          <a href="<?php echo site_url("university"); ?>" class="btn btn-info"> Cancel </a>
        <?php echo form_close(); ?>
    </div>

</div>

<script src="<?php echo site_url("dist/js/front/jquery.validate.min.js"); ?>" charset="utf-8"></script>
<script type="text/javascript">
    // $("#login-form").validate();
    $(document).ready(function() {
     // executes when HTML-Document is loaded and DOM is ready
        $("#edit_form").validate({
             name: "required",
             category: "required",
             rules: {
                 name: {
                     required: true,
                     minlength: 6
                 },
                 category: {
                     required: true,
                 },
             },
             messages: {
                 name: "Please enter university name!",
                 category: "Please select a category!",
             }
         });

        $(".editor").wysihtml5({
            toolbar: {
                "font-styles": true
                ,"emphasis": true
                ,"lists": true
                ,"html": true
                ,"link": false
                ,"image": false
                ,"color": false
                ,"blockquote": false
                ,"outdent": false
                ,"indent": false
                ,"size": 'sm'
                ,"fa": true
            }
        });
    });

</script>
