<?php
session_start();
include 'admin/connection.php';

?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>AR Vehicle Service</title>
    <style>
        body{
           
        }
        nav{
            position: sticky;
            
        }
        .bg{
            background:transparent;
            height: 100vh;
            width: 100vw;
            position: absolute;
            background-image: linear-gradient(rgba(0,0,0,0.7), rgba(0,0,0,0.7)), url(bg1.jpg);
            filter: brightness(1.0);
            background-size: cover;
            padding: 100px 0;
            top: 0;
            left: 0;
            z-index: -1;
            

        }
    </style>
</head>
<body>
    

<!-- Nav bar -->
<nav class="navbar navbar-expand-lg navbar-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">AR CAR AGENCY</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="booking.php">Booking</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="gallery.php">Gallery</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="about.php">About</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="contact.php">Contact US</a>
        </li>
       
        
      </ul>
     
    </div>
  </div>
</nav>

   <!-- End of Nav bar -->
        
   <!-- // bg Image -->
   <div class="bg"> </div>


   <!-- // Our Cars -->
   <div class="container ">
    <div class="row ">
   
        <div class="card mx-2 " style="width: 18rem;">
        <img src="images/1.jfif" class="card-img-top" alt="...">
        <div class="card-body">
        </div>
        </div>

        <div class="card mx-2" style="width: 18rem;">
        <img src="images/1.jfif" class="card-img-top" alt="...">
        <div class="card-body">
        </div>
        </div>

        <div class="card mx-2" style="width: 18rem;">
        <img src="images/1.jfif" class="card-img-top" alt="...">
        <div class="card-body">
        </div>
        </div>

        <div class="card mx-2 my-2" style="width: 18rem;">
        <img src="images/1.jfif" class="card-img-top" alt="...">
        <div class="card-body">
        </div>
        </div>
        <div class="card mx-2 my-2" style="width: 18rem;">
        <img src="images/1.jfif" class="card-img-top" alt="...">
        <div class="card-body">
        </div>
        </div>
        <div class="card mx-2 my-2" style="width: 18rem;">
        <img src="images/1.jfif" class="card-img-top" alt="...">
        <div class="card-body">
        </div>
        </div>
        









    </div>
    </div>















<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>