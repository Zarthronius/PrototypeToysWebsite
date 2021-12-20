<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Update Toy</title>
</head>
<body>
<?php
try {
    require_once("functions.php");
    $dbConn = getConnection();

    $toyID = isset($_GET['toyID']) ? $_GET['toyID'] : null;
    $toyName = isset($_GET['toyName']) ? $_GET['toyName'] : null;
    $manID = isset($_GET['manID']) ? $_GET['manID'] : null;
    $catID = isset($_GET['catID']) ? $_GET['catID'] : null;
    $description = isset($_GET['description']) ? $_GET['description'] : null;
    $toyPrice = isset($_GET['toyPrice']) ? $_GET['toyPrice'] : null;

    if (empty($toyID)||empty($toyName)||empty($manID)||empty($catID)||empty($description)||empty($toyPrice)) {
        echo "<h2>Error: Empty Fields</h2>";
        echo "<p>All fields should be completed.</p>";
        echo "<button><a href='admin.php'>Go Back</a></button>\n</section>\n</main>\n</body>\n</html>";
    }

    else {

         $sqlUpdate = "UPDATE NTL_toys SET
                    toyName = '$toyName',
                    manID = '$manID',
                    catID = '$catID',
                    description = '$description',
                    toyPrice = '$toyPrice'
                    WHERE toyID = '$toyID'";

        $dbConn->query($sqlUpdate);

        echo "<h2>Query executed successfully</h2>";
        echo "<a href='admin.php'>Go Back</a>";
    }

} catch (Exception $e){
    echo "<p>Query failed:
    ".$e->getMessage()."</p>\n";
}
?>
</body>
</html>