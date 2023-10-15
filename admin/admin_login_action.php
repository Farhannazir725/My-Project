
<?php
session_start();


$conn = mysqli_connect("localhost", "root", "", "carproject");

$username = $_POST['username'];
$pass = $_POST['password'];

$sql = mysqli_query($conn,"SELECT * FROM `admin_login` WHERE `username` = '$username' AND `password` = '$pass'"); 
$row = mysqli_fetch_array($sql);
$num_row = mysqli_num_rows($sql);
$_SESSION['username']= $row['username']; 
    if($num_row == 1){
    echo "<script>alert('you are Successfully Login');</script>";
     echo "<script>window.location.href='index.php'</script>";
 }
 
 else{
     echo "<script>alert('Invalid Credentials');</script>";
     echo "<script>window.location.href='admin_login.php';</script>";
 }
?>
