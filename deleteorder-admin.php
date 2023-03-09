<?php

//import credentials for db
$page_roles=array('admin','employee');
require_once  'check-session.php';
require_once  'login.php';


//connect to db
$conn = new mysqli($hn, $un, $pw, $db);
if($conn->connect_error) die($conn->connect_error);



if(isset($_POST['delete']))
{
	$Order_ID = $_POST['Order_ID'];

	$query = "DELETE FROM orders WHERE Order_ID='$Order_ID' ";
	
	//Run the query
	$result = $conn->query($query); 
	if(!$result) die($conn->error);
	
	//Return to the viewAllClassics page
	header("Location: admin-view-orders.php?");
	
}


?>