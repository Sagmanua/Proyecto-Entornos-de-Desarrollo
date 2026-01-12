
<?php
require_once __DIR__ . '/../actions/head.php';

if (isset($_POST['update'])) {

    $user_id  = (int)$_POST['user_id'];
    $username = trim($_POST['username']);
    $email    = trim($_POST['email']);
    $phone    = trim($_POST['phone']);
    $password = $_POST['password'];

    // Basic validation
    if (strlen($username) < 3) {
        die("Username too short");
    }

    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        die("Invalid email");
    }

    // If password is provided → hash and update it
    if (!empty($password)) {

        if (!preg_match('/^(?=.*\d).{8,}$/', $password)) {
            die("Password must be at least 8 characters and contain a number");
        }

        $hashedPassword = password_hash($password, PASSWORD_DEFAULT);

        $sql = "UPDATE USER 
                SET username = ?, email = ?, phone = ?, password = ?
                WHERE id = ?";

        $stmt = $conn->prepare($sql);
        $stmt->bind_param("ssssi", $username, $email, $phone, $hashedPassword, $user_id);

    } else {
        // Update without changing password
        $sql = "UPDATE USER 
                SET username = ?, email = ?, phone = ?
                WHERE id = ?";

        $stmt = $conn->prepare($sql);
        $stmt->bind_param("sssi", $username, $email, $phone, $user_id);
    }

    if ($stmt->execute()) {
        header("Location: profile.php?updated=1");
        exit;
    } else {
        echo "Update failed: " . $stmt->error;
    }
}
