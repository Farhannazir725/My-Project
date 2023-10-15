<?php
session_start();
include 'connection.php';


$sno = $_POST['sno'];
$pname = $_POST['name'];
$price = $_POST['price'];
$prdesc = $_POST['prdesc'];
$qty = $_POST['qty'];
$mini = $_POST['mini'];
$max = $_POST['max'];
$cat = $_POST['cat'];
$subcat = $_POST['subcat'];
$activestatus = $_POST['activestatus'];
$opimage = $_POST['opimage'];
$pimage = $_FILES['pimage']['name'];

if(!empty($pimage)){
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
$sql = mysqli_query($conn,"UPDATE `productlist` SET `productname` ='$pname', `price` =$price,`prodescrip` ='$prdesc',`qty` =$qty,`catagoryid` =$cat,`subcatagoryid` =$subcat,`minqty` = $mini, `maxqty` =$max, `activestatus` = '$activestatus', `pimage` = '$fileToUpload' WHERE `productid` = $sno"); 
}
else{
    $sql = mysqli_query($conn,"UPDATE `productlist` SET `productname` ='$pname', `price` =$price,`prodescrip` ='$prdesc',`qty` =$qty,`catagoryid` =$cat,`subcatagoryid` =$subcat,`minqty` =$mini, `maxqty` =$max, `activestatus` = '$activestatus', `pimage` = '$opimage' WHERE `productid` = $sno");

}

// echo "UPDATE `productlist` SET `productname` ='$pname', `price` ='$price',`prodescrip` ='$prdesc',`qty` ='$qty',`catagoryid` ='$cat',`subcatagoryid` ='$subcat',`minqty` ='$mini', `maxqty` ='$max', `activestatus` = '$activestatus' WHERE `productid` = $sno";
 


    ?>
    <script>alert("Product Update Succesfully");</script>
    <script>window.location.href='carlist.php';</script>
