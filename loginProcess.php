<?php
ini_set("session.save_path", "/home/unn_w20016567/sessionData");
session_start();

function validate_logon(){
    $input = array();
    $errors = array();

    $username = filter_has_var(INPUT_POST, 'username')
        ? $_POST['username']: null;
    $input['username'] = trim($username);
    $password = filter_has_var(INPUT_POST, 'password')
        ? $_POST['password']: null;
    $input['password'] = trim($password);

    if (empty($username) || empty($password)) {
        echo "<p>You need to provide a username and a password. Please try <a href='index.php'>again</a>.</p>\n";
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

            /* Query the users database table to get the password hash for the username entered by the user, using a PDO named placeholder for the username */
            $querySQL = "SELECT passwordHash, firstname, surname FROM NTL_users 
                        WHERE username = :username";

            // Prepare the sql statement using PDO
            $stmt = $dbConn->prepare($querySQL);

            // Execute the query using PDO
            $stmt->execute(array(':username' => $username));

            /* Check if a record was returned by the query. If yes, then there was a username matching what was entered in the logon form, and we can test (we will add code to shortly) to see if the password entered in the logon form was correct. Otherwise, indicate an error. */

            $user = $stmt->fetchObject();
            if ($user) {
                // Add code to verify the password attempt here (see below)
                if (password_verify($password, $user->passwordHash)) {
                    echo "Login was successful.";

                    set_session('logged-in', true);
                    set_session('username', $username);
                    set_session('firstname', $user->firstname);
                    set_session('surname', $user->surname);

                    header('Location: restricted.php'); //auto redirects
                    echo "<a href='restricted.php'>Click here if not redirected automatically.</a>"; //Only occurs if not automatically redirected
                }
                else {
                    array_push($errors, "Incorrect username or password");
                }
            }
            else {
                /* Add code to set a message to say the username or password were incorrect. Don’t say which. */
                array_push($errors, "Incorrect username or password");
            }
        } catch (Exception $e) {
            array_push($errors, "There was a problem: " . $e->getMessage());
        }
        return array ($input, $errors);
    }
    return false;
}

//converts error array to a string and returns it
function show_errors($errors){
    $errorString = '';
    for ($i = 0; $i < sizeof($errors); $i++){
        $errorString .= "<p>Error: " . $errors[$i] . "</p>";
    }
    $errorString .= "<p><a href='index.php'>Click here to try again.</a></p>";
    return $errorString;
}
?>

<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Login Process</title>
</head>
<body>
<?php
list ($input, $errors) = validate_logon();

if (!empty($errors)){
    echo show_errors($errors);
}
?>
</body>
</html>