<div class="panel panel-default">
  <!-- Default panel contents -->
  <div class="panel-heading">Records:</div>
  <div class="panel-body">
      show: &nbsp;
      <a class="btn btn-default" href="<?php echo site_url("admin/record/index");?>" role="button">All</a>
      <a class="btn btn-default" href="<?php echo site_url("admin/record/approved");?>" role="button">Approved</a>
      <a class="btn btn-primary" href="<?php echo site_url("admin/record/rejected");?>" role="button">Rejected</a>
      <a class="btn btn-default" href="<?php echo site_url("admin/record/waiting");?>" role="button">Waiting</a>
  </div>


  </div>

  <!-- Table -->
  <table id="record-table" class="table table-striped table-bordered table-hover" width="100%">
      <thead>
          <tr>
              <th>University name</th>
              <th>User ID</th>
              <th>Submit time</th>
              <th>Status</th>
              <th>Operation</th>
          </tr>
      </thead>
      <tbody>
        <?php if(is_array($records)): ?>
        <?php foreach($records as $record): ?>
          <tr>
              <td><?php echo anchor(site_url("admin/record/view/".$record["history_id"]), $record["university"]); ?></td>
              <td><?php echo $record["user_id"]; ?></td>
              <td><?php echo $record["submit_time"]; ?></td>
              <td>
              <?php
                switch ($record["status"]) {
                    case REJECTED:
                        echo "rejected";
                        break;

                    case APPROVED:
                        echo "approved";
                        break;


                    case WAITING:
                        echo "waiting";
                        break;


                      default:
                        echo "waiting";
                        break;
                }
              ?>
              </td>
              <td><?php echo btn_view("admin/record/view/" . $record["history_id"]); ?></td>
          </tr>
      <? endforeach; ?>
      <? else :?>
        <tr>
            <td>
                There is no record.
            </td>
        </tr>
    <? endif; ?>
      </tbody>
  </table>
  <!-- pagination -->
  <nav>

  <?php
    if (count($records)) {
        foreach ($links as $link) {
            echo $link;
        }
    }

  ?>

</nav>
</div>



<script type="text/javascript" language="javascript" >
    $(document).ready(function() {

//        var dataTable = $('#record-table').DataTable();
    } );
</script>
