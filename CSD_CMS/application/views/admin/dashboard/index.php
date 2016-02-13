<?php $user_type = $this->session->userdata("user_type"); ?>
<?php if($user_type != 0): ?>
    <h2>Welcom</h2>
    <?php echo anchor(site_url('admin/user'), "view users"); ?>
    <br>
    <?php echo anchor(site_url('admin/page'), "view pages"); ?>
<?php else: ?>
    <div class="jumbotron">
        <h3>YOU DO NOT HAVE AUTHORITY.</h3>
        <?php echo anchor("admin/user/logout", "back to login", "class='btn btn-primary btn-lg'")?>
    </div>
<? endif; ?>
