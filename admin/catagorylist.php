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
// if(isset($_FILES['image'])){
//     // echo "<pre>";
//     // print_r($_FILES);
//     // echo "</pre>";

//     $filen = $_FILES['image']['name'];
//     $files = $_FILES['image']['size'];
//     $filet = $_FILES['image']['type'];
//     $filetn = $_FILES['image']['tmp_name'];
//     $folder = "upload/". $filen;
    

//     if(move_uploaded_file($filetn, "upload/". $filen)){
//         echo "<img src='$folder' height='100' width='100'>";
//         echo "<script>alert('File Uploaded Succefully.');</script>";
//     }
//     else{
//         echo "<script>alert('Could Not Upload the file.');</script>";
//     }
    
// }
?>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <link rel="stylesheet" href="//cdn.datatables.net/1.13.2/css/jquery.dataTables.min.css">

    <title>Catagory list Iem</title>
    <style>
        a{
            text-decoration:none;
            color:white;
        }
    </style>
  </head>
  <body>
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#">Catagory List Item</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <a  class="submit" href="index.php" role="button">Home</a>
           
        </div>
        </nav>

<div class="container my-4">
 <form enctype="multipart/form-data">  
 <table class="table  table-bordered" id="myTable">
  <thead>
    <tr>
      <th scope="col">S.No.</th>
      <th scope="col">Catagoryname</th>
      <th scope="col">Active Status</th>
      <th scope="col">Image</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  <?php 
    $sql = "SELECT * FROM `categorydetails`";
    $sno = 0;
    $result = mysqli_query($conn,$sql);
    
    while($row= mysqli_fetch_array($result)){
        $sno = $sno + 1;
        echo "
        <tr>
      <th scope='row'>" . $sno . "</th>
      <td>" .$row['catname']. "</td>
      <td>" .$row['activestatus']. "</td>
      <td><input type='file' name='image' value=''></td>
      <td><button class='btn btn-sm btn-primary'><a href='catedit.php?id=".$row['sno']."'>Edit</a></button> <button class='delete btn btn-sm btn-primary' onclick='myFunction()'><a href='delete.php?id=".$row['sno']."'>Delete</a></button> </td>
     
  
    </tr>";
        
        
    }
    ?>
    
  </tbody>
</table>
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
    <script src="//cdn.datatables.net/1.13.2/js/jquery.dataTables.min.js"></script>
    <script>
        $(document).ready( function () {
    $('#myTable').DataTable();
} )
    </script>
    
<script>
function myFunction() {
  confirm("Press a button!");
}
</script>
</body>
</html>