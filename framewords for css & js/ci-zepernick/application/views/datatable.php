<?php
$data['jsArray'] = array('js/jQuery.dtplugin.js','js/datatable.example.js');
$data['cssArray'] = array();

$this -> load -> view('header', $data);
?>
    <div class="page-header">
	   <h1>CI-DataTables Library Example</h1>
	</div>
	
	<div class="row">
	    <div class="col-md-12">
	        <div class="panel panel-default">
              <div class="panel-body">
              		<table id="sampleOrderTable">
              			<thead>
              				<tr>
              					<td><input type="text" /></td>
              					<td><input type="text" /></td>
              					<td><input type="text" /></td>
              					<td><input type="text" /></td>
              					<td><input type="text" /></td>
              					<td><input type="text" /></td>
              				</tr>
              				<tr>
              					<th>Order#</th>
              					<th>Order Dt</th>
              					<th>Status</th>
              					<th>Customer</th>
              					<th>Contact</th>
              					<th>Credit Limit</th>
              				</tr>
              			</thead>
              			<tbody></tbody>
              		</table>
              </div>
            </div>
	    </div>
	</div>

<?php
$this->load->view('footer');
?>