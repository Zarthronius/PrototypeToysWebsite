<?php
function validate_form()
{
    //create input/errors file
    $input = array();
    $errors = array();

    //Checks each value set and adds to input array
    $toyID = filter_has_var(INPUT_POST, 'toyID')
        ? $_POST['toyID'] : null;
    $input['toyID'] = trim($toyID);

    $toyName = filter_has_var(INPUT_POST, 'toyName')
        ? $_POST['toyName'] : null;
    $input['toyName'] = trim($toyName);

    $manID = filter_has_var(INPUT_POST, 'manID')
        ? $_POST['manID'] : null;
    $input['manID'] = trim($manID);

    // Checks whether provided manID is in NTL_manufacturer
    $queryMan = "SELECT manID FROM NTL_manufacturer WHERE manID = :manID";
    $dbConn = getConnection();
    $stmt = $dbConn->prepare($queryMan);
    $stmt->execute(array(':manID' => $manID));
    $man = $stmt->fetchObject();

    $catID = filter_has_var(INPUT_POST, 'catID')
        ? $_POST['catID'] : null;
    $input['catID'] = trim($catID);

    // Checks whether provided catID is in NTL_category
    $queryCat = "SELECT catID FROM NTL_category WHERE catID = :catID";
    $stmt = $dbConn->prepare($queryCat);
    $stmt->execute(array(':catID' => $catID));
    $cat = $stmt->fetchObject();

    $description = filter_has_var(INPUT_POST, 'description')
        ? $_POST['description'] : null;
    $input['description'] = trim($description);

    $toyPrice = filter_has_var(INPUT_POST, 'toyPrice')
        ? $_POST['toyPrice'] : null;
    $input['toyPrice'] = trim($toyPrice);

    // Appends to $errors if any empty fields
    if( empty($toyID) ) {
        array_push($errors, "No toy selected.");
    }

    if( empty($toyName) ) {
        array_push($errors, "No toy name provided.");
    } elseif(strlen($toyName) > 255) {
        array_push($errors, "Toy name must be less than 256 characters.");
    }

    if( empty($manID) ) {
        array_push($errors, "No manufacturer selected.");
    } elseif(!$man) {
        array_push($errors, "Invalid manufacturer.");
    }

    if( empty($catID) ) {
        array_push($errors, "No category selected.");
    } elseif(!$cat) {
        array_push($errors, "Invalid category.");
    }

    if( empty($description) ) {
        array_push($errors, "No description provided.");
    } elseif(strlen($description) > 1999) {
        array_push($errors, "Description must be less than 2000 characters.");
    }

    if( empty($toyPrice) ) {
        array_push($errors, "No toy price provided.");
    } elseif(!filter_var($toyPrice, FILTER_VALIDATE_FLOAT)) {
        array_push($errors, "Toy price is not a number.");
    } elseif(strlen($toyPrice) > 5) {
        array_push($errors, "Toy price must be less than 5 characters.");
    } elseif($toyPrice < 0) {
        array_push($errors, "Toy price cannot be below 0.");
    }
    return array ($input, $errors);
}

// Function to display errors to page
function show_errors($errors){
    $output = '';
    foreach ($errors as $error) {
        $output .= "<p><strong>Error:</strong> " . $error . "</p>";
    }
    $output .= "<a href=admin.php>Go Back</a>\n";
    return $output;
}

// Function to process form with given inputs
function process_form($input){
    $dbConn = getConnection();

    // Query to update relevant toyID
    $sqlUpdate = "UPDATE NTL_toys SET
                    toyName = :toyName,
                    manID = :manID,
                    catID = :catID,
                    description = :description,
                    toyPrice = :toyPrice
                    WHERE toyID = :toyID";

    // Prepares query
    $stmt = $dbConn->prepare($sqlUpdate);

    // Executes query
    $stmt->execute(array(
            ':toyName' => $input['toyName'],
            ':manID' => $input['manID'],
            ':catID' => $input['catID'],
            ':description' => $input['description'],
            ':toyPrice' => $input['toyPrice'],
            ':toyID' => $input['toyID']
        )
    );

    // Retrieves catDesc and manName using catID and manID
    $sqlQuery = "SELECT catDesc, manName
                FROM NTL_toys
                INNER JOIN NTL_category
                ON NTL_toys.catID = NTL_category.catID
                INNER JOIN NTL_manufacturer
                ON NTL_toys.manID = NTL_manufacturer.manID
                WHERE toyID = :toyID";

    // Prepares and executes query
    $result = $dbConn->prepare($sqlQuery);
    $result->execute(array(
            ':toyID' =>  $input['toyID']
        )
    );

    // Variable containing retrieved data from query
    $toy = $result->fetchObject();


    // Summary of all changed data
    $invoice = "<p><strong>Toy:</strong> " . $input['toyName'] . "</p>\n" .
        "<p><strong>Manufacturer:</strong> {$toy->manName} </p>\n" .
        "<p><strong>Category:</strong>  {$toy->catDesc}</p>\n" .
        "<p><strong>Description:</strong> " . $input['description'] . "</p>\n" .
        "<p><strong>Toy Price:</strong> £" . $input['toyPrice'] . "</p>\n";
    return ($invoice);
}

try {
    require_once("functions.php");
    $dbConn = getConnection();
    echo makePageStart("NTL Update Toy","stylesheet.css");

    list($input, $errors) = validate_form();
    if ($errors) { // Displays errors if any found
        echo makeHeader("Error Updating");
        echo makeNavMenu("Pages", array("index.php" => "Home", "admin.php" => "Admin", "orderToysForm.php" => "Order", "credits.php" => "Credits"));
        echo startMain();
        echo "<h2>Errors</h2>";
        echo show_errors($errors);
        echo endMain();
    }
    else { // Executes update and displays invoice on success
        echo makeHeader("Successfully Updated");
        echo makeNavMenu("Pages", array("index.php" => "Home", "admin.php" => "Admin", "orderToysForm.php" => "Order", "credits.php" => "Credits"));
        echo startMain();
        echo "<h2>Details of Update</h2>";
        echo process_form($input);
        echo "<p>Return to <a href='index.php'>Home</a>";
        echo endMain();
    }

} catch (Exception $e){
    echo "<p>Whoops! Something went wrong, return to <a href='index.php'>Home</a>.</p>";
    log_error($e);
}
echo makeFooter("This is a fictional site for Northumbria Toys Limited.");
echo makePageEnd();
?>