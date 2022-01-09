<?php
ini_set("session.save_path", "/home/unn_w20016567/sessionData");
session_start();

try {
    require_once('functions.php');
    echo makePageStart("NTL Home", "stylesheet.css");
        echo makeHeader("Home");
        echo makeNavMenu("Pages", array("index.php" => "Home", "admin.php" => "Admin", "orderToysForm.php" => "Order", "credits.php" => "Credits"));
        echo startAside();
            echo createLoginLogout();
            echo '<div id="offers">Display Offers here</div>'; // "offers" id on div instead of aside to prevent login/logout being overwritten
            echo '<script type="text/javascript" src="offers.js"></script>';
        echo endAside();
        echo startMain();
            if (check_login()) echo "<h2>Welcome " . get_session('firstname') . "!</h2>\n";
        echo endMain();
        echo makeFooter("This is a fictional site for Northumbria Toys Limited.");
    echo makePageEnd();
} catch (Exception $e) {
    echo "<p>Whoops! Something went wrong, refresh the page.</p>";
    log_error($e);
}
?>