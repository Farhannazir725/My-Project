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
    <title>Catalog Car's</title>
    <style>
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
            width:250px;
            height:150px;
        }  
    </style>
</head>

<body>
<?php require('header.php');?>

   <!-- //  Car data (Cat)  -->
<div>
<?php  $sql = mysqli_query($conn,"SELECT * FROM categorydetails WHERE 	activestatus= 0");
         while($row = mysqli_fetch_array($sql)){
         ?>
<table>
        <tr><td><a href="carlog.php?catid=<?php echo $row['sno'];?>"><?php echo $row['catname'];?></a></td></tr>

         <tr><?php
            $sql2= mysqli_query($conn,"SELECT * FROM subcat WHERE catid = '{$row['sno']}'	AND activestatus= 0");
            while($row2 = mysqli_fetch_array($sql2)){ ?>
        
        <td ><a href="carlog.php?subcatid=<?php echo $row2['sno'];?>"><?php echo $row2['subcatname'];?> </a></td>
 <?php  } ?></tr>
</table>

<?php } ?>
</div>


                <!-- // sub cat  -->
<div>
<?php
            
        $catId = 0;
        $scatId = 0;

        if (isset($_GET["catid"]))
         $catId =$_GET["catid"];

        if (isset($_GET["subcatid"]))
         $scatId =$_GET["subcatid"];
?>
<table align="center" style="position: absolute; right:200px; top:150px" cellspacing="20px" cellpadding="20px">
<tr>
<?php   
        $sql3 = "SELECT * FROM productlist WHERE activestatus= 0"; 
        if($catId > 0){
        $sql3 = $sql3. " AND catagoryid=" .$catId ;
        }
        if($scatId > 0){
        $sql3 = $sql3. " AND subcatagoryid=" .$scatId ;
        }

        $pl = mysqli_query($conn,$sql3);
        while($row3 = mysqli_fetch_array($pl)){
?>
<form action="productlistaction.php" method="POST">
<td>    <a href="productdetails.php?pid=<?php echo $row3['productid']?>"><?php echo $row3['productname'];?></a><br>
        <a href="productdetails.php?pid=<?php echo $row3['productid']?>"><img src="admin/<?php echo $row3['pimage'];?>">        </a><br>
        <a href="productdetails.php?pid=<?php echo $row3['productid']?>">Price : Rs:<?php echo $row3['price'];?></a><br>
        <a href="productdetails.php?pid=<?php echo $row3['productid']?>">More Details</a><br>
         <button type="submit"><a href="productlistaction.php?pid=<?php echo $row3['productid'];?>">Add To Cart</a></button>
         
</td>


 </form>

<?php }?> </tr></table>
</div>


   
  



</body>

</html>