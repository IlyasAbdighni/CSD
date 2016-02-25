
<?php $this->load->view("admin/components/page_head", $this->data); ?>


<body class="hold-transition login-page">
<div class="login-box">
    <div class="login-logo">
        <a href="<?php echo site_url('admin/user/logout'); ?>"><b><?php echo $meta_title; ?></b></a>
    </div><!-- /.login-logo -->
    <div class="login-box-body">
        <p class="login-box-msg">Please log in:</p>
        <?php $this->form_validation->set_error_delimiters('<p class="bg-danger">', '</p>');?>
        <?php echo validation_errors(); ?>
        <?php echo form_open(base_url("admin/user/login")); ?>
<!--        <form action="../../index2.html" method="post">-->
            <div class="form-group has-feedback">
                <?php
                    $attr = array(
                        "name" => "email",
                        "class" => "form-control",
                        "id" => "email",
                        "placeholder" => "Email"
                    );
                    echo form_input($attr);
                ?>
<!--                <input type="email" class="form-control" placeholder="Email">-->
                <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <?php
                    $attr = array(
                        "name" => "password",
                        "class" => "form-control",
                        "id" => "password",
                        "placeholder" => "Password"
                    );
                    echo form_password($attr);
                ?>
<!--                <input type="password" class="form-control" placeholder="Password">-->
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
            </div>
            <div class="row">
                <div class="col-xs-4">
                    <?php
                        echo form_submit("submit", "Log in", "class='btn btn-primary btn-block btn-flat'");
                    ?>
<!--                    <button type="submit" class="btn btn-primary btn-block btn-flat">Sign In</button>-->
                </div><!-- /.col -->
            </div>
        <?= form_close(); ?>

    </div><!-- /.login-box-body -->
</div><!-- /.login-box -->


<?php $this->load->view("admin/components/page_footer"); ?>