<?php
session_start();
include 'admin/connection.php';
if(!isset ($_SESSION['username'])){
    ?>
    <script>window.location.href = 'login.php';</script>
    <?php
    }
    else{
    echo $_SESSION['username'];
    }

    $user =  $_SESSION['sno'];
    $pid= $_GET['pid'];
  
   $sql = mysqli_query($conn,"INSERT INTO `cartdetail`(`pid`, `userid`) VALUES ($pid, $user)");
   
?>
<script>alert('Product Added Cart Successfully');</script>";
<script>window.location.href='addtocart.php'</script>";








