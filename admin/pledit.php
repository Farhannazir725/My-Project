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

?>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

    <title>Product Edit Form</title>
    <style>
        .container{
            width:30%;
          
           
        }
        h2{
            text-align:center;
            margin-top:5px;
        }
    </style>
  </head>
  <body>
    <h2>Product Edit Form</h2>
    <div class="container my-5">
    <form action="pleditac.php" method="POST" enctype="multipart/form-data">
  <div class="form-group">
  <?php 
         $sno = $_GET['id'];
        $sql = mysqli_query($conn,"SELECT * FROM `productlist` WHERE `productid`= '$sno' ");
        $row = mysqli_fetch_array($sql);
        
   ?>
   <input type="hidden" name="sno" value="<?php echo $row['productid'];?>">
    <label for="Product Name">Product Name</label>
    <input type="text" class="form-control" name="name" id="name" value="<?php echo $row['productname'];?>">
    
  </div>
  <div class="form-group">
    <label for="Product Price">Product Price</label>
    <input type="text" class="form-control" name="price" id="price" value="<?php echo $row['price'];?>">
  </div>

  <div class="form-group">
    <label for="Product Description">Product Description</label>
    <input type="text" class="form-control" name="prdesc" id="prdesc" value="<?php echo $row['prodescrip'];?>">
  </div>

  <div class="form-group">
    <label for="Qty">Qty</label>
    <input type="text" class="form-control" name="qty" id="qty" value="<?php echo $row['qty'];?>">
  </div>

  <div class="form-group">
    <label for="Minimum Qty">Minimum Qty</label>
    <input type="text" class="form-control" name="mini" id="mini" value="<?php echo $row['minqty'];?>">
  </div>

  <div class="form-group">
    <label for="Maximum Qty">Maximum Qty</label>
    <input type="text" class="form-control" name="max" id="max" value="<?php echo $row['maxqty'];?>">
  </div>

  <div class="form-group">
    <?php $set = $row['catagoryid']; ?>
  <select  id="cat" name="cat" >
    <?php
    
    $qt = mysqli_query($conn , "SELECT * FROM `categorydetails` WHERE `sno` = $set"); 
    $qtt = mysqli_fetch_assoc($qt);
    ?>
  <option value="<?php echo $set?>"><?php echo $qtt['catname'];?></option>  
     <?php 
     $cat = "SELECT * FROM categorydetails";
     $result = mysqli_query($conn,$cat);
     while($row1 = mysqli_fetch_assoc($result)) {?>   
     <option value="<?php echo $row1["sno"];?>"><?php echo $row1["catname"];?>                     
    </option>
                   
    <?php }?>
 </select>
    </div>

  <div class="form-group">
  <select  id="subcat" name="subcat">
  <?php
    $sb = mysqli_query($conn , "SELECT * FROM `subcat` WHERE `catid` = $set"); 
    $sbb = mysqli_fetch_assoc($sb);
    ?>
    <option value="<?php echo $sbb['sno'];?>"><?php echo $sbb['subcatname'];?></option>  
    </select>
  <div >

    <label for="Active Status">Active Status</label><br>
    <input type="radio" name="activestatus" id="activestatus"> Active 
    <input type="radio" name="activestatus" id="activestatus"> In Active
  </div>
 
  <div class="form-group">
      <input type="hidden" name="opimage" value="<?php echo $row['pimage'];?>">
    <input type="file" name="pimage">
    <img src="<?php echo $row['pimage'];?>" height="auto" width="100px">
  </div>

  <br>
  <button type="submit" class="btn btn-primary">Submit</button>
</form> 
    </div>

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
    -->
    <script src="https://code.jquery.com/jquery-3.6.3.js" integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>

    <script>
   // Country state

   $('#cat').on('change', function(){
    let catna = this.value;
    console.log(catna);
    $.ajax({
        url:"sc.php",
        type:"POST",
        data: {
            cat_data:catna
         },
         success: function(result){
            $('#subcat').html(result);
            console.log(result);
         }
    })
     });

    // alert("Hello");
 </script>
  </body>
</html>