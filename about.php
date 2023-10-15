<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <?php require('link.php');?>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css"/>  
    <title>AR Car Rental Agency About</title>
 <style>
  .h-line{
  width: 150px;
  margin:0 auto;
  height: 1.7px;
  

}
.box{
  border-top-color: var(--teal) !important;
}
 </style>   
</head>
<body class="bg-light">
<?php require('header.php');?> 


<div class="my-5 px-4">
  <h2 class="fw-bold h-font text-center">About Us</h2>
  <hr width="150px" height="2px" style="margin: 0 auto; background-color: dark; ">
  
  <p class="text-center mt-3">Lorem ipsum, dolor sit amet consectetur adipisicing elit. <br>
  Ad alias, aliquid doloremque harum sunt sint natus officia vitae nulla id.</p>
</div>

<div class="container">
  <div class="row justify-content-between align">
  <div class="col-lg-6 col-md-5 mb-4 order-lg-1 order-md-1 order-2">
    <h3 class="mb-3">Lorem ipsum dolor sit.</h3>
    <p>
      Lorem ipsum, dolor sit amet consectetur adipisicing elit.
       Mollitia odio non voluptas id saepe dolore nisi.
      Lorem ipsum, dolor sit amet consectetur adipisicing elit.
       Mollitia odio non voluptas id saepe dolore nisi.
      
      </p>
      </div>
 <div class="col-lg-5 col-md-5 mb-4 order-lg-2 order-md-2 order-1">
        <img src="abo/3.jpg" class="w-100">

      </div>
  </div>
</div>

<div class="container">
  <div class="row">
    <div class="col-lg-3 col-md-6 mb-4 px-4">
      <div class="bg-white rounded shadow p-4 border-top border-4 text-center box">
        <img src="abo/hotel.svg" width="70px">
        <h4 class="mt-3">30 + Cities</h4>
      </div>
    </div>
    <div class="col-lg-3 col-md-6 mb-4 px-4">
      <div class="bg-white rounded shadow p-4 border-top border-4 text-center box">
        <img src="abo/customers.svg" width="70px">
        <h4 class="mt-3">200 + Customers</h4>
      </div>
    </div>
    <div class="col-lg-3 col-md-6 mb-4 px-4">
      <div class="bg-white rounded shadow p-4 border-top border-4 text-center box">
        <img src="abo/rating.svg" width="70px">
        <h4 class="mt-3">170 + Reviews</h4>
      </div>
    </div>
    <div class="col-lg-3 col-md-6 mb-4 px-4">
      <div class="bg-white rounded shadow p-4 border-top border-4 text-center box">
        <img src="abo/staff.svg" width="70px">
        <h4 class="mt-3">30 + Staff</h4>
      </div>
    </div>
  </div>
</div>

<h3 class="my-5 fw-bold h-font text-center">MANAGEMENT TEAM</h3>

<div class="container px-4">
  <!-- Swiper -->
  <div class="swiper mySwiper">
    <div class="swiper-wrapper mb-5">
      <div class="swiper-slide bg-white text-center overflow-hidden rounded">
        <img src="abo/2.jpg" class="w-100">
        <h5 class="mt-2">Randome Name</h5>
      </div>
      <div class="swiper-slide bg-white text-center overflow-hidden rounded">
        <img src="abo/2.jpg" class="w-100">
        <h5 class="mt-2">Randome Name</h5>
      </div>
      <div class="swiper-slide bg-white text-center overflow-hidden rounded">
        <img src="abo/2.jpg" class="w-100">
        <h5 class="mt-2">Randome Name</h5>
      </div>
      <div class="swiper-slide bg-white text-center overflow-hidden rounded">
        <img src="abo/2.jpg" class="w-100">
        <h5 class="mt-2">Randome Name</h5>
      </div>
      <div class="swiper-slide bg-white text-center overflow-hidden rounded">
        <img src="abo/2.jpg" class="w-100">
        <h5 class="mt-2">Randome Name</h5>
      </div>
      <div class="swiper-slide bg-white text-center overflow-hidden rounded">
        <img src="abo/2.jpg" class="w-100">
        <h5 class="mt-2">Randome Name</h5>
      </div>
      <div class="swiper-slide bg-white text-center overflow-hidden rounded">
        <img src="abo/2.jpg" class="w-100">
        <h5 class="mt-2">Randome Name</h5>
      </div>
       
    
    </div>
    <div class="swiper-pagination"></div>
  </div>
</div>







 <!-- Swiper JS -->
 <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>

<!-- Initialize Swiper -->
<script>
  var swiper = new Swiper(".mySwiper", {
     
    spaceBetween: 40,
    pagination: {
    el: ".swiper-pagination",
    },
    breakpoints:{
        320:{
          slidesPerView:1,
        },
        640:{
          slidesPerView:1,
        },
        768:{
          slidesPerView:2,
        },
        1024:{
          slidesPerView:3,
        },
      }
  });
</script>
</body>
</html>