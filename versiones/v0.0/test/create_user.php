<?php
session_start();
include "config.php";

if (isset($_POST['login'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];

    // Hash the password
    $hashedPassword = password_hash($password, PASSWORD_DEFAULT);

    $long_of_name = strlen($username);

    if ($long_of_name > 8 && $long_of_name < 16){
        // Save to database
        $stmt = $conn->prepare("INSERT INTO users (username, password) VALUES (?, ?)");
        $stmt->bind_param("ss", $username, $hashedPassword);
        $stmt->execute();

        echo "User create safely!";
    }else{
            echo "name is not correct";
    }
    
    }
?>
<?php
$cadena = "MiUsuario56";
if (preg_match('/^[a-zA-Z0-9]+$/', $cadena)) {
    echo "'$cadena' es válido (solo alfanumérico).\n"; // Salida: 'MiUsuario56' es válido (solo alfanumérico).
} else {
    echo "'$cadena' contiene caracteres no válidos.\n";
}
?>

<form method="POST">
    <h2>Create user</h2>
    <input type="text" name="username" required placeholder="Username"><br><br>
    <input type="password" name="password" required placeholder="Password"><br><br>
    <button name="login">Create</button>
</form>
