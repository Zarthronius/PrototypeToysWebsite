<?php
ini_set("session.save_path", "/home/unn_w20016567/sessionData");
session_start();
?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Restricted</title>
</head>
<body>
<?php
if (isset($_SESSION['logged-in']) && $_SESSION['logged-in']) {
    echo "<p>Welcome!</p>\n";
    echo "<p><a href='admin.php'>Click here to edit toy.</a></p>";
}
else {
    echo "<p>Must be logged in to access this page\n";
    echo createLoginForm();
}
?>
</body>
</html>