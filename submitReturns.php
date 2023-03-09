<html>
	<head>
	
	</head>
	
	<body>
	<h1> Submit Returns </h1>
	<a href='logout.php'>Logout</a><br><br>
		<form method='post' action='submitReturns.php'>
		<a href = 'http://localhost/Final%20Project%20Pages/admin-logged-in.php'>Back to Admin Page</a><br><br>
			<pre>
				ReturnID: <input type='text' name='ReturnID'>
				Date: <input type='text' name='Date'>
				OrderID: <input type='text' name='OrderID'>
				<input type='submit' value='Add Return'>
			</pre>
		</form>
	</body>
</html>


<?php
//import credentials for db
require_once  'login.php';

//connect to db
$conn = new mysqli($hn, $un, $pw, $db);
if($conn->connect_error) die($conn->connect_error);

//check if returnid exists
if(isset($_POST['ReturnID'])) 
{
	//Get data from POST object
	$ReturnID = $_POST['ReturnID'];
	$Date = $_POST['Date'];
	$OrderID = $_POST['OrderID'];
		
	//echo $isbn.'<br>';
	
	$query = "INSERT INTO Returns (ReturnID, Date, OrderID) VALUES ('$ReturnID', '$Date','$OrderID')";
	
	//echo $query.'<br>';
	$result = $conn->query($query); 
	if(!$result) die($conn->error);
	
header("Location: viewReturns.php");//this will return you to the view all page
	
	
	
	
}



?>