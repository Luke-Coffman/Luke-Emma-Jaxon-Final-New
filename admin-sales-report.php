<?
$page_roles=array('admin');
require_once  'check-session.php';
?>

<html>
	<head>
	<title>Customer Orders</title>
	</head>
		<h1>Sales Report Depending on Customers</h1>
		
		<a href = 'http://localhost/Final%20Project%20Pages/admin-logged-in.php'>Back to Admin Homepage</a><br><br>
		<a href='logout.php'>Logout</a><br><br>
	<body>
	
	</body>
</html>

<?php

require_once  'login.php';

$conn = new mysqli($hn, $un, $pw, $db);
if($conn->connect_error) die($conn->connect_error);

$query = "SELECT customer.customerid,customer.firstname, customer.lastname, orders.Order_ID, orders.DATE, orders.Description
FROM customer
INNER JOIN orders
ON customer.customerid = orders.customerid;
";

$result = $conn->query($query); 
if(!$result) die($conn->error);

$rows = $result->num_rows;

for($j=0; $j<$rows; $j++)
{
	//$result->data_seek($j); 
	$row = $result->fetch_array(MYSQLI_ASSOC); 

echo <<<_END
	<pre>
	customerid: $row[customerid]
	First Name: $row[firstname]
	Last Name: $row[lastname]
	Order_ID: $row[Order_ID]
	Date: $row[DATE]
	Description: $row[Description]
	</pre>
	
	
_END;

}

$conn->close();



?>