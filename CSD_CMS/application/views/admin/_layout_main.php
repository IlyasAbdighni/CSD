
<?php $this->load->view("admin/components/page_head"); ?>

<body class="hold-transition skin-purple sidebar-mini">


<div class="wrapper">

    <!-- Main Header -->
    <header class="main-header">

        <!-- Logo -->
        <a href="<?php echo  site_url("admin/dashboard"); ?>" class="logo">
            <!-- logo for regular state and mobile devices -->
            <span class="logo-lg">
                <?php
                    echo $meta_title;
                ?>
            </span>
        </a>

        <!-- Header Navbar -->
        <nav class="navbar navbar-static-top" role="navigation">
            <!-- Sidebar toggle button-->
            <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                <span class="sr-only">Toggle navigation</span>
            </a>
            <!-- Navbar Right Menu -->
            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">

                    <!-- User Account Menu -->
                    <li class="dropdown user user-menu">
                        <!-- Menu Toggle Button -->
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <!-- The user image in the navbar-->
                            <!-- hidden-xs hides the username on small devices so only the image appears. -->
                            <span class="hidden-xs"><?php echo $this->session->userdata("name");?></span>
                        </a>
                        <ul class="dropdown-menu">
                            <!-- The user image in the menu -->
                            <li class="user-header">
                                <p>
                                    Alexander Pierce - Web Developer
                                    <small>Member since Nov. 2012</small>
                                </p>
                            </li>
                            <!-- Menu Body -->
<!--                            <li class="user-body">-->
<!--                                <div class="col-xs-4 text-center">-->
<!--                                    <a href="#">Followers</a>-->
<!--                                </div>-->
<!--                                <div class="col-xs-4 text-center">-->
<!--                                    <a href="#">Sales</a>-->
<!--                                </div>-->
<!--                                <div class="col-xs-4 text-center">-->
<!--                                    <a href="#">Friends</a>-->
<!--                                </div>-->
<!--                            </li>-->
                            <!-- Menu Footer-->
                            <li class="user-footer">
                                <div class="pull-left">
                                    <a href="#" class="btn btn-default btn-flat">Profile</a>
                                </div>
                                <div class="pull-right">
                                    <?php echo anchor("admin/user/logout", "sign out", "class='btn btn-default btn-flat'"); ?>
<!--                                    <a href="#" class="btn btn-default btn-flat">Sign out</a>-->
                                </div>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
    </header>
    <!-- Left side column. contains the logo and sidebar -->
    <aside class="main-sidebar">

        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">

            <!-- Sidebar user panel (optional) -->
<!--            <div class="user-panel">-->
<!--                <div class="pull-left image">-->
<!--                </div>-->
<!--                <div class="pull-left info">-->
<!--                    <p>Alexander Pierce</p>-->
<!--                    <!-- Status -->-->
<!--                    <a href="#"><i class="fa fa-circle text-success"></i> Online</a>-->
<!--                </div>-->
<!--            </div>-->

            <!-- search form (Optional) -->
            <!-- /.search form -->

            <!-- Sidebar Menu -->
            <ul class="sidebar-menu">
                <li class="header">HEADER</li>
                <!-- Optionally, you can add icons to the links -->
                <?php
                    $segment = $this->uri->segment(2);
                    $active = true;
                ?>
                <?php echo $segment == "dashboard" ? "acitve" : "";?>
                <li class="<?php echo $segment == "dashboard" ? "active" : "";?>"><a href="<?php echo site_url("admin/dashboard"); ?>"><i class="fa fa-tachometer"></i> <span>Dashboard</span></a></li>
                <li class="<?php echo $segment == "user" ? "active" : "";?>"><a href="<?php echo site_url("admin/user"); ?>"><i class="fa fa-users"></i> <span>Manage Users</span></a></li>
                <li class="<?php echo $segment == "page" ? "active" : "";?>"><a href="<?php echo site_url("admin/page"); ?>"><i class="fa fa-file-text"></i> <span>Manage Pages</span></a></li>
                <li class="<?php echo $segment == "record" ? "active" : "";?>"><a href="<?php echo site_url("admin/record"); ?>"><i class="fa fa-file-text"></i> <span>Manage Record</span></a></li>
<!--                <li class="treeview">-->
<!--                    <a href="#"><i class="fa fa-file-text"></i> <span>Pages</span> <i class="fa fa-angle-left pull-right"></i></a>-->
<!--                    <ul class="treeview-menu">-->
<!--                        <li><a href="--><?php //echo site_url('admin/page');?><!--">Manage Pages</a></li>-->
<!--                        <li><a href="--><?php //echo site_url('admin/page/order');?><!--">Order Pages</a></li>-->
<!--                    </ul>-->
<!--                </li>-->
            </ul><!-- /.sidebar-menu -->
        </section>
        <!-- /.sidebar -->
    </aside>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->


        <!-- Main content -->
        <section class="content">

            <!-- Your Page Content Here -->
            <?php
                if($subview) {
                    $this->load->view($subview);
                }
                else {
                    echo $errors["auth_error"];
                }
            ?>

        </section><!-- /.content -->
    </div><!-- /.content-wrapper -->

    <!-- Main Footer -->
    <footer class="main-footer">
        <!-- To the right -->
        <div class="pull-right hidden-xs">
            Anything you want
        </div>
        <!-- Default to the left -->
        <strong>Copyright &copy; 2015 <a href="#">Company</a>.</strong> All rights reserved.
    </footer>

    <!-- Control Sidebar -->
    <!-- Add the sidebar's background. This div must be placed
         immediately after the control sidebar -->
    <div class="control-sidebar-bg"></div>
</div><!-- ./wrapper -->

<?php $this->load->view('components/page_footer'); ?>
