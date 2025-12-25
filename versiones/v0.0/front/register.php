<?php require_once __DIR__ . '/../back/login_system/create_user.php'; ?>  
<form method="POST">
    <h2>Create user</h2>
    <input type="text" name="username" required placeholder="Username"><br><br>
    <input type="password" name="password" required placeholder="Password"><br>
    <small>Min. 8 characters + 1 number</small><br><br>
    <button name="login">Create</button>
</form>