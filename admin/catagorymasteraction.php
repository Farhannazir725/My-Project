<?php
session_start();
include 'connection.php';

$catname = $_POST['cat'];
$act = $_POST['act'];

mysqli_query($conn,"INSERT INTO `categorydetails`(`catname`,`activestatus`) VALUES ('$catname','$act')");
?>
<script>alert("Catagory Add Succesfully");</script>
<script>window.location.href='catagorymasterform.php';</script>
