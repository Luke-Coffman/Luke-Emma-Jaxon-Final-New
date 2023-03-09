<?php

//import credentials for db
require_once  'login.php';

//connect to db
$conn = new mysqli($hn, $un, $pw, $db);
if($conn->connect_error) die($conn->connect_error);



if(isset($_POST['delete']))
{
	$ReturnID = $_POST['ReturnID'];

	$query = "DELETE FROM Returns WHERE ReturnID = '$ReturnID' ";	
	//Run the query
	$result = $conn->query($query); 
	if(!$result) die($conn->error);
	
	//Return to the viewAllReturns page
	header("Location: viewReturns.php");
	
}


?>