<?php
session_start();
$conn = new mysqli("localhost", "root", "", "carproject");


$cname = $_POST['name'];
$price = $_POST['price'];
$prdesc = $_POST['prdesc'];
$qty = $_POST['qty'];
$mini = $_POST['mini'];
$max = $_POST['max'];
$cat = $_POST['cat'];
$subcat = $_POST['subcat'];
$activestatus = $_POST['activestatus'];
$pimage = $_FILES['pimage']['name'];

$target_dir = "images/";
$pimage = $_FILES['pimage']['name'];
list($txt,$ext)=explode(".", $pimage);
date_default_timezone_set("Asia/Calcutta");
$currendate = date("d m Y");
$file = time().substr(str_replace(" ", "_", $txt),0);
$info = pathinfo($file);
$filename = $file.".".$ext;
$fileToUpload = $target_dir.$filename;
$file_type = $_FILES['pimage']['type'];
$allowdextention = array('image/gif','image/jpeg','image/jpg','image/png','application/pdf', 'application/msword');
$expload = explode(".",$_FILES['pimage']['name']);
$extention = end($expload);
if(in_array($file_type,$allowdextention)){
    move_uploaded_file($_FILES['pimage']['tmp_name'], $fileToUpload);

}


$sql = mysqli_query($conn, " INSERT INTO `carproject`.`productlist` (`productname`, `price`, `prodescrip`, `qty`, `catagoryid`, `subcatagoryid`, `minqty`, `maxqty`, `activestatus`, `pimage`) VALUES ('$cname', '$price', '$prdesc', '$qty', '$cat', '$subcat', '$mini', '$max', '$activestatus','$fileToUpload')");
?>
<script>alert("Product Added");</script>
<script>window.location.href='carsaddform.php';</script>