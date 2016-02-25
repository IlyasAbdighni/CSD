
<h2>Users</h2>
<?php echo anchor("admin/user/edit", "<i class='glyphicon glyphicon-plus'></i> Add a user"); ?>

<table class="table table-hover table-striped table-bordered">
    <thead>
    <tr>
        <th>Name</th>
        <th>Email</th>
        <th>Edit</th>
        <th>Delete</th>
        <th>Status</th>
        <th>Type</th>
    <tbody>
    <?php if(count($users)): foreach($users as $user): ?>
        <tr>
            <td><?php echo anchor("admin/user/edit/" . $user->idInternalUser, $user->InternalUserName); ?></td>
            <td><?php echo anchor("admin/user/edit/" . $user->idInternalUser, $user->InternalUserEmail); ?></td>
            <td><?php echo btn_edit("admin/user/edit/" . $user->idInternalUser); ?></td>
            <td><?php echo btn_delete("admin/user/delete/" . $user->idInternalUser); ?></td>
            <td>
                <?php
                    switch($user->StatusBlockUser) {
                        case 0:
                            echo "normal";
                            break;
                        case 1:
                            echo "blocked";
                            break;
                        default:
                            echo "normal";
                    }
                ?>
            </td>
            <td>
                <?php
                    echo $user->InternalUserType_idInternalUserType;
                ?>
            </td>
        </tr>
    <? endforeach; ?>
    <?php else: ?>
        <tr>
            <td colspan="3">We could not find any users.</td>
        </tr>
    <? endif;?>
    </tbody>
    </tr></thead>

</table>
