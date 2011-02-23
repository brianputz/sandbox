<?php
function login($user,$pwd) {
	//lookup the username & password in database, return  true for success
	$link = mysql_connect('localhost', 'loffelmr', '0r^n63') 
					or die('Could not connect: ' . mysql_error());
	mysql_select_db('loffelmr') or die('Could not select database');
	$query = "SELECT * FROM mydb_users WHERE username='$user' AND password='$pwd';";
	$results = mysql_fetch_assoc($query) or die('qry failed: '.mysql_error());
	if (mysql_num_rows()>=1) {
		return true;
	} else {
		return false;
	}
}
// if we get form data try to login
$isLoggedIn = false;
if (isset($_GET['submit1'])) {
	$uu = $_GET['username'];
	$pp = $_GET['password']; 
	$isLoggedIn = login($uu,$pp);
}
?><!DOCTYPE html>
<html>
<head>
	<title>SQL Injection</title>
</head>
<body>
<?
if ($isLoggedIn) {
	echo '<h1>You are logged in</h1>';
} else {
	echo '<h1>Please login</h1>';
}
?>
	<form>
	<fieldset>
		<label>Username</label> <input type="text" id="username" /><br/>
		<label>Password</label> <input type="password" id="password" /><br/>
		<input type="submit" id="submit1" value="Login" />
	</fieldset>
	</form>
</body>
</html>
