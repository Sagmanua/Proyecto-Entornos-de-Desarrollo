<?php
require_once __DIR__ . '/actions/head.php'; 


$recipe_id = $_GET['id']; 


$stmt = $conn->prepare("SELECT * FROM recipe WHERE id = ?"); 
$stmt->bind_param("i", $recipe_id);
$stmt->execute();
$recipe = $stmt->get_result()->fetch_assoc();

if ($recipe) {
    echo "<h1 class='recipe-detail-header'>" . $recipe['title'] . "</h1>";
    echo "<h3>Ingredients:</h3>";
    echo "<ul>";
    
    $sql_ing = "SELECT i.name, ri.amount, ri.unit 
                FROM ingredient i 
                JOIN recipe_ingredient ri ON i.id = ri.id_ingredient 
                WHERE ri.id_recipe = ?";
                
    $stmt_ing = $conn->prepare($sql_ing);
    $stmt_ing->bind_param("i", $recipe_id);
    $stmt_ing->execute();
    $ingredients = $stmt_ing->get_result();

    while ($row = $ingredients->fetch_assoc()) {
        echo "<li>" . $row['amount'] . " " . $row['unit'] . " " . $row['name'] . "</li>";
    }
    echo "</ul>";
    echo "<h3>Instructions:</h3>";
    echo "<div class='instructions-box'>" . nl2br($recipe['description']) . "</div>";

} else {
    echo "Recipe not found.";
}
?>
