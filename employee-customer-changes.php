<?
$page_roles=array('admin','employee');
require_once  'check-session.php';
?>
<HTML>

	<head>
	<title>Employee-Employee-Changes</title>
	</head>
		<h1>Customer List</h1>
		<p> CustomerID:
		<form method='post' action='employee-customer-changes.php'>
			<input type='text' name='Employee Number'><br>
		</form>
		<form action= 'employee-customer-changes.php'> <button type='submit'> Submit</button>	
		<h2> Or </h2>
		<form action= 'employee-customer-changes.php'> <button type='submit'>Add New Customer</button>
			
		</p>
	<body>
	
	</body>





</HTML>

<?php

require_once  'login.php';

$conn = new mysqli($hn, $un, $pw, $db);
if($conn->connect_error) die($conn->connect_error);

$query = "SELECT * FROM customers";

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
	Customer_ID: $row[CUST_ID]
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