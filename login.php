<?php
session_start();
include 'admin/connection.php';

?>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width">
  <title>AR Car's Login</title>
  <link href="style.css" rel="stylesheet" type="text/css" />
  <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
    type="text/css" />
    <style>
*{
  margin: 0;
  padding: 0;
}
body{
  background-image: linear-gradient(rgba(0,0,0,0.7), rgba(0,0,0,0.7)), url(bg4.jpg);
  background-size: cover;
  background-position: center;
  font-family: sans-serif;
}
.form-box{
  width: 400px;
  background: rgba(0,0,0,0.8);
  margin: 12% auto;
  padding: 20px 0;
  color: white;
  box-shadow: 0 0 20px 2px rgbz(0,0,0,0.5);
}
h1{
  text-align: center;
  margin-bottom: 40px;
}
.input-box{
  margin: 31px auto;
  width: 80%;
  border-bottom: 1px solid white;
  padding-top: 10px;
  padding-bottom: 5px;
}
.input-box input{
  width: 90%;
  border: none;
  outline: none;
  background: transparent;
  color: white;
  
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
}
.icon{
  text-align: center;
}</style>
</head>

<body>
    
  <div class="form-box">
    <h1>Login Here</h1>
    <form action="loginaction.php" method="POST">
    <div class="input-box">
      <i class="fa fa-envelope-o"></i>
      <input type="email" name="email" placeholder="Email Id">
    </div>

    <div class="input-box">
      <i class="fa fa-key"></i>
      <input type="password" placeholder="Password" name="password" id="mInput">
      <span class="eye" onclick="myFunction()">
        <i class="fa fa-eye" id="hide1"></i>
        <i class="fa fa-eye-slash" id="hide2"></i>
      </span>
    </div>
    <button type="submit" class="login">Login</button>
    <br>
  </form>
    <div class="icon">
        
      <i class="fa fa-facebook" id="icon"></i>
      <i class="fa fa-instagram" id="icon"></i>
      <i class="fa fa-google" id="icon"></i>
    </div>
  </div>
  <script src="script.js"></script>

  <!--
  This script places a badge on your repl's full-browser view back to your repl's cover
  page. Try various colors for the theme: dark, light, red, orange, yellow, lime, green,
  teal, blue, blurple, magenta, pink!
  -->
  <script src="https://replit.com/public/js/replit-badge.js" theme="blue" defer></script>
  
  <script>function myFunction() {
  let x = document.getElementById("mInput");
  let y = document.getElementById("hide1");
  let z = document.getElementById("hide2");

  if (x.type === 'password') {
    x.type = 'text';
    y.style.display = 'block';
    z.style.display = 'none';
  }
  else {
    x.type = 'password';
    y.style.display = 'none';
    z.style.display = 'block';
  }
}</script>
</body>





  
</html>