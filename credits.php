<!--Basic credits page generated using functions.php functions-->
<?php
ini_set("session.save_path", "/home/unn_w20016567/sessionData");
session_start();
try {
    require_once('functions.php');
    echo makePageStart("NTL Credits","stylesheet.css");
        echo makeHeader("Credits");
        echo makeNavMenu("Pages", array("index.php" => "Home", "admin.php" => "Admin", "orderToysForm.php" => "Order", "credits.php" => "Credits"));
        echo startAside();
            echo createLoginLogout();
        echo endAside();
        echo startMain();
            echo "<h2>ME</h2>\n
            <p><strong>Name:</strong> Zackary Allen</p>\n
            <p><strong>Student ID:</strong> W20016567</p>\n
            <h2>References</h2>\n
            <p>No additional resources outside of lecture and workshop material were required when creating this web page.</p>";
        echo endMain();
        echo makeFooter("This is a fictional site for Northumbria Toys Limited.");
    echo makePageEnd();
} catch (Exception $e) {
    echo "<p>Whoops! Something went wrong, refresh the page.</p>";
    log_error($e);
}
?>