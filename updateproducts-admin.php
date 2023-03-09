<?php

$page_roles=array('admin','employee');
require_once  'check-session.php';
require_once  'login.php';

$conn = new mysqli($hn, $un, $pw, $db);
if($conn->connect_error) die($conn->connect_error);

if(isset($_POST['ProductID'])){

$ProductID = $_POST['ProductID'];

$query = "SELECT * FROM products where ProductID=$ProductID";

$result = $conn->query($query); 
if(!$result) die($conn->error);

$rows = $result->num_rows;

for($j=0; $j<$rows; $j++)
{
	//$result->data_seek($j); 
	$row = $result->fetch_array(MYSQLI_ASSOC); 
	
echo <<<_END
	<form action='updateproducts-admin.php' method='post'>
	<pre>
	ProductName: <input type='text' name='ProductName' value='$row[ProductName]'>	
	Price: <input type='text' name='Price' value='$row[Price]'>	
	Inventory: <input type='text' name='Inventory' value='$row[Inventory]'>
	SkiType: <input type='text' name='SkiType' value='$row[SkiType]'>
	</pre>
	
		<input type='hidden' name='update' value='yes'>
		<input type='hidden' name='ProductID' value='$row[ProductID]'>
		<input type='submit' value='UPDATE PRODUCT'>	
	</form>
	
_END;

}

}

if(isset($_POST['update'])){
	$ProductID = $_POST['ProductID'];
	$ProductName = $_POST['ProductName'];
	$Price = $_POST['Price'];
	$Inventory = $_POST['Inventory'];
	$SkiType = $_POST['SkiType'];
	
	
	$query = "UPDATE products set ProductName='$ProductName', Price='$Price', Inventory = '$Inventory', SkiType = '$SkiType' WHERE ProductID = '$ProductID' ";
	
	$result = $conn->query($query); 
	if(!$result) die($conn->error);
	
	header("Location: viewproducts-admin.php");
	
}

$conn->close();



?>