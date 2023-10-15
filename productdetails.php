<?php
session_start();
include 'admin/connection.php';

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <?php require('link.php');?>
    <title>Product Full Details</title>
    <style>
        *{
            margin:0px;
            padding:0px;
        }
    
        
     

/*  section */
section{
    display:grid;
    grid-template-areas: 
 
  'section section section section'
  
  ;
  
   
}
.item{
    display:grid;
    
  
}
a{
 
 text-decoration: none;
 color:black;
 font-family: 'Baloo Bhai 2', 'cursive';
 }
 a:hover{
    color: black;
    background-color: #fff;
    text-decoration:2px solid brown underline;
    border-radius:30px;

 }
 img{
    width:350px;
    height:300px;
    border:2px solid black;
  } 
    
    </style>
</head>
<body>
<h2>
<?php if(isset($_SESSION['username'])){
         echo $_SESSION['username'];
} ?> 
</h2> 

  
    

 <div>
    <?php
    $sql = mysqli_query($conn,"SELECT * FROM categorydetails WHERE 	activestatus= 0");
    while($row = mysqli_fetch_array($sql)){
        ?>
<table>
    <tr><td><a href="catalog.php?catid=<?php echo $row['sno'];?>"><?php echo $row['catname'];?></a></td></tr>

    <tr><?php
    $sql2= mysqli_query($conn,"SELECT * FROM subcat WHERE catid = '{$row['sno']}'	AND activestatus= 0");
    while($row2 = mysqli_fetch_array($sql2)){ ?>
        
<td ><a href="catalog.php?subcatid=<?php echo $row2['sno'];?>"><?php echo $row2['subcatname'];?> </a></td>
    <?php    
    }
        ?></tr>
</table>

<?php
    }
    ?>
</div>

<div>
   <?php

$pid= $_GET['pid'];

?>
<table align="center" style="position: absolute; right:400px; top:90px" cellspacing="20px" cellpadding="20px">
<tr>
 <?php   
$sql3 = mysqli_query($conn,"SELECT * FROM productlist WHERE activestatus= 0 AND  productid = $pid"); 


 while($row3 = mysqli_fetch_array($sql3)){
?>

<td><a href="#"><?php echo $row3['productname'];?></a><br>
<a href="#"><img src="admin/<?php echo $row3['pimage'];?>"></a><br>
<b>Price : Rs </b><?php echo $row3['price'];?> <br>
<b>Product Description: </b><?php echo $row3['prodescrip'];?> <br>
<b>Quantity :</b><?php echo $row3['qty'];?> <br>
<b>Product No:</b> <?php echo $row3['catagoryid'];?> <br>
<a href="productlistaction.php?pid=<?php echo $row3['productid'];?>"><button>Add To Cart </button></a><br>

</td>




<?php
 }




   ?> 
   </tr>
   </table>
</div>
 
</body>
</html>