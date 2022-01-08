<?php
ini_set("session.save_path", "/home/unn_w20016567/sessionData");
session_start();

// Removes session data from file
$_SESSION = array();

$params = session_get_cookie_params();
setcookie(session_name(), "", time() - 3600,
    $params["path"], $params["domain"],
    $params["secure"], $params["httponly"]
);
// Destroys session file
session_destroy();

//Redirects user to home page
header('Location: index.php');
echo "<a href='index.php'>Click here if not redirected automatically.</a>";
?>