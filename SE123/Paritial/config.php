<?php
    //Start Session
    session_start(); 

    //Create Constants to Store Non Rep Values
    define('SITEURL', 'http://localhost:8080/SE123/');
    define('LOCALHOST', 'localhost');
    define('DB_USERNAME', 'root');
    define('DB_PASSWORD', '');
    define('DB_NAME', 'uwc');

    $conn = mysqli_connect(LOCALHOST, DB_USERNAME. DB_PASSWORD) or die(mysqli_error($conn));
    $db_select = mysqli_select_db($conn, DB_NAME) or die(mysqli_error($conn));

?>