<?
$page_roles=array('admin','customer','employee');
require_once  'check-session.php';
?>

<HTML>

	<head>
	<title>Customer-Order-History</title>
	</head>
		<h1>Order History </h1>	
		</p>
		<a href = 'http://localhost/Final%20Project%20Pages/employee_logged_in.php'>Back to Employee Homepage</a><br><br>
		<a href='logout.php'>Logout</a><br><br>
		<a href="admin-add-order.php"><button>Add Order</button></a>
		
	<body>
	
	</body>





</HTML>

<?php
require_once  'login.php';

$conn = new mysqli($hn, $un, $pw, $db);
if($conn->connect_error) die($conn->connect_error);

$query = "SELECT * FROM orders";

$result = $conn->query($query); 
if(!$result) die($conn->error);

$rows = $result->num_rows;

for($j=0; $j<$rows; $j++)
{
	//$result->data_seek($j); 
	$row = $result->fetch_array(MYSQLI_ASSOC); 

echo <<<_END
	<pre>
	Order_ID: $row[Order_ID]
	EMP_ID: $row[EMP_ID]
	customerid: $row[customerid]
	Date: $row[DATE]
	Total_Price: $row[Total_Price]
	Description: $row[Description]
	</pre>
	
	<form action='deleteorder-admin.php' method='post'>
		<input type='hidden' name='delete' value='yes'>
		<input type='hidden' name='Order_ID' value='$row[Order_ID]'>
		<input type='submit' value='DELETE ORDER'>	
	</form>
	
_END;

}

$conn->close();



?>