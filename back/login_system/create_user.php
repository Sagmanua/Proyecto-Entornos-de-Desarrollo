<?php
session_start();
include "../inc/connect_bd.php";

if (isset($_POST['login'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];

    // --- Username Validation ---
    $long_of_name = strlen($username);
    $is_username_valid = preg_match('/^[a-zA-Z0-9]+$/', $username);

    // --- Password Validation ---
    // Checks if password is at least 8 chars and contains at least one number
    $is_password_secure = (strlen($password) >= 8 && preg_match('/[0-9]/', $password));

    if ($long_of_name > 8 && $long_of_name < 16 && $is_username_valid) {
        
        if ($is_password_secure) {
            // Hash the password
            $hashedPassword = password_hash($password, PASSWORD_DEFAULT);

            // Save to database
            $stmt = $conn->prepare("INSERT INTO users (username, password) VALUES (?, ?)");
            $stmt->bind_param("ss", $username, $hashedPassword);
            
            if ($stmt->execute()) {
                echo "User created safely!";
            } else {
                echo "Error: Could not save to database.";
            }
        } else {
            echo "Password too weak! Must be 8+ characters and include at least one number.";
        }
        
    } else {
        echo "Username is not correct (9-15 alphanumeric characters only).";
    }
}
?>

<form method="POST">
    <h2>Create user</h2>
    <input type="text" name="username" required placeholder="Username"><br><br>
    <input type="password" name="password" required placeholder="Password"><br>
    <small>Min. 8 characters + 1 number</small><br><br>
    <button name="login">Create</button>
</form>