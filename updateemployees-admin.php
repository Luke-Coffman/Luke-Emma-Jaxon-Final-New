<?php

$page_roles=array('admin','employee');
require_once  'check-session.php';
require_once  'login.php';

$conn = new mysqli($hn, $un, $pw, $db);
if($conn->connect_error) die($conn->connect_error);



if(isset($_POST['employeeid'])){

$employeeid = $_POST['employeeid'];

$query = "SELECT * FROM employee where employeeid = $employeeid";


$result = $conn->query($query); 
if(!$result) die($conn->error);

$rows = $result->num_rows;

for($j=0; $j<$rows; $j++)
{
	//$result->data_seek($j); 
	$row = $result->fetch_array(MYSQLI_ASSOC); 
	
echo <<<_END
	<form action='updateemployees-admin.php' method='post'>
	<pre>
	lastname: <input type='text' name='lastname' value='$row[lastname]'>	
	firstname: <input type='text' name='firstname' value='$row[firstname]'>	
	userid: <input type='text' name='userid' value='$row[userid]'>
	</pre>
	
		<input type='hidden' name='update' value='yes'>
		<input type='hidden' name='employeeid' value='$row[employeeid]'>
		<input type='submit' value='UPDATE EMPLOYEE'>	
	</form>
	
_END;

}

}

if(isset($_POST['update'])){
	$employeeid = $_POST['employeeid'];
	$firstname = $_POST['firstname'];
	$lastname = $_POST['lastname'];
	$userid = $_POST['userid'];
	
	
	$query = "UPDATE employee set firstname='$firstname', lastname='$lastname', userid = '$userid' WHERE employeeid = '$employeeid' ";
	
	$result = $conn->query($query); 
	if(!$result) die($conn->error);
	
	header("Location: admin-employee-changes.php");
	
}

$conn->close();



?>