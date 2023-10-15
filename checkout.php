<?php
session_start();
include 'admin/connection.php';
$cname = $_POST['txtname'];
$add = $_POST['txtaddress'];
$city = $_POST['txtcity'];
$state = $_POST['txtstate'];
$country = $_POST['txtcountry'];
$zip = $_POST['txtzip'];
$cont = $_POST['txtcontact'];
$email = $_POST['txtemail'];
$pay = $_POST['paymethod'];
$tamo = $_POST['tamount'];
$uid = $_SESSION['sno'];


 $sql = mysqli_query($conn,"INSERT INTO `orderdetail`(`cname`, `add`, `city`, `state`, `country`, `zipcode`, `contact`, `email`, `payment`, `userid`, `tamount`) VALUES ('$cname', '$add', '$city', '$state', '$country', '$zip', '$cont', '$email', '$pay', $uid,  '$tamo')");

$del = mysqli_query($conn,"DELETE FROM `cartdetail` WHERE userid = $uid");

$up = mysqli_query($conn,"UPDATE `orderproduct` SET `status`= 'Order' WHERE userid = $uid");


// echo "INSERT INTO `orderdetail`(`cname`, `add`, `city`, `state`, `country`, `zipcode`, `contact`, `email`, `payment`, `userid`, `tamount`) VALUES ('$cname', '$add', '$city', '$state', '$country', '$zip', '$cont', '$email', '$pay', $uid,  '$tamo'";

?>
<script>alert('Thanks For Order Your Order Place Succesfully')</script>
<script>window.location.href='index.php'</script>";