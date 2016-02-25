<!DOCTYPE html>


<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><?php echo $meta_title; ?></title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="<?php echo site_url('bootstrap/css/bootstrap.min.css'); ?>">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="<?php echo site_url('dist/css/font-awesome.min.css'); ?>">
    <!-- Ionicons -->
    <link rel="stylesheet" href="<?php echo site_url('dist/css/ionicons.min.css'); ?>">
    <!-- Theme style -->
    <link rel="stylesheet" href="<?php echo site_url("dist/css/AdminLTE.min.css"); ?>">
    <link rel="stylesheet" href="<?php echo site_url("dist/css/custom.css"); ?>">
    <!-- AdminLTE Skins. We have chosen the skin-blue for this starter
          page. However, you can choose any other skin. Make sure you
          apply the skin class to the body tag so the changes take effect.
    -->
    <link rel="stylesheet" href="<?php echo site_url("dist/css/skins/skin-purple.min.css"); ?>">
<!--  style of bootstrap editor -->
    <link rel="stylesheet" href="<?php echo site_url("plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css"); ?>">
<!--  style for datatable  -->

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->

    <!-- REQUIRED JS SCRIPTS -->

    <!-- jQuery 2.1.4 -->
    <script src="<?php echo site_url("plugins/jQuery/jquery-1.12.0.min.js"); ?>"></script>
    <?php if(isset($sortable) && $sortable === true):?>
        <!-- jquery UI-->
        <script src="<?php echo site_url("plugins/jQueryUI/jquery-ui.min.js"); ?>"></script>
        <script src="<?php echo site_url("plugins/jQueryUI/jquery.mjs.nestedSortable.js"); ?>"></script>
    <?php endif; ?>
    <!-- Bootstrap 3.3.5 -->
    <script src="<?php echo site_url("bootstrap/js/bootstrap.min.js"); ?>"></script>
    <!-- AdminLTE App -->
    <script src="<?php echo site_url("dist/js/app.min.js"); ?>"></script>
    <!--Editor js-->
    <script src="<?php echo site_url("plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"); ?>"></script>
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

