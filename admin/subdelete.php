<?php
session_start();
include 'connection.php';




    $sno = $_GET['id'];
    $sql = mysqli_query($conn, " DELETE FROM `subcat` WHERE `sno` = '$sno' ");
    ?>
    <script>alert("Delete Succesfully");</script>
    <script>window.location.href = 'subcatagorylist.php';</script>
   






    subcat



