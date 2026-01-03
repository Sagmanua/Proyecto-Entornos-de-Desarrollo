<?php
// 1. Обязательно запускаем сессию, чтобы PHP знал, ЧТО именно закрывать
session_start();

// 2. Очищаем все переменные сессии в текущем скрипте
$_SESSION = array();

// 3. Если нужно полностью уничтожить сессию (включая куки браузера)
if (ini_get("session.use_cookies")) {
    $params = session_get_cookie_params();
    setcookie(session_name(), '', time() - 42000,
        $params["path"], $params["domain"],
        $params["secure"], $params["httponly"]
    );
}

// 4. Уничтожаем сессию на сервере
session_destroy();

// 5. Перенаправляем на страницу входа или главную
header("Location: ../login.php"); 
exit();
?>