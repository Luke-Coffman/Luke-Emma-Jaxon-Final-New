<?
$page_roles=array('admin','customer');
require_once  'check-session.php';
?>

<HTML>

	<head>
	<title>Customer-Order-History</title>
	</head>
		<h1>Order History </h1>	
		</p>
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
	
_END;

}

$conn->close();



?>