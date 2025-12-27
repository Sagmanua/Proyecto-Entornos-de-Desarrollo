<?php
require_once __DIR__ . '/../actions/head.php'; // To get the $conn variable

if (isset($_POST['login'])) { // Matches the button name in your register.php
    $username = $_POST['username'];
    $password = $_POST['password'];

    // Basic validation: Min 8 characters + 1 number
    if (strlen($password) < 8 || !preg_match("/[0-9]/", $password)) {
        echo "<p style='color:red;'>Password must be 8+ chars and contain a number.</p>";
    } else {
        // Hash the password for safety
        $hashed_password = password_hash($password, PASSWORD_DEFAULT);

        $stmt = $conn->prepare("INSERT INTO USER (username, password) VALUES (?, ?)");
        $stmt->bind_param("ss", $username, $hashed_password);

        if ($stmt->execute()) {
            echo "<p style='color:green;'>Registration successful! <a href='login.php'>Login here</a></p>";
        } else {
            echo "<p style='color:red;'>Error: Username might already be taken.</p>";
        }
    }
}
?>