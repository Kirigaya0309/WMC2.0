<?php
    include('../Paritial/config.php');
    session_destroy(); // Unset $_SESSION['user']
    //Redirect
    header('location:'.SITEURL.'Login/login.php');
?>