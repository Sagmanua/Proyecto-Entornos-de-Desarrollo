<?php
session_start();
require_once __DIR__ . '/../actions/connect_bd.php';

if (isset($_POST['login'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];

    // --- Username Validation ---
    $long_of_name = strlen($username);
    $is_username_valid = preg_match('/^[a-zA-Z0-9]+$/', $username);

    if ($long_of_name > 8 && $long_of_name < 16 && $is_username_valid) {

        // --- Fetch user from database ---
        $stmt = $conn->prepare("SELECT id, username, password FROM user WHERE username = ?");
        $stmt->bind_param("s", $username);
        $stmt->execute();
        $result = $stmt->get_result();

        if ($result->num_rows === 1) {
            $user = $result->fetch_assoc();

            // --- Verify password ---
            if (password_verify($password, $user['password'])) {
                // Login successful
                $_SESSION['user_id'] = $user['id'];
                $_SESSION['username'] = $user['username'];
                header("Location: ./profile.php");
                exit();
            } else {
                echo "Incorrect password.";
            }
        } else {
            echo "User not found.";
        }

    } else {
        echo "Username is not correct (9-15 alphanumeric characters only).";
    }
}
?>
