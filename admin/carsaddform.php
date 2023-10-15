<?php
session_start();
include 'connection.php';
if(!isset ($_SESSION['username'])){
?>
<script>window.location.href = 'admin_login.php';</script>
<?php
}
else{

}

$cat = "SELECT * FROM categorydetails";
$sql = mysqli_query($conn,$cat);
?>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

    <title>Card Adding Form</title>
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
    <h2>Cars Add Form</h2>
    <div class="container my-5">
    <form action="cars_add_Form_action.php" method="POST" enctype="multipart/form-data">
  <div class="form-group">
    <label for="Product Name">Car Name</label>
    <input type="text" class="form-control" name="name" id="name" aria-describedby="emailHelp">
    
  </div>
  <div class="form-group">
    <label for="Product Price">Car Rent Price</label>
    <input type="text" class="form-control" name="price" id="price">
  </div>

  <div class="form-group">
    <label for="Product Description">Car Description</label>
    <input type="text" class="form-control" name="prdesc" id="prdesc">
  </div>

  <div class="form-group">
    <label for="Qty">Qty</label>
    <input type="text" class="form-control" name="qty" id="qty">
  </div>

  <div class="form-group">
    <label for="Minimum Qty">Minimum  day</label>
    <input type="text" class="form-control" name="mini" id="mini">
  </div>

  <div class="form-group">
    <label for="Maximum Qty">Maximum day</label>
    <input type="text" class="form-control" name="max" id="max">
  </div>

  <div class="form-group">
  <select  id="cat" name="cat" >
     <option>Catagory</option>
     <?php while($row = mysqli_fetch_assoc($sql)) {?>   
     <option value="<?php echo $row["sno"];?>"><?php echo $row["catname"];?>                     
    </option>
                   
    <?php }?>
 </select>
    </div>

  <div class="form-group">
  <select  id="subcat" name="subcat">
    <option>Sub Catagory</option> 
    </select>
  <div >

    <label for="Active Status">Active Status</label><br>
    <input type="radio" name="activestatus" id="activestatus"> Active 
    <input type="radio" name="activestatus" id="activestatus"> In Active
  </div>
    <div class="form-group">
    <input type="file" name="pimage" id="pimage">
     </div>
  <br>
  <button type="submit" class="btn btn-primary">Submit</button> <button type="reset" class="btn btn-primary">Reset</button>
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