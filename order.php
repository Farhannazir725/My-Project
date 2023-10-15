<?php
session_start();
include 'admin/connection.php';
if(!isset ($_SESSION['username'])){
?>
<script>window.location.href = 'login.php';</script>
<?php
}
else{
echo $_SESSION['username'];
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order</title>
</head>
<body>
<table border="2px" align="center" cellspacing="5px" cellpadding="5px">
   <thead>
    <tr>
        <th>Product image</th>
        <th>Product Name</th>
        <th>Product Price</th>
        <th>Product Quantity</th>
        <th>Net Amount</th>
    </tr>
   </thead> 
<?php

$sql = mysqli_query($conn,"SELECT * FROM orderproduct WHERE userid= {$_SESSION['sno']} AND `status`= 'Not Order'");
while($row = mysqli_fetch_array($sql)){
   
    ?>

<tr><?php $sql2 =mysqli_query($conn,"SELECT * FROM productlist WHERE productid ={$row['pid']} ");
$row2 = mysqli_fetch_array($sql2)
?>

<td><img src="admin/<?php echo $row2['pimage'];?>" height="auto" width="100px"></td> 
<td><?php echo $row2['productname'];?></td>   
<td><?php echo $row['price'];?></td>   
<td><?php echo $row['qty'];?></td>   
<td><?php echo $row['totalamount'];?></td>   </tr>
<?php

}

?>
<tfoot>
    <tr><td colspan="4" align="right">Total Amount</td>
<td><?php $sql3 = mysqli_query($conn,"SELECT SUM(totalamount) FROM orderproduct WHERE userid= {$_SESSION['sno']} AND `status`= 'Not Order' ");
$row3 = mysqli_fetch_array($sql3);
echo $row3['SUM(totalamount)'];

?>


</td></tr>
</tfoot>
    </table>
    <h3 align="center">Customer & Shipping Detail</h3>
    <form action="checkout.php" method="POST">
    <table align=center>
<tr><td>Customer Name</td><td><input type="text" name="txtname" maxlength="50"></td></tr>
<tr><td>Address</td><td><textarea name="txtaddress"  cols="60" rows="5" maxlength="100"></textarea></td></tr>
<tr><td>City</td><td><input type="text" name="txtcity" maxlength="50"></td></tr>
<tr><td>State</td><td><input type="text" name="txtstate" maxlength="50"></td></tr>
<tr><td>Country</td><td><input type="text" name="txtcountry" maxlength="50"></td></tr>
<tr><td>Zip Code</td><td><input type="text" name="txtzip" maxlength="6"></td></tr>
<tr><td>Contact No.</td><td><input type="text" name="txtcontact" maxlength="25"></td></tr>
<tr><td>Email Address</td><td><input type="text" name="txtemail" maxlength="50"></td></tr>

<tr><td>Payment Method</td>
<td><select name="paymethod" >
        <option value="CC">Credit Card</option>
        <option value="Paypal">Paypal</option>
        <option value="POD">Pay on Delivery</option>
        <option value="BankTr">Bank Transfer</option>
        <option value="Cheque">Check/DD</option>
    </select>
    <input type="hidden" name="tamount" value=<?php echo $row3['SUM(totalamount)']; ?>>
</td>
</tr>
<tr><td colspan="2"><button type="submit">Submit</button></td></tr>

</form>
</table>
</body>
</html>