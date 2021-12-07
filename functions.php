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