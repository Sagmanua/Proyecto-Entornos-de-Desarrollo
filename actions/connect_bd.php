<?php
$host = "localhost";
$user = "admin_recipe_app";
$pass = "Login_system123$";
$db   = "recipe_app";

$conn = mysqli_connect($host, $user, $pass, $db);

if (!$conn) {
    die("Database connection failed: " . mysqli_connect_error());
}
?>

