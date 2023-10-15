<?php
session_start();
include 'connection.php';

$sabcat = $_POST['subcat'];
$catid = $_POST['catid'];
$act = $_POST['act'];

mysqli_query($conn ," INSERT INTO `subcat`(`subcatname`,`activestatus`, `catid`) VALUES ('$sabcat', $act , $catid)");
?>
<script>alert(" SubCatagory Add Succesfully");</script>
<script>window.location.href='subcatform.php';</script>
