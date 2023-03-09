<?php

$page_roles=array('admin','employee');
require_once  'check-session.php';
require_once  'login.php';

$conn = new mysqli($hn, $un, $pw, $db);
if($conn->connect_error) die($conn->connect_error);

if(isset($_POST['customerid'])){

$customerid = $_POST['customerid'];

$query = "SELECT * FROM customer where customerid=$customerid";

$result = $conn->query($query); 
if(!$result) die($conn->error);

$rows = $result->num_rows;

for($j=0; $j<$rows; $j++)
{
	//$result->data_seek($j); 
	$row = $result->fetch_array(MYSQLI_ASSOC); 
	
echo <<<_END
	<form action='updatecustomer-admin.php' method='post'>
	<pre>
	firstname: <input type='text' name='firstname' value='$row[firstname]'>
	lastname: <input type='text' name='lastname' value='$row[lastname]'>	
	streetaddress: <input type='text' name='streetaddress' value='$row[streetaddress]'>	
	city: <input type='text' name='city' value='$row[city]'>
	state: <input type='text' name='state' value='$row[state]'>
	zipcode: <input type='text' name='zipcode' value='$row[zipcode]'>
	userid: <input type='text' name='userid' value='$row[userid]'>
	</pre>
	
		<input type='hidden' name='update' value='yes'>
		<input type='hidden' name='customerid' value='$row[customerid]'>
		<input type='submit' value='UPDATE CUSTOMER'>	
	</form>
	
_END;

}

}

if(isset($_POST['update'])){
	$customerid = $_POST['customerid'];
	$firstname = $_POST['firstname'];
	$lastname = $_POST['lastname'];
	$streetaddress = $_POST['streetaddress'];
	$city = $_POST['city'];
	$state = $_POST['state'];
	$zipcode = $_POST['zipcode'];
	$userid = $_POST['userid'];
	
	
	$query = "UPDATE customer set firstname='$firstname', lastname='$lastname', streetaddress='$streetaddress', city='$city', state = '$state', zipcode= '$zipcode', userid = '$userid' WHERE customerid = $customerid ";
	
	$result = $conn->query($query); 
	if(!$result) die($conn->error);
	
	header("Location: viewcustomer-admin.php");
	
}

$conn->close();



?>