<?php
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

require_once __DIR__ . '/../actions/head.php'; 

if (isset($_POST['login'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];

    // Use a prepared statement to find the user and retrieve additional info (email, phone)
    $stmt = $conn->prepare("SELECT id, password, email, phone FROM USER WHERE username = ?");
    $stmt->bind_param("s", $username);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($user = $result->fetch_assoc()) {
        // Compare the submitted password with the hashed password in the DB
        if (password_verify($password, $user['password'])) {
            // Store user data in session
            $_SESSION['user_id'] = $user['id'];
            $_SESSION['username'] = $username;
            $_SESSION['email'] = $user['email'];   // Store email in session
            $_SESSION['phone'] = $user['phone'];   // Store phone in session
            
            // Redirect to profile page or home page after successful login
            header("Location: ./profile.php");
            exit();
        } else {
            echo "<p class='error'>Invalid password.</p>";
        }
    } else {
        echo "<p class='error'>User not found.</p>";
    }
}
?>
