<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Edit Toy</title>
</head>
<body>
<?php
$toyID = isset($_GET['toyID']) ? $_GET['toyID'] : null;

if (empty($toyID)){
    echo "<p>No toy chosen. Please select a toy</p>\n
    <a href='admin.php'>Go Back</a>\n";
}

else {
    /**
     * @var $dbConn mysqli
     */
    try {

        require_once("functions.php");
        $dbConn = getConnection();

        $sql = "SELECT toyName, description, manID, catID, toyPrice
            FROM NTL_toys
            WHERE toyID = $toyID";

        $queryResult = $dbConn->query($sql);
        
        if ($queryResult === false) {
            echo "<p>Query failed: " . $dbConn->error . "</p>\n</select>\n<\form>\n<\body>\n<\html>";
            exit;
        } else {
            $rowObj = $queryResult->fetchObject();
            echo "<h1>Update '{$rowObj->toyName}'</h1>\n
            <form id='UpdateToy' action='updateToy.php' method='get'>\n
            <p>Toy ID <input type='text' name='toyID' value='{$toyID}' readonly></p>\n
            <p>Toy Name <input type='text' name='toyName' value='{$rowObj->toyName}'></p>\n
            ";

            $sqlMan = "SELECT manID, manName FROM NTL_manufacturer ORDER BY manName";
            $rsMan = $dbConn->query($sqlMan);
            echo "<p> Manufacturer ";
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

            $sqlCat = "SELECT catID, catDesc FROM NTL_category ORDER BY catDesc";
            $rsCat = $dbConn->query($sqlCat);
            echo "<p>Category ";
            echo "<select name='catID'>";
            while ($catRecord = $rsCat->fetchObject()) {
                if ($rowObj->catID == $catRecord->catID) {
                    echo "<option value='{$catRecord->catID}' selected>
                {$catRecord->catDesc}</option>";
                } else {
                    echo"<option value='{$catRecord->catID}'>{$catRecord->catDesc}</option>";
                }
            }
            echo "</select></p>";

            echo "<p>Description <textarea name='description'>{$rowObj->description}</textarea></p>\n
            
             <p>Toy Price £<input type='number' name='toyPrice' step='0.01' value='{$rowObj->toyPrice}'></p>\n
            
            <input type='submit' value='Update Toy'>\n
            </form>\n";
        }
    } catch (Exception $e) {
        echo "<p>Query failed:
        " . $e->getMessage() . "</p>\n";
    }
}
?>
</body>
</html>