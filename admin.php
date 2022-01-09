<?php
ini_set("session.save_path", "/home/unn_w20016567/sessionData");
session_start();

try {
    require_once('functions.php');
    echo makePageStart("NTL Admin","stylesheet.css");
    echo makeHeader("Admin");
    echo makeNavMenu("Pages", array("index.php" => "Home", "admin.php" => "Admin", "orderToysForm.php" => "Order", "credits.php" => "Credits"));
    echo startAside();
    if (check_login()) {
        echo makeLogout();
        echo endAside();
        echo startMain();
        echo "<h2>Toy List</h2>";
        echo "<p>Select a Toy to edit:</p>";
        $dbConn = getConnection();
        // Query to retrieve relevant data from NTL_toys table, ordered by toyName
        $sqlQuery = "SELECT toyID, toyName, description, catDesc, toyPrice
                FROM NTL_toys
                INNER JOIN NTL_category
                ON NTL_toys.catID = NTL_category.catID
                ORDER BY toyName";

        $queryResult = $dbConn->query($sqlQuery);

        // For each toy, displays information appropriately with toyName linking to appropriate editToyForm.php info
        while ($rowObj = $queryResult->fetchObject()) {
            echo "<div class='toy'>\n
            <h3 class='name'>\n
            <a href='editToyForm.php?toyID={$rowObj->toyID}'>{$rowObj->toyName}</a>\n
            </h3>\n
            <p class='description'><strong>Description:</strong> {$rowObj->description}</p>\n
            <p class='categoryDescription'><strong>Category Description:</strong> {$rowObj->catDesc}</p>\n
            <p class='price'><strong>Price:</strong> £{$rowObj->toyPrice}</p>\n
        </div>\n";
        }

    }
    else {
        echo createLoginForm();
        echo endAside();
        echo startMain();
        echo "<h2>Login Required</h2>";
        echo "<p>Must be logged in to access this page\n";
    }
    echo endMain();
    echo makeFooter("This is a fictional site for Northumbria Toys Limited.");
    echo makePageEnd();
} catch (Exception $e) {
    echo "<p>Whoops! Something went wrong, refresh the page.</p>";
    log_error($e);
}
?>