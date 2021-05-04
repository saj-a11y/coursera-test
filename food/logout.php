<?php
session_start(); 
session_destroy(); 
$logout = 'login.php';
header('Location: ' . $logout); // 

?>