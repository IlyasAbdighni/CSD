<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>members page</title>

</head>
<body>

<div id="container">
	<h1>Members Page </h1>

<?php

echo "<pre>";
print_r($this->session->all_userdata());
echo "</pre>";

 ?>

<a href="<?php echo base_url().'main/logout' ?>">Logout</a>

</div>

</body>
</html>
