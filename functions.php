<?php
// Connects to database
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

// Creates Login form
function createLoginForm(){
    $output = <<<Login
    <div id = "login">
    <h2>Login</h2>
    <form method = "post" action = "loginProcess.php">
        <h3>Username</h3>
        <input type = "text" name = "username">
        <h3>Password</h3>
        <input type = "password" name = "password">
        <input id="loginButton" type = "submit" value = "Log In">
    </form>
    </div>
Login;
return $output;
}

// Saves session variable
function set_session($key, $value) {
    // Set key element = value
    $_SESSION[$key] = $value;
    return true;
}

// Retrieves session variable
function get_session($key) {
    if (isset($_SESSION['logged-in']) && $_SESSION['logged-in']) {
        return $_SESSION[$key];
    }
    else {
        return false;
    }
}

// Returns true if logged in, otherwise returns false
function check_login(){
    $loggedIn = get_session('logged-in');
    if ($loggedIn == true) {
        return true;
    } else {
        return false;
    }
}

// Generates start of page including head, metadata, body and div openings
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

// Generates header populated with parameter input
function makeHeader($header){
	$headContent = <<<HEAD
		<header>
			<h1>$header</h1>
		</header>
HEAD;
	$headContent .="\n";
	return $headContent;
}

// Creates NavMenu using parameters to populate header and links
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

// Displays username from session data and logout option
function makeLogout() {
    $username = get_session('username');
    $output = <<<LOGOUT
    <div id="logout">
    <p>Logged in as: <strong>{$username}</strong></p>
    <a id="logoutButton" href="logout.php"><button id="logoutButtonBack">Log Out</button></a>
    </div>
LOGOUT;
    $output .= "\n";
    return $output;
}

// Creates login or logout option depending on whether user is logged in
function createLoginLogout() {
    if (check_login()) {
        return makeLogout();
    } else {
        return createLoginForm();
    }
}

function endMain() {
    return "</main>\n";
}

// Creates footer with provided footer text
function makeFooter($footer) {
    $footContent = <<<FOOT
    <footer>
        <p>$footer</p>
    </footer>
FOOT;
	$footContent .="\n";
    return $footContent;
}

// Closing tags for page
function makePageEnd() {
    return "</div>\n</body>\n</html>";
}

// Default exception handler
function exceptionHandler ($e) {
    echo "<p><strong>Problem occured</strong></p>";
    log_error($e);
}

// Sets default exception handler
set_exception_handler('exceptionHandler');

// Default Error Handler
function errorHandler ($errno, $errstr, $errfile, $errline) {
// Checks error isn’t excluded by server settings
    if(!(error_reporting() & $errno)) {
        return;
    }
    throw new ErrorException($errstr, $errno, 0, $errfile, $errline);
}

// Sets default error handler
set_error_handler('errorHandler');

// logs error to error_log_file.log with time and error message. Can be read by opening readErrors.php page.
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
