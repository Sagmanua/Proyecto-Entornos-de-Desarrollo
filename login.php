<?php
session_start();
include "config.php";

if (isset($_POST['login'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];

    $sql = "SELECT * FROM users WHERE username='$username'";
    $result = mysqli_query($conn, $sql);
    $user = mysqli_fetch_assoc($result);

    if ($user && password_verify($password, $user['password'])) {
        $_SESSION['username'] = $username;
        header("Location: dashboard.php");
    } else {
        echo "Invalid username or password";
    }
}
?>

<form method="POST">
    <h2>Login</h2>
    <input type="text" name="username" required placeholder="Username"><br><br>
    <input type="password" name="password" required placeholder="Password"><br><br>
    <button name="login">Login</button>
</form>
