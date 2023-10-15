
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
$user = $_SESSION['sno'];
$count = count($_POST['pid']);

for($i=0; $i<$count; $i++){
 $pid = $_POST['pid'][$i];
 $price = $_POST['price'][$i];
 $qty = $_POST['qty'][$i];
$total = $_POST['total'][$i];
$sql = mysqli_query($conn,"INSERT INTO `orderproduct`(`userid`, `pid`, `qty`, `price`, `totalamount`) VALUES ( $user, $pid , $qty, $price, $total)"); 

//  echo "INSERT INTO `orderproduct`(`userid`, `pid`, `qty`, `price`, `totalamount`) VALUES ( $user, $pid , $qty, $price, $total)";

}
//  die();
?>

 <script>window.location.href='main.php'</script>";
 
 
