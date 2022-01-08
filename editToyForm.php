<?php
ini_set("session.save_path", "/home/unn_w20016567/sessionData");
session_start();

require_once('functions.php');
echo makePageStart("Edit Toy","stylesheet.css");
echo makeHeader("Edit Toy");
echo makeNavMenu("Pages", array("index.php" => "Home", "admin.php" => "Admin", "orderToysForm.php" => "Order", "credits.php" => "Credits"));

echo startAside();
if (check_login()) { // Only allows access if login was successful
    echo makeLogout();
    echo endAside();

    echo startMain();
    $toyID = isset($_GET['toyID']) ? $_GET['toyID'] : null; // Checks toyID was provided through URL

    // Requires user to return to admin.php if no toyID provided
    if (empty($toyID)){
        echo "<p>No toy chosen. Please select a toy</p>\n
        <a href='admin.php'>Go Back</a>\n";
    }

    else {
        /**
         * @var $dbConn mysqli
         */
        try {
            $dbConn = getConnection();

            // SQL Query to retrieve relevant toy information
            $sql = "SELECT toyName, description, manID, catID, toyPrice
                FROM NTL_toys
                WHERE toyID = $toyID";

            $queryResult = $dbConn->query($sql);

            if ($queryResult === false) {
                echo "<p>Query failed: " . $dbConn->error . "</p>\n</select>\n<\form>\n<\body>\n<\html>";
                exit;
            } else { // If query successful, populate appropriate fields
                $rowObj = $queryResult->fetchObject();
                echo "<h2>Update '{$rowObj->toyName}'</h2>\n";

                echo "<form id='UpdateToy' action='updateToy.php' method='post'>\n
                <p>Toy ID <input type='text' name='toyID' value='{$toyID}' readonly></p>\n
                <p>Toy Name <input type='text' name='toyName' value='{$rowObj->toyName}'></p>\n
                ";

                // Populates Manufacturer field with manName using manID
                $sqlMan = "SELECT manID, manName FROM NTL_manufacturer ORDER BY manName";
                $rsMan = $dbConn->query($sqlMan);
                echo "<p>Manufacturer ";
                echo "<select name='manID'>";
                while ($manRecord = $rsMan->fetchObject()) {
                    if ($rowObj->manID == $manRecord->manID) {
                        echo "<option value='{$manRecord->manID}' selected>
                   {$manRecord->manName}</option>";
                    } else {
                        echo "<option value='{$manRecord->manID}'>{$manRecord->manName}</option>";
                    }
                }
                echo "</select></p>";

                //  Populates Category field with catDesc using catID
                $sqlCat = "SELECT catID, catDesc FROM NTL_category ORDER BY catDesc";
                $rsCat = $dbConn->query($sqlCat);
                echo "<p>Category ";
                echo "<select name='catID'>";
                while ($catRecord = $rsCat->fetchObject()) {
                    if ($rowObj->catID == $catRecord->catID) {
                        echo "<option value='{$catRecord->catID}' selected>
                    {$catRecord->catDesc}</option>";
                    } else {
                        echo "<option value='{$catRecord->catID}'>{$catRecord->catDesc}</option>";
                    }
                }
                echo "</select></p>";

                echo "<p>Description <textarea name='description'>{$rowObj->description}</textarea></p>\n
                
                 <p>Toy Price £<input type='number' name='toyPrice' step='0.01' value='{$rowObj->toyPrice}'></p>\n
                
                <input type='submit' value='Update Toy'>\n
                </form>\n";
            }
        } catch (Exception $e) {
            echo "<p>Whoops! Something went wrong, refresh the page.</p>";
            log_error($e);
        }
    }
} else { //User unable to access page if login failed and is prompted to do so
    echo createLoginForm();
    echo endAside();
    echo startMain();
    echo "<h2>Login Required</h2>";
    echo "<p>Must be logged in to access this page\n";
}
echo endMain();
echo makeFooter("This is a fictional site for Northumbria Toys Limited.");
echo makePageEnd();
?>
