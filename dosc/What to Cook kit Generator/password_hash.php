<?php
include "config.php";

$username = "alice";
$password = "mypassword123";

// Hash the password
$hashedPassword = password_hash($password, PASSWORD_DEFAULT);

// Save to database
$stmt = $conn->prepare("INSERT INTO users (username, password) VALUES (?, ?)");
$stmt->bind_param("ss", $username, $hashedPassword);
$stmt->execute();

echo "User saved safely!";
?>
