<html>

<?php

require_once  'login.php';
require_once 'cart.php';

session_start();

if(isset($_GET["checkout"])){
	$cartarray = $_SESSION["cart"];
	
	$item = $cartarray[0];
	echo "Username: $item->userid"; echo "<br>";
	echo "Date: $item->cartdate";echo "<br><br>";
	
	$count=0;
	$grand=0;
	foreach($cartarray as $item){
		
		$productid = $item->productid;
		$productname = $item->productname;
		$units= $item->units;
		$unitprice = $item->unitprice;
		$total = $item->total;
		$status = $item->status;
		$grand = $grand + $total;
		$count++;
		
echo <<<_END
		
		$productname $units at $$unitprice each total $$total
		<br><br>

_END;
		
	}
	echo "GRAND TOTAL: $grand <br><br>";
	
echo <<<_END

	<form method='post' action='payment.php' >
		<pre>
		Credit Card Number: <input type='text' name='creditcardno'>
		Expiry: <input type='text' name='expiry'>
		Owner: <input type='text' name='owner'>
		CVV: <input type='text' name='cvv'>
		<img src='ccimage.png'>
		<input type='submit' value='PAY' >
		<input type='hidden' name='pay' value='1' >
		<input type='hidden' name='grand' value='$grand' >
		</pre>
	</form>

_END;
	
}

/*
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
*/

if(isset($_POST['pay'])){
	
	$conn = new mysqli($hn, $un, $pw, $db);
	if($conn->connect_error) die($conn->connect_error);
	
	$cardno = $_POST['creditcardno'];
	$expiry = $_POST['expiry'];
	$owner = $_POST['owner'];
	$cvv = $_POST['cvv'];
	$grand = $_POST['grand'];
	
	$cartarray = $_SESSION['cart'];
	$firstcart = $cartarray[0];
	$userid = $firstcart->userid;
	$date = $firstcart->cartdate;
	$empid= 1001;
	$storeid = 332;
	
	//create Order
	$query1 = "insert into ordertable (empid,custid,storeid,date) values ($empid, '$userid', $storeid, '$date')";
	//echo $query1; 
	$result = $conn->query($query1); 
	if(!$result) die($conn->error);
	
	$orderid = $conn->insert_id;
	
	//process each orderline item in the cart
	foreach ($cartarray as $item){		
		$productid = $item->productid;
		$productname = $item->productname; 
		$units = $item->units; 
		$unitprice = $item->unitprice;
		$total = $item->total;
		$status = $item->status;
		
		//insert into orderline items
		$query2 = "insert into orderline (orderid, productid, quantity, unitprice, price) values ($orderid, $productid, $units, $unitprice, $total)";
		$result = $conn->query($query2); 
		if(!$result) die($conn->error);
		
	}
	
	//create payment
	$query3 = "insert into payment (cardno, expiry, userid, cvv, grandtotal, orderid, date) values ('$cardno','$expiry','$userid','$cvv','$grand', $orderid, '$date')";
	$result = $conn->query($query3); 
	if(!$result) die($conn->error);	
	
	//empty the cart
	$_SESSION["cart"] = null;		
		
	echo "Your order is successfully submitted. Your purchase will ship soon. <br>";
	echo "<a href='product.php'>Shop again</a><br>";
	
}

?>



</html>