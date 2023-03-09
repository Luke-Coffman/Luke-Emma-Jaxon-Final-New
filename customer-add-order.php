<?php

//$page_roles=array('admin','customer');
//require_once  'check-session.php';
?>

<html>
	<head></head>
	
	<body>
		<form method='post' action='customer-add-order.php'>
			EmployeeID: <input type='text' name='empid'><br>
			CustomerID: <input type='text' name='custid'><br>
			Date: <input type='text' name='date'><br>
			TotalPrice: <input type='text' name='totalprice'><br>
			PaymentID: <input type='text' name='paymentid'><br>
			Description: <input type='text' name='description'><br>
			<input type='submit' value='Add'>
		</form>
		<br>
		<a href= 'http://localhost/Final%20Project%20Pages/customer-view-order.php'>Back to Your Orders</a><br>
	</body>

</html>



<?php

require_once 'login.php';

$conn = new mysqli($hn, $un, $pw, $db);
if($conn->connect_error) die($conn->connect_error);

if(isset($_POST['empid'])){
	$empid = sanitizeMySQL($conn,$_POST['empid']);
	$customerid = sanitizeMySQL($conn,$_POST['customerid']);
	$date = sanitizeMySQL($conn,$_POST['date']);
	$totalprice = sanitizeMySQL($conn,$_POST['totalprice']);
	$paymentid = sanitizeMySQL($conn,$_POST['paymentid']);
	$description = sanitizeMySQL($conn,$_POST['description']);
	
	//code to add user here
	$query = "insert into orders(EMP_ID,customerid, DATE, Total_Price,PMT_ID,Description) values ('$empid', '$customerid', '$date', '$totalprice','$paymentid','$description')";
	$result = $conn->query($query);
	if(!$result) die($conn->error);
}

$conn->close();

function sanitizeString($var){
	$var = stripslashes($var);
	$var = strip_tags($var);
	$var = htmlentities($var);
	return $var;
}

function sanitizeMySQL($conn, $var){
	$var = sanitizeString($var);
	$var = $conn->real_escape_string($var);
	return $var;
}

?>


