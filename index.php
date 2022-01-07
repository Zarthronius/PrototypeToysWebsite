<!--
Task  5 – Home page
1.	Create a basic home page that 
a)	provides links to the other pages in the site
b)	contains an aside element with the id ‘offers’

2.	AJAX in the home page
a)	Use appropriate AJAX code to request the getOffers.php script when the home page of the site is loaded. Using the JSON data in the response to the AJAX request, display the toy name, category description and price in an aside tag with the id ‘offers’ inside the home page (it MUST be in the home page otherwise ZERO marks will be awarded for it). Do not display the description of the toy or any ids.

b)	Every 5 seconds a new special offer should be requested and then displayed inside the ‘offers’ aside in the home page
Notes
•	The AJAX / JavaScript code that you include MUST be written by hand
•	The use of external libraries is NOT permitted
•	The code used MUST follow the techniques covered in this module and not any other alternative ones.
-->
<?php
ini_set("session.save_path", "/home/unn_w20016567/sessionData");
session_start();

require_once('functions.php');
echo makePageStart("Home","stylesheet.css");
echo makeHeader("Home");
echo makeNavMenu("Pages", array("index.php" => "Home", "admin.php" => "Admin", "orderToysForm.php" => "Order", "credits.php" => "Credits"));

if (check_login()){
    echo makeLogout();
    echo startMain();
    echo "<p>Welcome " . get_session('firstname') . "!</p>";
} else {
    echo createLoginForm();
    echo startMain();
}

echo endMain();
echo makeFooter("This is a fictional site for Northumbria Toys Limited.");
echo makePageEnd();
?>

