<?php
session_start();
$conn = new mysqli("localhost", "root", "", "carproject");

$catname = $_POST['cat_data'];
// echo $country_id;

$subcat = "SELECT * FROM subcat WHERE catid = $catname";

$sql = mysqli_query($conn, $subcat);
// $output = "";
$output = '<option value="">Select Sub Catagory</option>';

while($row = mysqli_fetch_array($sql)){
    $output .= '<option value="' .$row['sno'].'">' .$row['subcatname']. '</option>';
}
echo $output;
?>