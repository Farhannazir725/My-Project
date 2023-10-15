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
$set = $_SESSION['username'];

?>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<body>
<table width=80%   >
    

    <tr valign ="top"><td width=20%>
       
    <td width=% align="center">

    <h1>Change Password</h1>
    <form action="changepassword1.php" method="POST">
        <table cellspacing="2" cellpadding="5">
        <?php 
        $sql = mysqli_query($conn,"SELECT `password` FROM `admin_login` WHERE `username` = '$set'"); 
        $row = mysqli_fetch_array($sql);
   ?>
            <input type="hidden" name="oldvp" value="<?php echo $row['password']; ?>">
            <tr><td >Old Password</td><td><input type="password" name="oldpassword" maxlength="20" ></td></tr>
            <tr><td>New Password</td><td><input type="password" name="newpassword" maxlength="20"></td></tr>
            <tr><td>Confirm Password</td><td><input type="password" name="cnewpassword" maxlength="20"></td></tr>
            <tr><td colspan="2" align="center"><input type="submit" class="btn btn-outline-secondary" value="Submit">
                      <input type="reset" class="btn btn-outline-secondary" value="Reset" ></td></tr>
            

        </table>
    </form>

    <center><font color="red">
        <?php
        if(isset($_GET["msg"]))
        echo $_GET["msg"];
        ?>
    </font></center></td></tr></table>
    <?php
    $conn->close();
    ?>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <script>

    </script>
    </body></html>