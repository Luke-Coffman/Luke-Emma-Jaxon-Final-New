<?
$page_roles=array('admin','customer');
require_once  'check-session.php';
?>

<html>
	<head>
	<title>Customer Orders</title>
	</head>
		<h1>My Orders</h1>
		
		<a href = 'http://localhost/Final%20Project%20Pages/Customer-Login-Page.php'>Back to Customer Homepage</a><br><br>
		<a href='logout.php'>Logout</a><br><br>
		<form action= 'http://localhost/Final%20Project%20Pages/customer-add-order.php'> <button type = 'submit'> Add an order </button><br><br>
	<body>
	
	</body>
</html>

<?php

require_once  'login.php';

$conn = new mysqli($hn, $un, $pw, $db);
if($conn->connect_error) die($conn->connect_error);

$query = "SELECT * FROM orders WHERE customerid = 2";

$result = $conn->query($query); 
if(!$result) die($conn->error);

$rows = $result->num_rows;

for($j=0; $j<$rows; $j++)
{
	//$result->data_seek($j); 
	$row = $result->fetch_array(MYSQLI_ASSOC); 

echo <<<_END
	<pre>
	Order_id: $row[Order_ID]
	Emp_ID: $row[EMP_ID]
	customerid: $row[customerid]
	Date: $row[DATE]
	Total Price: $row[Total_Price]
	Payment ID: $row[PMT_ID]
	Description: $row[Description]
	</pre>
	
	<form action='deleteorder.php' method='post'>
		<input type='hidden' name='delete' value='yes'>
		<input type='hidden' name='Order_ID' value='$row[Order_ID]'>
		<input type='submit' value='DELETE ORDER'>	
	</form>
	
_END;

}

$conn->close();



?>