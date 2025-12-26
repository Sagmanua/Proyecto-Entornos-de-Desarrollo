<?php require_once __DIR__ . '/inc/login_user.php'; ?>  
<form method="POST">
    <h2>login_system</h2>
    <input type="text" name="username" required placeholder="Username"><br><br>
    <input type="password" name="password" required placeholder="Password"><br>
    <small>Min. 8 characters + 1 number</small><br><br>
    <button name="login">Create</button>
</form>