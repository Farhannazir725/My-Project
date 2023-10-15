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
    <link
        href="https://fonts.googleapis.com/css2?family=Baloo+Bhai+2&family=Baloo+Bhaina+2&family=Lato:wght@700&family=Open+Sans:ital,wght@0,300;0,400;0,600;0,800;1,600&family=Roboto:wght@100&family=Rowdies:wght@300;400&display=swap"
        rel="stylesheet">
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
    type="text/css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>AR Car's Sign Up</title>
    <style>
        *{
            margin:0px;
            padding:0px;
        }
        h1{
            margin-top:0px;
           text-align:center;
           font-family: 'Baloo Bhai 2', 'cursive';
        }
       h2{
        
        font-family: 'Baloo Bhai 2', 'cursive';
        position: relative;
        display: flex;
        margin:0px 1150px;
        font-size:15px;
        color:white;
        padding:5px;
        
        
       }
       h2 a{
        text-decoration: none;
        color: white;
       }
        
        nav{
            display: flex;
            font-family: 'Baloo Bhai 2', 'cursive';
            align-items: center;
            position: absolute;
            top: 0;
           
             margin: 70px 400px;
        }
        nav::before{
            content: "";
            background-color: black;
            position: absolute;
            height: 100%;
            width: 50%%;
            z-index: -1;
            opacity: 0.4;
}
    nav ul{
    display: flex;
    font-family: 'Baloo Bhai 2', 'cursive';
     }
     nav ul li{
    list-style: none;
    font-size: 16px;
        }
        nav ul li a{
    color: white;
    text-decoration: none;
    display: block;
    padding: 3px 22px;
    border-radius: 20px;
}
nav ul li a:hover{
    color: black;
    background-color: #fff;
    text-decoration:2px solid brown underline;
    
}
body{
    background:url("bg2.jpg");
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
  background: transparent;
  border-bottom: 1px solid white;
  padding-top: 10px;
  padding-bottom: 5px;
  font-family: 'Baloo Bhai 2', 'cursive';
}
.input-box input{
  width: 90%;
  border: 1px solid white;
  outline: none;
  background: transparent;
  color: white;
  font-family: 'Baloo Bhai 2', 'cursive';
  border-radius:5px;
  margin:5px;
  text-align:center;
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
    
    </style>
</head>
<body>
<h2><a class="btn btn-info mx-1" href="index.php" role="button">Home</a>
    <br> <i class="fa fa-envelope-o"></i>
</a> 

</h2>

    <div class="form-box">
    <h1>Sign Up Form</h1>
    <div class="input-box">
    <form action="signupaction.php" method="POST">
      <input type="text" placeholder="Name" name="name" autocomplete="off" required="">
      <input type="text" placeholder="User Name" name="uname" autocomplete="off">
      <input type="text" placeholder="Enter Your Email" name="email" autocomplete="off" equired="">
      <input type="password" placeholder="Password" id="mInput" name="password" autocomplete="off" equired="">
      <input type="password" placeholder="Confirm Password" id="mInput" name="cpassword" autocomplete="off">
    </div>

    
    <button type="submit" class="login">Login</button>
   
    </form>
    
    <br>
    <div class="icon">
      <i class="fa fa-facebook" id="icon"></i>
      <i class="fa fa-instagram" id="icon"></i>
      <i class="fa fa-google" id="icon"></i>
    </div>
  </div>

    </div>
<script>


// font aweosome icon link
//https://fontawesome.com/v4/icon/google


//Font Awesome add link
//<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
//type = "text/css" />
</script>  
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>  
</body>
</html>