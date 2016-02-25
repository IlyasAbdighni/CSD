
<!-- <?php dump($record); ?> -->

<?php echo form_open(site_url("admin/record/index/")); ?>

<table class="table table-striped view-page-table">
  <tbody>
      <tr>
          <td width="30%">
              University name:
          </td>
          <td>
             <b><?php echo $record["university_name"]; ?></b>
          </td>
      </tr>
      <tr>
          <td width="30%">
              User ID:
          </td>
          <td>
             <b><?php echo $record["user_id"]; ?></b>
          </td>
      </tr>
      <tr>
          <td width="30%">
              Category:
          </td>
          <td>
             <b><?php echo $record["category_id"]; ?></b>
          </td>
      </tr>
      <tr>
          <td width="30%">
              Record:
          </td>
          <td>
             <b><?php echo $record["record_id"]; ?></b>
          </td>
      </tr>
      <tr>
          <td width="30%">
              Status:
          </td>
          <td>
             <b><?php echo $record["status"]; ?></b>
          </td>
      </tr>
      <tr>
          <td width="30%">
              Record:
          </td>
          <td>
             <b><?php echo $record["record_content"]; ?></b>
          </td>
      </tr>
      <tr>
          <td width="30%">
              Set Status:
          </td>
          <td>
            <b>
            <?php
             echo form_dropdown("status-options", [ REJECTED => "reject", APPROVED => "approved", WAITING => "waiting", ], $record["status"], "class='form-control'");
             echo form_input("id", $record["id"], "hidden");
             ?>
            </b>
          </td>
      </tr>

  </tbody>
</table>
<?php
    echo form_submit('save', "Save", "class='btn btn-primary'");
    echo "  ";
    echo anchor(site_url("admin/record/index"), "Cancel", "class='btn btn-primary'");
 ?>
<?php echo form_close(); ?>
