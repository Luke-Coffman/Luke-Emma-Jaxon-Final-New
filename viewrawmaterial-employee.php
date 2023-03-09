<?
$page_roles=array('admin','employee');
require_once  'check-session.php';
?>

<html>

<head>

	<title>Raw Material</title>
	
</head>

<body>

<h1>Raw Material</h1>
<a href = 'http://localhost/Final%20Project%20Pages/employee_logged_in.php'>Back to Employee Homepage</a><br><br>
<a href='logout.php'>Logout</a><br><br>

<?php

require_once  'login.php';

$conn = new mysqli($hn, $un, $pw, $db);
if($conn->connect_error) die($conn->connect_error);

$query = "SELECT * FROM Raw_Material";

$result = $conn->query($query); 
if(!$result) die($conn->error);

$rows = $result->num_rows;

for($j=0; $j<$rows; $j++)
{
	$result->data_seek($j); 
	$row = $result->fetch_array(MYSQLI_ASSOC); 


echo <<<_END
	<pre>
	MaterialID: $row[MaterialID]
	DatePurchased: $row[DatePurchased]
	Quantity: $row[Quantity]
	MaterialName: $row[MaterialName]
	</pre>
	_END;
}

$conn->close();



?>