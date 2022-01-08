<?php
ini_set("session.save_path", "/home/unn_w20016567/sessionData");
session_start();

function validate_logon(){
    //initialise arrays
    $input = array();
    $errors = array();

    $username = filter_has_var(INPUT_POST, 'username')
        ? $_POST['username']: null;
    $input['username'] = trim($username);
    $password = filter_has_var(INPUT_POST, 'password')
        ? $_POST['password']: null;
    $input['password'] = trim($password);

    if (empty($input['username']) || empty($input['password'])) {
        array_push($errors, "You need to provide a username and a password.");
        session_destroy(); //deletes created blank session
    } else {
        try {
            unset($_SESSION['username']);
            unset($_SESSION['logged-in']);
            unset($_SESSION['firstname']);
            unset($_SESSION['surname']);

            // Make a database connection
            require_once("functions.php");
            $dbConn = getConnection();

            // Queries DB for password hash for username given by user
            $querySQL = "SELECT passwordHash, firstname, surname FROM NTL_users 
                        WHERE username = :username";

            // Prepare the sql statement using PDO
            $stmt = $dbConn->prepare($querySQL);

            // Execute the query using PDO
            $stmt->execute(array(':username' => $input['username']));

            $user = $stmt->fetchObject();

            // Checks if query was successful
            if ($user) {
                // Verification of password attempt
                if (password_verify($input['password'], $user->passwordHash)) {
                    echo "<h2>Login Successful</h2>";

                    set_session('logged-in', true);
                    set_session('username', $input['username']);
                    set_session('firstname', $user->firstname);
                    set_session('surname', $user->surname);

                    header('Location: index.php'); //auto redirects

                    echo "<a href='index.php'>Click here if not redirected automatically.</a>"; //Only occurs if not automatically redirected
                }
                // in case of any issues with logging in, errors appended to $error array
                else {
                    array_push($errors, "Incorrect username or password");
                }
            }
            else {
                array_push($errors, "Incorrect username or password");
            }
        } catch (Exception $e) {
            array_push($errors, "There was a problem: " . $e->getMessage());
        }
    }
    return $errors;
}

//converts error array to a string and returns it
function show_errors($errors){
    $errorString = '';
    for ($i = 0; $i < sizeof($errors); $i++){
        $errorString .= "<p><strong>Error:</strong> " . $errors[$i] . "</p>";
    }
    return $errorString;
}

try {
    require_once('functions.php');
    echo makePageStart("Login", "stylesheet.css");
    echo makeHeader("Login");
    echo makeNavMenu("Pages", array("index.php" => "Home", "admin.php" => "Admin", "orderToysForm.php" => "Order", "credits.php" => "Credits"));


    echo startMain();
    $errors = validate_logon();
    // Display errors if found
    if (!empty($errors)) {
        echo "<h2>Login Failed</h2>\n";
        echo show_errors($errors);
    }
    echo endMain();

    echo startAside();
    // Login or logout options based on success of login
    if (!empty($errors)) {
        echo createLoginForm();
    } else {
        echo makeLogout();
    }
    echo endAside();

    echo makeFooter("This is a fictional site for Northumbria Toys Limited.");
    echo makePageEnd();
} catch (Exception $e) {
    echo "<p>Whoops! Something went wrong, refresh the page.</p>";
    log_error($e);
}
?>