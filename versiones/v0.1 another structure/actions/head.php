<?php
session_start(); 

?>
<!doctype html>
<html lang="es">
<head>
    <title>Menu</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<header>
    <?php if(isset($_SESSION['user_id'])): ?>
        <a href="profile.php">My Account</a>
    <?php else: ?>
        <a href="login.php">Login</a>
    <?php endif; ?>
</header>
<main>
