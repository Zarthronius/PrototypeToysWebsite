<?php
//function to connect to database
function getConnection(){
    try {
        $connection = new PDO("mysql:host=localhost;dbname=unn_w20016567","unn_w20016567","UcigE");

        $connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        return $connection;
    }
    catch (Exception $e) {
        throw new Exception("Connection error ".$e->getMessage(),0,$e);
    }
}

//function to create Login form
function createLoginForm(){
    $output = <<<Login
    <h2>Login</h2>
    <form method = "post" action = "loginProcess.php">
        <h3>Username</h3>
        <input type = "text" name = "username">
        <h3>Password</h3>
        <input type = "password" name = "password">
        <input type = "submit" value = "Logon">
    </form>
Login;
return $output;
}

//saves session variable
function set_session($key, $value) {
    // Set key element = value
    $_SESSION[$key] = $value;
    return true;
}

function get_session($key) {
    if (isset($_SESSION['logged-in']) && $_SESSION['logged-in']) {
        return $_SESSION[$key];
    }
    else {
        return false;
    }
}

function check_login(){
    $loggedIn = get_session('logged-in');
    if ($loggedIn == true) {
        return true;
    } else {
        return false;
    }
}

function makePageStart($title, $stylesheet) {
	$pageStartContent = <<<PAGESTART
	<!doctype html>
	<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>$title</title>
		<link href="$stylesheet" rel="stylesheet" type="text/css">
	</head>
	<body>
<div id="gridContainer">
PAGESTART;
	$pageStartContent .="\n";
	return $pageStartContent;
}

function makeHeader($header){
	$headContent = <<<HEAD
		<header>
			<h1>$header</h1>
		</header>
HEAD;
	$headContent .="\n";
	return $headContent;
}

function makeNavMenu($navMenuHeader, $links) {
    $menu = "";
    foreach ($links as $key=>$value){
        $menu .= "<li><a href='$key'>$value</a></li>\n";
    }
    $navMenuContent = <<<NAVMENU
    <nav>
        <h2>$navMenuHeader</h2>
        <ul>
            $menu
        </ul>
    </nav>
NAVMENU;
    $navMenuContent .= "\n";
    return $navMenuContent;
}

function startAside() {
    return "<aside>\n";
}

function endAside() {
    return "</aside>\n";
}

function startMain() {
    return "<main>\n";
}

function makeLogout() {
    $username = get_session('username');
    $output = <<<LOGOUT
    <p>Logged in as: <strong>{$username}</strong></p>
    <p><a href='logout.php'>Click here to log out</a></p>
LOGOUT;
    return $output;
}

function endMain() {
    return "</main>\n";
}

function makeFooter($footer) {
    $footContent = <<<FOOT
    <footer>
        <p>$footer</p>
    </footer>
FOOT;
	$footContent .="\n";
    return $footContent;
}

function makePageEnd() {
    return "</div>\n</body>\n</html>";
}

///////////////////////////////////////////////////
function exceptionHandler ($e) {
    echo "<p><strong>Problem occured</strong></p>";
    log_error($e);
}

set_exception_handler('exceptionHandler');

function errorHandler ($errno, $errstr, $errfile, $errline) {
// check error isn’t excluded by server settings
    if(!(error_reporting() & $errno)) {
        return;
    }
    throw new ErrorException($errstr, $errno, 0, $errfile, $errline);
}

set_error_handler('errorHandler');

function log_error ($e) {
    $fileHandle = fopen("error_log_file.log", "ab" );

    $errorDate = date('D M j G:i:s T Y');
    $errorMessage = $e->getMessage();

    $toReplace = array("\r\n", "\n", "\r"); //chars to replace
    $replaceWith = '';
    $errorMessage = str_replace($toReplace, $replaceWith, $errorMessage);

    fwrite($fileHandle, "$errorDate|$errorMessage".PHP_EOL);
    fclose($fileHandle);
}

?>
