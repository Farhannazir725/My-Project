<?php
session_start();
// if(!isset($_SESSION['loggedin'])$_SESSION['loggedin']==false){
//     header("location: login.php");
//     exit;
// }
// else{
    
// }
 session_unset();
 session_destroy();




?>
 <script>alert('you are Successfully Logout');</script>
 <script>window.location.href='admin_login.php';</script>