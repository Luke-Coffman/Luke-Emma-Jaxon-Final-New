<?php

require_once  'login.php';
require_once 'cart.php';

session_start();

if(isset($_SESSION["cart"])){
	$cart = $_SESSION["cart"];
	print_r($cart);
	//echo '<br>';
	
	echo 'Username: '. $cart[0]->userid; echo '<br>';
	echo 'Date: '. $cart[0]->cartdate; echo '<br><br>';
	echo "<form method='post' action='checkout.php'>";
	
	foreach($cart as $item){
		$username = $item->userid;
		$date = $item->cartdate;
		$productid = $item->productid;
		$productname = $item->productname;
		$units= $item->units;
		$unitprice = $item->unitprice;
		$total = $item->total;
		$status = $item->status;
		
echo <<<_END
		
		$productname $unitprice each
		<br>Quantity <input type='text' name='quantity[]' size='2' value='1'>
		<br><br>

_END;
		
	}	
	
	echo "<input type='hidden' name='checkout'>";
	echo "<input type='submit' value='Proceed to Checkout'></form>";
}else{
	echo "Shopping cart is empty";
}



if(isset($_GET["checkout"])){
	if(isset($_SESSION["cart"])){
		$cart = $_SESSION["cart"];
		$user = $_SESSION["user"];
		
		$empid=1234;
		//$custid=$user->username;
		$custid=999;
		$storeid = 1;
		$date=date("Y/m/d");
		
		$conn = new mysqli($hn, $un, $pw, $db);
		if($conn->connect_error) die($conn->connect_error);
		
		//create Order
		$query1 = "insert into ordertable (empid,custid,storeid,date)  
			values ($empid, '$custid', $storeid, '$date')";
		
		$result = $conn->query($query1); 
		if(!$result) die($conn->error);		
		$orderid = $conn->insert_id;
		
		$final_total = 0;
		
		foreach($cart as $item){
			$username = $item->userid;
			$date = $item->cartdate;
			$productid = $item->productid;
			$units= $item->units;
			$unitprice = $item->unitprice;
			$total = $item->total;
			$status = $item->status;
			$final_total+=$total;
			
			//create each OrderItem
			$query2 = "insert into ORDERLINE (ORDER_ID,PROD_ID,Quantity,Price) 
				values ($orderid, $productid, $units, $unitprice)";
			$result = $conn->query($query2); 
			if(!$result) die($conn->error);	
		}
		
		//empty the cart
		$_SESSION["cart"] = null;		
		
		echo "Your order is successfully submitted. Your purchase will ship soon. <br>";
		echo "<a href='shortspage.php'>Shop again</a><br>";
	}
}

?>