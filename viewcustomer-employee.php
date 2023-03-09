<?php
$page_roles=array('admin','employee');
require_once  'check-session.php';

?>
<html>

<head>

	<title>Customers</title>
	
</head>

<body>

<h1>List of Customers</h1>
<a href = 'http://localhost/Final%20Project%20Pages/employee_logged_in.php'>Back to Employee Homepage</a><br><br>
<a href='logout.php'>Logout</a><br><br>
<a href="addcustomer.php"><button>Add Customer</button></a>

<?php

require_once  'login.php';

$conn = new mysqli($hn, $un, $pw, $db);
if($conn->connect_error) die($conn->connect_error);

$query = "SELECT * FROM customer";

$result = $conn->query($query); 
if(!$result) die($conn->error);

$rows = $result->num_rows;

for($j=0; $j<$rows; $j++)
{
	$result->data_seek($j); 
	$row = $result->fetch_array(MYSQLI_ASSOC); 


echo <<<_END
	<pre>
	customerid: $row[customerid]
	firstname: $row[firstname]
	lastname: $row[lastname]
	streetaddress: $row[streetaddress]
	city: $row[city]
	state: $row[state]
	zipcode: $row[zipcode]
	userid: $row[userid]
	</pre>
	
	<form action='deletecustomer.php' method='post'>
		<input type='hidden' name='delete' value='yes'>
		<input type='hidden' name='customerid' value='$row[customerid]'>
		<input type='submit' value='DELETE CUSTOMER'>	
	</form>
	
	<form action = 'updatecustomer-employee.php' method='post'>
		<input type='hidden' name='update' value='yes'>
		<input type='hidden' name='customerid' value='$row[customerid]'>
		<input type='submit' value='UPDATE CUSTOMER'>
	</form>
	_END;
}

$conn->close();



?>