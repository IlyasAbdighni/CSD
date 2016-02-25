
<h2>pages</h2>
<?php echo anchor("admin/page/edit", "<i class='glyphicon glyphicon-plus'></i> Add a page"); ?>

<table class="table table-hover table-striped table-bordered">
    <thead>
    <tr>
        <th>Title</th>
        <th>Edit</th>
        <th>Delete</th>
    <tbody>
    <?php if(count($pages)): foreach($pages as $page): ?>
        <tr>
            <td><?php echo anchor("admin/page/edit/" . $page->id, $page->title); ?></td>
            <td><?php echo btn_edit("admin/page/edit/" . $page->id); ?></td>
            <td><?php echo btn_delete("admin/page/delete/" . $page->id); ?></td>

        </tr>
    <? endforeach; ?>
    <?php else: ?>
        <tr>
            <td colspan="3">We could not find any pages.</td>
        </tr>
    <? endif;?>
    </tbody>
    </tr></thead>

</table>