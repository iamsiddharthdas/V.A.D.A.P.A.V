<!DOCTYPE HTML>
<html>
<head>
<style>
.error {color: #FF0000;}
</style>
</head>
<body>
<?php
require_once 'classes/functions.php';
require_once 'classes/User.php';
require_once 'classes/DB.php';
require_once 'classes/UserTable.php';
start_session();
try {
$formdata = array();
$errors = array();
$username=$password=$cpassword=' ';
$input_method = INPUT_POST;
$formdata['username'] = filter_input($input_method, "username", FILTER_SANITIZE_STRING);
$formdata['password'] = filter_input($input_method, "password", FILTER_SANITIZE_STRING);
$formdata['cpassword'] = filter_input($input_method, "cpassword", FILTER_SANITIZE_STRING);
if (empty($formdata['username'])) {
$errors['username'] = " ";
}
if (empty($_POST['password'])) {
$errors['password'] = " ";
}
if (empty($formdata['cpassword'])) {
$errors['cpassword'] = " ";
}
if (!empty($formdata['password']) && !empty($formdata['cpassword'])
&& $formdata['password'] != $formdata['cpassword']) {
$errors['password'] = " ";
}
if (empty($errors)) {
$username = $formdata['username'];
$password = $formdata['password'];
$cpassword = $formdata['cpassword'];
$connection = DB::getConnection();
$userTable = new UserTable($connection);
$user = $userTable->getUserByUsername($username);
if ($user != null) {
$errors['username'] = " ";
}
}
if (!empty($errors)) {
throw new Exception("There were errors. Please fix them.");
}
$user = new User(null, $username, $password, "user");
$id = $userTable->insert($user);
$user->setId($id);
$_SESSION['user'] = $user;
header('Location:login.php  ');
}
catch (Exception $ex) {
$errorMessage = $ex->getMessage();
require 'book\new_account.php';
}?>
</body>
</html>
