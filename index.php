<?php
ini_set("session.save_path", "/home/unn_w20016567/sessionData");
session_start();

require_once('functions.php');
echo makePageStart("Home","stylesheet.css");
echo makeHeader("Home");
echo makeNavMenu("Pages", array("index.php" => "Home", "admin.php" => "Admin", "orderToysForm.php" => "Order", "credits.php" => "Credits"));

echo startAside();

if (check_login()){
    echo makeLogout();
} else {
    echo createLoginForm();
}

echo '<div id="offers">Display Offers here</div>';
echo '<script type="text/javascript" src="offers.js"></script>';

echo endAside();
echo startMain();
if (check_login()) echo "<h2>Welcome " . get_session('firstname') . "!</h2>";
echo endMain();
echo makeFooter("This is a fictional site for Northumbria Toys Limited.");
echo makePageEnd();
?>

