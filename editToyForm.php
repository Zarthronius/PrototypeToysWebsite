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
        }/* else {
            $rowObj = $queryResult->fetchObject();
            echo "<h1>Update '{$rowObj->toyName}'</h1>\n
        <form id='UpdateMovie' action='updateMovie.php' method='get'>\n
            Movie ID <input type='text' name='movieID' value='{$movieID}' readonly>\n
            <br>
            Title <input type='text' name='title' value='{$rowObj->title}'>\n
            <br>";

            $sqlCat = "SELECT categoryID, categoryName from nc_category ORDER BY categoryName";
            $rsCat = $dbConn->query($sqlCat);
            echo "Category";
            echo "<select name='categoryID'>";
            while ($catRecord = $rsCat->fetchObject()) {
                if ($rowObj->categoryID == $catRecord->categoryID) {
                    echo "<option value='{$catRecord->categoryID}' selected>
               {$catRecord->categoryName}</option>";
                } else {
                    echo "<option value='{$catRecord->categoryID}'>{$catRecord->categoryName}</option>";
                }
            }
            echo "</select>";
            echo "<br>";

            $sqlDir = "SELECT directorID, directorName from nc_director ORDER BY directorName";
            $rsDir = $dbConn->query($sqlDir);
            echo "Director";
            echo "<select name='directorID'>";
            while ($dirRecord = $rsDir->fetchObject()) {
                if ($rowObj->directorID == $dirRecord->directorID) {
                    echo "<option value='{$dirRecord->directorID}' selected>
               {$dirRecord->directorName}</option>";
                } else {
                    echo "<option value='{$dirRecord->directorID}'>{$dirRecord->directorName}</option>";
                }
            }
            echo "</select>";

            echo "<br>
            Notes <textarea name='notes'>{$rowObj->notes}</textarea>\n
            <br>
            <input type='submit' value='Update Movie'>\n
        </form>\n";*/
        
    } catch (Exception $e) {
        echo "<p>Query failed:
        " . $e->getMessage() . "</p>\n";
    }
}
?>
</body>
</html>