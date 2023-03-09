<html>

	<a href='shoppingcart.php'>Go to shopping cart</a>

</html>
<?php

require_once  'login.php';
require_once 'cart.php';

$conn = new mysqli($hn, $un, $pw, $db);
if($conn->connect_error) die($conn->connect_error);

$query = "SELECT * FROM products";

$result = $conn->query($query); 
if(!$result) die($conn->error);

$rows = $result->num_rows;

for($j=0; $j<$rows; $j++)
{
	//$result->data_seek($j); 
	$row = $result->fetch_array(MYSQLI_ASSOC); 

echo <<<_END
	<pre>
	Product Name: $row[ProductName]
	Ski Type: $row[Ski_Type]
	Price: $row[Price]	
	</pre>
	
	<form action='product.php' method='post'>
		<input type='hidden' name='price' value='$row[Price]'>
		<input type='hidden' name='productid' value='$row[PROD_ID]'>
		<input type='hidden' name='productname' value='$row[ProductName]'>
		<input type='submit' value='Add to cart'>	
	</form>
	
_END;

}

//add to cart
if(isset($_POST["productid"])){
	
	session_start();
	
	$cart = array();	
	if(isset($_SESSION["cart"])){
		$cart = $_SESSION["cart"];
	}
	
//$user = $_SESSION["user"];
            //$username = $user->username;
            $username = "bsmith";
			$date = date("Y/m/d");
            $productid = $_POST["productid"];
			$productname = $_POST["productname"];
            $units=1;
            $unitprice = $_POST['price'];
            $total = $units * $unitprice;
            $status = "active";

	
	$cartitem = new CartItem($username, $date, $productname, $productid, $units, $unitprice, $total, $status);
	
	array_push($cart, $cartitem);
	$_SESSION["cart"] = $cart;

	print_r($cart);

}


$conn->close();



?>