<?php
session_start();
?>

<a href="inc/logout.php">Logout</a>

<p>This is ypu profile</p>
    <?php if(isset($_SESSION['user_id'])):?>
       <p>Welcome, <?php require_once __DIR__ . '/actions/User_name.php'; ?>  </p>
       <p>Your id isUser ID: <?php echo $_SESSION['user_id']; ?> </p>
    <?php else: ?>
        <a href="login.php">Login</a>
    <?php endif; ?>

