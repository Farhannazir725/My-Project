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
    <?php require('link.php');?>
    
    
    <title>AR Car Rental Agency Contact</title>
    <style>
        *{
            margin:0px;
            padding:0px;
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
       
            
    </style>
</head>
<body class="bg-light">
<?php require('header.php');?>
<?php if(isset($_SESSION['email'])){
    echo $_SESSION['username'];
} ?>
 <?php
    $sql = mysqli_query($conn,"SELECT * FROM categorydetails WHERE 	activestatus= 0");
    while($row = mysqli_fetch_array($sql)){
        ?>
<div class="container">
    
        <table >
        <tr><td><a href="carlog.php?catid=<?php echo $row['sno'];?> "><?php echo $row['catname'];?> </a></td></tr>

        <tr><?php
         $sql2= mysqli_query($conn,"SELECT * FROM subcat WHERE catid = '{$row['sno']}'	AND activestatus= 0");
    while($row2 = mysqli_fetch_array($sql2)){ ?>
        
        <td ><a href="carlog.php?subcatid=<?php echo $row2['sno'];?> "><?php echo $row2['subcatname']; ?> </a></td>
        <?php  } ?></tr>
    </table>

</div>
<?php } ?>














<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>