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
            Toy ID <input type='text' name='toyID' value='{$toyID}' readonly>\n
            <br>
            Toy Name <input type='text' name='toyName' value='{$rowObj->toyName}'>\n
            <br>";
            ///////////////////////////////////////////////////////
            $sqlMan = "SELECT manID, manName FROM NTL_manufacturer ORDER BY manName";
            $rsMan = $dbConn->query($sqlMan);
            echo "Manufacturer";
            echo "<select name='manufacturerID'>";
            while ($manRecord = $rsMan->fetchObject()) {
                if ($rowObj->manID == $manRecord->manID) {
                    echo "<option value='{$manRecord->manID}' selected>
               {$manRecord->manName}</option>";
                } else {
                    echo "<option value='{$manRecord->manID}'>{$manRecord->manName}</option>";
                }
            }
            echo "</select>";
            echo "<br>";

            $sqlCat = "SELECT catID, catDesc FROM NTL_category ORDER BY catDesc";
            $rsCat = $dbConn->query($sqlCat);
            echo "Category";
            echo "<select name='categoryID'>";
            while ($catRecord = $rsCat->fetchObject()) {
                if ($rowObj->catID == $catRecord->catID) {
                    echo "<option value='{$catRecord->catID}' selected>
                {$catRecord->catDesc}</option>";
                } else {
                    echo"<option value='{$catRecord->catID}'>{$catRecord->catDesc}</option>";
                }
            }
            echo "</select>";

            echo "<br>
            Description <textarea name='description'>{$rowObj->description}</textarea>\n
            <br>
            <input type='submit' value='Update Toy'>\n
        </form>\n";
            ///////////////////////////////////////////////////////
        }
    } catch (Exception $e) {
        echo "<p>Query failed:
        " . $e->getMessage() . "</p>\n";
    }
}
?>
</body>
</html>