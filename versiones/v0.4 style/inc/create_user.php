<?php
require_once __DIR__ . '/../actions/head.php';

if (isset($_POST['login'])) {
    $username = trim($_POST['username']); // Remove accidental whitespace
    $password = $_POST['password'];
    $errors = [];

    // 1. Username Validation (5-20 characters)
    if (strlen($username) < 5 || strlen($username) > 20) {
        $errors[] = "Username must be between 5 and 20 characters.";
    }

    // 2. Password Validation (8-16 characters + number)
    if (strlen($password) < 8 || strlen($password) > 16) {
        $errors[] = "Password must be between 8 and 16 characters.";
    }
    if (!preg_match("/[0-9]/", $password)) {
        $errors[] = "Password must contain at least one number.";
    }

    // 3. Execution
    if (empty($errors)) {
        $hashed_password = password_hash($password, PASSWORD_DEFAULT);

        $stmt = $conn->prepare("INSERT INTO USER (username, password) VALUES (?, ?)");
        $stmt->bind_param("ss", $username, $hashed_password);

        if ($stmt->execute()) {
            echo "<p style='color:green;'>Registration successful! <a href='login.php'>Login here</a></p>";
        } else {
            echo "<p style='color:red;'>Error: Username might already be taken.</p>";
        }
    } else {
        // Display all boundary errors
        foreach ($errors as $error) {
            echo "<p style='color:red;'>$error</p>";
        }
    }
}
?>