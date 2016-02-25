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

<div class="edit-container clearfix clients">
    <div class="col-md-8 col-sm-12 col-md-offset-2 col-sm-offset-0">
        <?php echo validation_errors("<p class='error'>"); ?>
        <?php echo form_open(); ?>
            <div class="form-group">
                <div class="panel panel-info">
                    <div class="panel-heading">
                      <h3 class="panel-title">
                          <label for="name">University name: <small class="neccessay">*</small></label>
                      </h3>
                    </div>
                    <div class="panel-body">
                        <input type="text" disabled="disabled" class="form-control " id="name" name="name" placeholder="University Name:" value="<?php echo $university->UniversityName; ?>">
                    </div>
                </div>
            </div>
            <!-- <div class="form-group">
                <div class="panel panel-info">
                    <div class="panel-heading">
                      <h3 class="panel-title">
                          <label for="address">University address: <small class="neccessay">*</small></label>
                      </h3>
                    </div>
                    <div class="panel-body">
                        <input type="text" disabled="disabled" class="form-control " id="address" name="address" placeholder="University Address:" value="<?php echo $university->UniversityAddress; ?>">
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
                        <input type="text" disabled="disabled" class="form-control " id="phone" name="phone" placeholder="University Phone:" value="<?php echo $university->UniversityPhoneNumber; ?>">
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
                        <input type="text" disabled="disabled" class="form-control " id="website" name="website" placeholder="University Website:" value="<?php echo $university->UniversityWebsite; ?>">
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
                        <input type="text" disabled="disabled" class="form-control " id="logo" name="logo" placeholder="University Logo:" value="<?php echo $university->UniversityLogoURL; ?>">
                    </div>
                </div>
            </div> -->

            <div class="form-group">
              <div class="panel panel-info">
                  <div class="panel-heading">
                    <h3 class="panel-title">
                        <label for="category">Content Category: University info</label>
                    </h3>
                  </div>
                  <div class="panel-body">
                      <textarea class="form-control editor" rows="10" name=4 >
                      <?php if($content["info"]): ?>
                        <?php foreach($content["info"] as $this_content): ?>
                         <?php 
                          $str = $this_content['ContentDescription'];
                          // $str = preg_replace('/(?:<|&lt;)\/?([a-zA-Z]+) *[^<\/]*?(?:>|&gt;)/', '', $str)."\n";
                          $str = preg_replace("/&#?[a-z0-9]+;/i","",$str);
                          echo $str; 
                         ?>
                        <? endforeach;?>
                        <? endif; ?>
                      </textarea>
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
                      <textarea class="form-control editor" rows="10" name="1">
                      <?php if($content["before"]): ?>
                        <?php foreach($content["before"] as $this_content): ?>
                         <?php 
                          $str = $this_content['ContentDescription'];
                          // $str = preg_replace('/(?:<|&lt;)\/?([a-zA-Z]+) *[^<\/]*?(?:>|&gt;)/', '', $str)."\n";
                          $str = preg_replace("/&#?[a-z0-9]+;/i","",$str);
                          echo $str; 
                         ?>
                        <? endforeach;?>
                        <? endif; ?>
                      </textarea>
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
                      <textarea class="form-control editor" rows="10" name="2">
                      <?php if($content["after"]): ?>
                        <?php foreach($content["after"] as $this_content): ?>
                         <?php 
                          $str = $this_content['ContentDescription'];
                          // $str = preg_replace('/(?:<|&lt;)\/?([a-zA-Z]+) *[^<\/]*?(?:>|&gt;)/', '', $str)."\n";
                          $str = preg_replace("/&#?[a-z0-9]+;/i","",$str);
                          echo $str; 
                         ?>
                        <? endforeach;?>
                        <? endif; ?>
                      </textarea>
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
                      <textarea class="form-control editor" rows="10" name=3>
                      <?php if($content["scholarship"]): ?>
                        <?php foreach($content["scholarship"] as $this_content): ?>
                         <?php 
                          $str = $this_content['ContentDescription'];
                          // $str = preg_replace('/(?:<|&lt;)\/?([a-zA-Z]+) *[^<\/]*?(?:>|&gt;)/', '', $str)."\n";
                          $str = preg_replace("/&#?[a-z0-9]+;/i","",$str);
                          echo $str; 
                         ?>
                        <? endforeach;?>
                        <? endif; ?>
                      </textarea>
                  </div>
              </div>
            </div>

            <?php echo validation_errors("<p class='error'>"); ?>
          <input type="submit" class="btn btn-info" value="Submit">
          <a href="<?php echo site_url("university/view/".$university->idUniversity); ?>" class="btn btn-info"> Cancel </a>
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
