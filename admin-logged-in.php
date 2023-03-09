<?php
$page_roles=array('admin');
require_once  'check-session.php';

?>

<HTML>

	<head>
	<title>Admin-Logged-In-Page</title>
	</head>
		<h1>Welcome Admin</h1>
		<p>Admin Number: 1
		<p>Name: Bill Smith<br><br>
		<a href='logout.php'>Logout</a><br><br>
		<h2> Options</h2>
		<a href= 'http://localhost/Final%20Project%20Pages/admin-employee-changes.php'>View/add/update/delete Employees</a><br>
		<a href= 'http://localhost/Final%20Project%20Pages/viewcustomer-admin.php'>View/add/update/delete Customers</a><br>
		<a href= 'http://localhost/Final%20Project%20Pages/viewproducts-admin.php'>View/add/update/delete Products</a><br>
		<a href= 'http://localhost/Final%20Project%20Pages/viewrawmaterial-admin.php'>View/add/update/delete Raw Materials</a><br>
		<a href = 'http://localhost/Final%20Project%20Pages/viewReturns-admin.php'>View/add/update/delete Returns</a><br>
		<a href= 'http://localhost/Final%20Project%20Pages/admin-view-orders.php'>View/add/update/delete an Order</a><br>
		<a href= 'http://localhost/Final%20Project%20Pages/employee-products-changes.php'>Make a payment</a><br>
		<a href= 'http://localhost/Final%20Project%20Pages/submitReturns.php'>Submit a return</a><br>
		<a href = 'http://localhost/Final%20Project%20Pages/admin-sales-report.php'> Create a sales report</a><br>
		
	</p>
	<body>
	
	</body>





</HTML>