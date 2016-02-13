<div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
    <h4 class="modal-title">please login</h4>
</div>
<div class="modal-body">
    <?php echo validation_errors(); ?>
    <?php echo form_open(base_url('admin/user/login'),"class='form-horizontal'"); ?>
        <div class="form-group">
            <label for="email" class="col-sm-2 control-label">Email</label>
            <div class="col-sm-10">
                <?php
                    $arr = array(
                        "name" => "email",
                        "class" => "form-control",
                        "id" => "email",
                        "placeholder" => "Email"
                    );
                    echo form_input($arr);
                ?>
<!--                <input type="email" class="form-control" id="inputEmail3" placeholder="Email">-->
            </div>
        </div>
        <div class="form-group">
            <label for="password" class="col-sm-2 control-label">Password</label>
            <div class="col-sm-10">
                <?php
                    $arr = array(
                        "name" => "password",
                        "class" => "form-control",
                        "id" => "password",
                        "placeholder" => "password"
                    );
                    echo form_password($arr);
                ?>
<!--                <input type="password" class="form-control" id="inputPassword3" placeholder="Password">-->
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <?php echo form_submit("submit", "Log in", "class='btn btn-primary'")?>
                <?php echo anchor("admin/user/logout", "Log out", "class='btn btn-default pull-right'")?>
<!--                <button type="submit" class="btn btn-default">Sign in</button>-->
            </div>
        </div>
    <?php echo form_close(); ?>
</div>