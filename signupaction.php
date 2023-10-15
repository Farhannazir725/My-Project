<?php
include 'admin/connection.php';

$name = $_POST['name'];
$uname = $_POST['uname'];
$email = $_POST['email'];
$password = $_POST['password'];
$cpassword = $_POST['cpassword'];


$hash = password_hash($password,PASSWORD_BCRYPT);
$sql = mysqli_query($conn, "INSERT INTO `carproject`.`user` (`names`, `email`, `password`) VALUES ('$name', '$email', '$hash')");

?>
<script>alert("Create Account Successfully");</script>
<script>window.location.href='login.php';</script>