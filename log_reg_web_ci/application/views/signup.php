<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>login page</title>

</head>
<body>

<div id="container">
	<h1>Sing up page</h1>

	<?php

	echo form_open("main/signup_validation");

	echo validation_errors();

	echo "<p> Email: ";
	echo form_input("email", $this->input->post("email"));
	echo "</p>";

	echo "<p> Password: ";
	echo form_password("password");
	echo "</p>";

	echo "<p>Confirm Password: ";
	echo form_password("cpassword");
	echo "</p>";

	echo "<p>";
	echo form_submit("signup_submit", "Sing up");
	echo "</p>";

	echo form_close();

	 ?>

<a href="<?php echo base_url().'main/login' ?>">Log in</a>

</div>

</body>
</html>
