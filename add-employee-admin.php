<?php
$page_roles=array('admin','employee');
require_once  'check-session.php';
?>

<html>
	<head>
	 <h1> Add an Employee</h1>
	</head>
	
	<body>
	<a href = 'http://localhost/Final%20Project%20Pages/admin-employee-changes.php'>Back to employee list</a><br><br>
	<a href='logout.php'>Logout</a><br><br>
		<form method='post' action='add-employee.php'>
			<pre>
				EmployeeID: <input type='text' name='employeeid'>
				Lastname: <input type='text' name='lastname'>
				Firstname: <input type='text' name='firstname'>
				UserID: <input type='text' name='userid'>
				<input type='submit' value='Add Employee'>
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

//check if username exists
if(isset($_POST['employeeid'])) 
{
	//Get data from POST object
	$employeeid = $_POST['employeeid'];
	$lastname = $_POST['lastname'];
	$firstname = $_POST['firstname'];
	$userid = $_POST['userid'];
	
	//echo $user-ID'<br>';
	
	$query = "INSERT INTO employee (employeeid, lastname, firstname, userid) VALUES ('$employeeid', '$lastname','$firstname', '$userid')";
	
	//echo $query.'<br>';
	$result = $conn->query($query); 
	if(!$result) die($conn->error);
	
	header("Location:admin-employee-changes.php");//this will return you to the view all page
	
	
	
	
}



?>