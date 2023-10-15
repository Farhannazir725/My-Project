<?php
session_start();
include 'connection.php';




    $sno = $_GET['id'];
    $sql = mysqli_query($conn, " DELETE FROM `productlist` WHERE `productid` = '$sno' ");
    ?>
    <script>alert("Delete Succesfully");</script>
    <script>window.location.href = 'carlist.php';</script>
   










