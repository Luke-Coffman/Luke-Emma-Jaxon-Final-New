<?php

require_once  'login.php';
require_once 'cart.php';

session_start();

if(isset($_POST["checkout"])){
	$cartarray = $_SESSION["cart"];
	$quantity = $_POST['quantity'];
	
	$item = $cartarray[0];
	echo "Username: $item->userid"; echo "<br>";
	echo "Date: $item->cartdate";echo "<br><br>";
	
	$count=0;
	$grand=0;
	foreach($cartarray as $item){
			
		$productid = $item->productid;
		$productname = $item->productname;
		$units= $quantity[$count];
		$unitprice = $item->unitprice;
		$total = $units * $unitprice;
		$status = $item->status;
		$grand = $grand + $total;
		
		//set quantity
		$cartarray[$count]->units = $quantity[$count];
		$cartarray[$count]->total = $total;
		
		$count++;		
		
echo <<<_END
		
		$productname $units at $$unitprice each total $$total
		<br><br>

_END;
		
	}
	echo "GRAND TOTAL: $grand <br><br>";
	echo "<a href='payment.php?checkout=1'>PROCEED TO PAY</a>";
	
}



?>