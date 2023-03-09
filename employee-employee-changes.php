<?php
$page_roles=array('admin','employee');
require_once  'check-session.php';
?>
<HTML>

	<head>
	<title>Employee-Employee-Changes</title>
	</head>
		<h1>Enter The EmployeeID You Want To Edit</h1>
		<a href = 'http://localhost/Final%20Project%20Pages/employee_logged_in.php'>Back to Employee Homepage</a><br><br>
		<a href='logout.php'>Logout</a><br><br>
		<form action= 'http://localhost/Final%20Project%20Pages/add-employee.php'> <button type='submit'>Add New Employee</button>	
		</p>
	<body>
	
	</body>





</HTML>
<?php

require_once  'login.php';


$conn = new mysqli($hn, $un, $pw, $db);
if($conn->connect_error) die($conn->connect_error);

$query = "SELECT * FROM employee";

$result = $conn->query($query); 
if(!$result) die($conn->error);

$rows = $result->num_rows;

for($j=0; $j<$rows; $j++)
{
	//$result->data_seek($j); 
	$row = $result->fetch_array(MYSQLI_ASSOC); 

echo <<<_END
	<pre>
	employeeid: $row[employeeid]
	lastname: $row[lastname]
	firstname: $row[firstname]
	userid: $row[userid]
	</pre>
	
	<form action='delete-employee.php' method='post'>
		<input type='hidden' name='delete' value='yes'>
		<input type='hidden' name='employeeid' value='$row[employeeid]'>
		<input type='submit' value='DELETE Employee'>	
	</form>
	
_END;

}

$conn->close();

?>