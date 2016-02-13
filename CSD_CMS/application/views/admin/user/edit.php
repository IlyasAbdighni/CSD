
<section class="content-header">
    <h1>
        <?php echo empty($user->idInternalUser) ? "Add a new user: " : "Edit user " . $user->InternalUserName; ?>
    </h1>

</section>
<?php $this->form_validation->set_error_delimiters('<p class="bg-danger">', '</p>');?>
<?php echo validation_errors(); ?>
<?php echo form_open("", array("class" => "clearfix")); ?>
    <div class="form-group col-md-6">
        <label for="name">Name</label>
        <?php
            $attr = array(
                "name" => "name",
                "class" => "form-control",
                "placeholder" => "Name",
                "value" => $user->InternalUserName,
            );
            echo form_input($attr);
        ?>
    </div>
    <div class="form-group col-md-6">
        <label for="email">Email</label>
        <?php
        $attr = array(
            "name" => "email",
            "class" => "form-control",
            "placeholder" => "Email",
            "value" => $user->InternalUserEmail,
        );
        echo form_input($attr);
        ?>
    </div>
    <div class="form-group col-md-6">
        <label for="password">Password</label>
        <?php
        $attr = array(
            "name" => "password",
            "class" => "form-control",
            "placeholder" => "password",
        );
        echo form_password($attr);
        ?>
    </div>
    <div class="form-group col-md-6">
        <label for="password_confirm">Confirm password</label>
        <?php
        $attr = array(
            "name" => "password_confirm",
            "class" => "form-control",
            "placeholder" => "confirm password",
        );
        echo form_password($attr);
        ?>
    </div>
    <div class="form-group col-md-6">
        <label for="change_user_block_status">Block status</label>
        <select name="user_block_status" class="form-control">
            <?php
                $status_normal = false;
                $status_block = false;
                if ($user->StatusBlockUser == 0) {
                    $status_normal = true;
                }
                else {
                    $status_block = true;
                }
            ?>
            <option value="0" <?php echo set_select('user_block_status', 0, $status_normal); ?> >normal</option>
            <option value="1" <?php echo set_select('user_block_status', 1, $status_block); ?> >block</option>
        </select>
    </div>

    <div class="text-left col-md-12">
        <?php echo form_submit("submit", "save", "class='btn btn-primary'"); ?>
        <?php echo anchor(base_url("admin/user"), "cancel", "class='btn btn-primary'"); ?>
    </div>
<?php echo form_close();?>