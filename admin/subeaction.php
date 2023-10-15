<?php
session_start();
include 'connection.php';

$subcatname = $_POST['subcatname'];
$catid = $_POST['catid']; 
$activestatus = $_POST['activestatus'];
$sno = $_POST['sno'];

$sql = mysqli_query($conn," UPDATE `subcat` SET `subcatname` = '$subcatname', `catid` ='$catid', `activestatus` = '$activestatus' WHERE `sno` = '$sno'"); 
    ?>
    <script>alert("Sub Catagory Update Succesfully");</script>
    <script>window.location.href='subcatagorylist.php';</script>
    