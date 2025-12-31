<?php
require_once __DIR__ . '/connect_bd.php';

$sql = "SELECT username FROM user WHERE id = " . $_SESSION['user_id'];
$result = $conn->query($sql);

if ($result && $result->num_rows > 0) {
    $row = $result->fetch_assoc();
    echo $row['username'];
}


?>