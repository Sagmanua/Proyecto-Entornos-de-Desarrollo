<?php
$host = "localhost";
$user = "login_system";
$pass = "Login_system123$";
$db   = "login_system";

$conn = mysqli_connect($host, $user, $pass, $db);

if (!$conn) {
    die("Database connection failed: " . mysqli_connect_error());
}
?>

