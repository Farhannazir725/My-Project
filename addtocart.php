<?php
session_start();
include 'admin/connection.php';
if(!isset ($_SESSION['username'])){
?>
<script>window.location.href = 'login.php';</script>
<?php
}
else{
 $_SESSION['username'];
}



?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add To Cart</title>
    <?php require('link.php');?>
    <script src="jquery/jquery.min.js"></script>
    <style>
        *{
            margin:0px;
            padding:0px;
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

        .form-box{
          width: 400px;
          background: rgba(0,0,0,0.8);
          margin: 2% auto;
          padding: 30px 0;
          color: white;
          box-shadow: 0 0 20px 2px rgbz(0,0,0,0.5);
          font-family: 'Baloo Bhai 2', 'cursive';
        }
        h1{
          text-align: center;
          margin-bottom: 40px;
          font-family: 'Baloo Bhai 2', 'cursive';
        }
        .input-box{
          margin: 31px auto;
          width: 80%;
          border-bottom: 1px solid white;
          padding-top: 10px;
          padding-bottom: 5px;
          font-family: 'Baloo Bhai 2', 'cursive';
        }
        .input-box input{
          width: 90%;
          border: none;
          outline: none;
          background: transparent;
          color: white;
          font-family: 'Baloo Bhai 2', 'cursive';
          border-radius:5px;
          
        }
        ::placeholder{
          color: #ccc;
        }
        .fa{
          margin-right: 10px;
        }
        span{
          position: absolute;
        }
        #hide1{
          display: none;
        }
        .login{
          margin: 40px auto 20px ;
          padding: 10px 0;
          width: 80%;
          display: block;
          outline: none;
          cursor: pointer;
          border: 1px solid white;
          background: transparent;
          color: white;
          font-size: 16px;
          font-family: 'Baloo Bhai 2', 'cursive';
        }
        .icon{
          text-align: center;
        }

        .login:hover{
            background-color:white;
            color:black;
        }
        div a{
          color:white;
        }
        img{
            width:100px;
            height:100px;
        }
</style>   
</head>
<body>
<?php require('header.php');?>
    
    
<form action="orderproduct.php" method="POST">
<table align="center" style="position: absolute; right:400px; top:90px" cellspacing="20px" cellpadding="20px">
<tr>

<?php
$ud = mysqli_query($conn,"SELECT * FROM cartdetail WHERE userid = {$_SESSION['sno']}");
  while($udd = mysqli_fetch_array($ud)){
$pid = $udd['pid'];

  $i = 1;
$sql = mysqli_query($conn,"SELECT * FROM productlist WHERE activestatus = 0 AND  productid = $pid");
while($row = mysqli_fetch_array($sql)){
?>

  <td><input type="hidden" name="pid[]" value="<?php echo $row['productid'];?>"></td>
<td><a href="#"><?php echo $row['productname'];?></a><br>
<a href="#"><img src="admin/<?php echo $row['pimage'];?>"></a><br>
<b>Price : Rs </b><input type="text" name="price[]" id="price<?php echo $i; ?>" value="<?php echo $row['price'];?>" readonly> <br>
<b>Product Number: </b><?php echo $row['prodescrip'];?> <br>
<b>Quantity :</b><input type="text" id="qty<?php echo $i; ?>" name="qty[]"> <br>
<b>Product No:</b> <?php echo $row['catagoryid'];?> <br>
<b>Total :</b><input type="text" id="total<?php echo $i; ?>" name="total[]"> <br>


 <br>

</td>

</tr>



<?php
}
}

?>

<tr><td><input type="submit" value="Submit"></td></tr>


<tr><td><a a href="productlistaction.php?pid=<?php echo $row['productid'];?>"><button>Add More</button></a></td><td><a href="cartaction.php"><button> Buynow</button></a></td></tr>
</table>
</form>


<script>
     <?php 
  $i = 1;
  while($i<=10){
  
  ?>
  $(function(){
				 
			 $("#price<?php echo $i; ?>, #qty<?php echo $i; ?>").on("keydown keyup", sum);
			 function sum() {
				 $("#total<?php echo $i; ?>").val(Number($("#price<?php echo $i; ?>").val()) * Number($("#qty<?php echo $i; ?>").val()));
				 }
			 
			 });
  
  <?php
  $i++;
  }
  ?>
 </script>

</body>
</html>
