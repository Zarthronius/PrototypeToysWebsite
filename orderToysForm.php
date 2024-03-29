<!--ONLY ADDED FUNCTIONALITY ARE STYLESHEET, HTML FOR GRIDDING, NAV, LOGIN/LOGOUT, AND JS SCRIPT-->
<?php
ini_set("session.save_path", "/home/unn_w20016567/sessionData");
session_start();
?>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Order Toys</title>
    <link href="stylesheet.css" rel="stylesheet" type="text/css">
</head>
<body>
<div id="gridContainer">
<header>
<h1>Order Toys</h1>
</header>
    <?php
require_once('functions.php');
echo makeNavMenu("Pages", array("index.php" => "Home", "admin.php" => "Admin", "orderToysForm.php" => "Order", "credits.php" => "Credits"));

echo startAside();
echo createLoginLogout();
echo endAside();
echo startMain();
?>
<form id="orderForm" action="javascript:alert('form submitted');" method="get">
	<section id="orderToys">
		<h2>Select Toys</h2>
<?php
try {
	// include the file with the function for the database connection
	require_once('functions.php');
	// get database connection
	$dbConn = getConnection();
	$sqlToys = 'SELECT toyID, toyName, catDesc, manName, toyPrice FROM NTL_toys t INNER JOIN NTL_category c ON t.catID = c.catID INNER JOIN NTL_manufacturer m ON t.manID = m.manID ORDER BY toyName';

	// execute the query
	$rsToys = $dbConn->query($sqlToys);

	while ($toy = $rsToys->fetchObject()) {
		$toyName = $toy->toyName;
		echo "\t<div class='item'>
				<span class='toyName'>".filter_var($toyName, FILTER_SANITIZE_SPECIAL_CHARS)."</span>
	            <span class='catDesc'>{$toy->catDesc}</span>
	         	<span class='manName'>{$toy->manName}</span>
	            <span class='toyPrice'>{$toy->toyPrice}</span>
	            <span class='chosen'><input type='checkbox' name='toy[]' value='{$toy->toyID}' data-price='{$toy->toyPrice}'></span>
	      		</div>\n";
	}
}
catch (Exception $e) {
	echo "Problem " . $e->getMessage();
}
?>
	</section>
	<section id="collection">
		<h2>Collection method</h2>
		<p>Please select whether you want your chosen toy(s) to be delivered to your home address (a charge applies for this) or whether you want to collect them yourself.</p>
		<p>
		Home address - &pound;8.99 <input type="radio" name="deliveryType" value="home" data-price="8.99" checked>&nbsp; | &nbsp;
		Collect from shop - no charge <input type="radio" name="deliveryType" value="shop" data-price="0">
		</p>
	</section>
	<section id="checkCost">
		<h2>Total cost</h2>
		Total <input type="text" name="total" size="10" readonly>
	</section>
	<section id="placeOrder">
		<h2>Place Order</h2>
		<h3>Your details</h3>
		<div id="retCustDetails" class="custDetails">
			Forename <input type="text" name="forename">
			Surname <input type="text" name="surname">
		</div>
		<p style="color: #FF0000; font-weight: bold;" id='termsText'>I have read and agree to the terms and conditions
		<input type="checkbox" name="termsChkbx"></p>
		<p><input type="submit" name="submit" value="Book now!" disabled></p>
	</section>
</form>	
<!-- Here you need to add Javascript or a link to a script (.js file) to process the form as required for task 4 of the assignment -->
<script type="text/javascript" src="orderToysJS.js"></script>
</main>
</div>
</body>
</html>