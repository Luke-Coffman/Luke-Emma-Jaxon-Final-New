<?php
$page_roles=array('admin','employee');
require_once  'check-session.php';

//import credentials for db
require_once  'login.php';

//connect to db
$conn = new mysqli($hn, $un, $pw, $db);
if($conn->connect_error) die($conn->connect_error);



if(isset($_POST['delete']))
{
	$employeeid = $_POST['employeeid'];

	$query = "DELETE FROM employee WHERE employeeid='$employeeid' ";
	
	//Run the query
	$result = $conn->query($query); 
	if(!$result) die($conn->error);
	
	//Return to the viewAllClassics page
	header("Location: admin-employee-changes.php?");
	
}


?>