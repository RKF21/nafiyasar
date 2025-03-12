<?php

$servername = "localhost";  // Remove ":8080"
$dBUsername = "root";
$dbPassword = "";
$dBName = "370project";

// Use correct MySQL port (default is 3306)
$conn = mysqli_connect($servername, $dBUsername, $dbPassword, $dBName, 3306);

// Check connection
if (!$conn) {
    die("Database Connection Failed: " . mysqli_connect_error());
} 

?>
