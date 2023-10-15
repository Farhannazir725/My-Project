<?php
session_start();
include 'connection.php';

if(!isset ($_SESSION['username'])){
    ?>
    <script>window.location.href = 'index.php';</script>
    <?php
    }
    else{
    
    }
    
$set = $_SESSION['username'];
$oldpass = $_POST['oldvp'];
$newpass = $_POST['newpassword'];
$oldinput = $_POST['oldpassword'];
$cpassword = $_POST['cnewpassword'];


    

    
    if($oldpass === $oldinput ){ 
    if($newpass === $cpassword){
        $sql = mysqli_query($conn,"UPDATE `admin_login` SET`password`='$newpass' WHERE `username` = '$set'"); 
        ?>
        <script>alert("Password Change Succesfully");</script>
        <script>window.location.href='logout.php';</script>
     <?php   
    }
else{ ?>
    <script>alert("Password not match");</script>
    <script>window.location.href='changepassword.php';</script> 
 <?php

}
   
}
else{
    ?>
    <script>alert("Old Password Dose'nt Match");</script>
    <script>window.location.href='changepassword.php';</script>
<?php
}
?>











