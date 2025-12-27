<?php 
// 1. Include the head which handles session_start and DB connection
include "actions/head.php";

// 2. Access Control: Redirect to login if the user is not authenticated
if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit();
}
?>

<div class="profile-container">
    <div class="recipe-card profile-card">
        <div class="profile-header">
            <div class="avatar-circle">
                <?php 
                // Display the first letter of the username
                echo isset($_SESSION['username']) ? strtoupper(substr($_SESSION['username'], 0, 1)) : '?'; 
                ?>
            </div>
            <h2>User Profile</h2>
        </div>

        <div class="profile-info">
            <div class="info-group">
                <label>Username:</label>
                <span><?php echo htmlspecialchars($_SESSION['username'] ?? 'Guest'); ?></span>
            </div>
            <div class="info-group">
                <label>User ID:</label>
                <span>#<?php echo $_SESSION['user_id']; ?></span>
            </div>
        </div>

        <div class="profile-actions">
            <a href="index.php" class="btn-secondary">Browse Recipes</a>
            <a href="inc/logout.php" class="btn-danger">Logout</a>
        </div>
    </div>
</div>

<?php 
// 3. Include the footer to close the HTML tags correctly
include "actions/foot.php";
?>