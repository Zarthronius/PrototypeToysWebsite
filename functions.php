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

//function to create a Navigation bar
function createNav(){
    $output = <<<Navigation
    <nav>
    <h2>Pages</h2>
    <ul id="main-nav"> <!--Navigation links-->
        <li><a href="index.php" accesskey = "h">Home</a></li>
        <li><a href="admin.php" accesskey = "a">Admin</a></li>
        <li><a href="credits.php" accesskey= "c">Credits</a></li>
    </ul>
    </nav>
Navigation;
return $output;
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

//function to create common top sections of web pages (Nav and Login)
function createTopBodySections()
{
    echo createNav();
    if (check_login() == false) {
        echo createLoginForm();
    } else {
        echo "<p><a href='logout.php'>Click here to log out</a></p>";
    }
}






    ////////////////////////////////////
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
            //return "ERROR: Unable to get " . $key . " value. ";
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
    ////////////////////////////////////