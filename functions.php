<?php
function getConnection(){
    try {
        $connection = new PDO("mysql:host=localhost;dbname=unn_w20016567","unn_w20016567","UcigE");

        $connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        return $connection;
    }
    catch (Exception $e) {
        throw new Exception("Coonection error ".$e->getMessage(),0,$e);
    }
}
?>