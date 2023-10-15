<?php
session_start();
include 'connection.php';

$catname = $_POST['catname']; 
$activestatus = $_POST['activestatus'];
$sno = $_POST['sno'];

$sql = mysqli_query($conn,"UPDATE `categorydetails` SET `catname` ='$catname', `activestatus` = '$activestatus' WHERE `sno` = '$sno'"); 
    ?>
    <script>alert("Catagory Update Succesfully");</script>
    <script>window.location.href='catagorylist.php';</script>
