<?php
$page_roles=array('admin','employee');
require_once  'check-session.php';

?>

<html>

<head>

	<title>Returns</title>
	
</head>

<body>

<h1>Return List</h1>
<a href = 'http://localhost/Final%20Project%20Pages/employee_logged_in.php'>Back to Employee Homepage</a><br><br>
<a href='logout.php'>Logout</a><br><br>
<a href="addReturns.php"><button>Add Return</button></a>

<?php

require_once  'login.php';

$conn = new mysqli($hn, $un, $pw, $db);
if($conn->connect_error) die($conn->connect_error);

$query = "SELECT * FROM Returns";

$result = $conn->query($query); 
if(!$result) die($conn->error);

$rows = $result->num_rows;

for($j=0; $j<$rows; $j++)
{
	$result->data_seek($j); 
	$row = $result->fetch_array(MYSQLI_ASSOC); 


echo <<<_END
	<pre>
	ReturnID: $row[ReturnID]
	Date: $row[Date]
	OrderID: $row[OrderID]
	</pre>
	
	<form action='deleteReturns.php' method='post'>
		<input type='hidden' name='delete' value='yes'>
		<input type='hidden' name='ReturnID' value='$row[ReturnID]'>
		<input type='submit' value='DELETE RETURN'>	
	</form>
	_END;
}

$conn->close();



?>