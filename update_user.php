
<?php


require_once __DIR__ . '/inc/update_informacio.php';

$user_id = $_GET['user_id'] ?? null;
if (!$user_id) {
    die("User ID missing");
}

$stmt = $conn->prepare("SELECT username, email, phone FROM `USER` WHERE id = ?");
$stmt->bind_param("i", $user_id);
$stmt->execute();

$result = $stmt->get_result();
$user = $result->fetch_assoc();

if (!$user) {
    die("User not found");
}
?>
<form method="POST">
    <h2>Update user</h2>

    <input type="text" name="username" required
        value="<?php echo htmlspecialchars($user['username']); ?>"
        placeholder="Username"><br><br>

    <input type="email" name="email" required
        value="<?php echo htmlspecialchars($user['email']); ?>"
        placeholder="Email"><br><br>

    <input type="text" name="phone" required
        value="<?php echo htmlspecialchars($user['phone']); ?>"
        placeholder="Phone"><br><br>

    <input type="password" name="password" placeholder="New Password"><br>
    <small>Leave empty to keep current password</small><br><br>

    <input type="hidden" name="user_id" value="<?php echo (int)$user_id; ?>">

    <button name="update">Update</button>
</form>