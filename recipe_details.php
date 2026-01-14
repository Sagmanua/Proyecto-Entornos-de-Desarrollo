<?php
require_once __DIR__ . '/actions/head.php'; 

$recipe_id = isset($_GET['id']) ? (int)$_GET['id'] : 0; 

// Retrieve recipe details (Direct from table)
$stmt = $conn->prepare("SELECT title FROM recipes WHERE id = ?"); 
$stmt->bind_param("i", $recipe_id);
$stmt->execute();
$recipe = $stmt->get_result()->fetch_assoc();

if ($recipe) {
    echo "<h1 class='recipe-detail-header'>" . htmlspecialchars($recipe['title']) . "</h1>";
    echo "<h3>Ingredients:</h3>";
    echo "<ul>";
    
    $sql_ing = "SELECT name, amount, unit FROM view_recipe_ingredients WHERE id_recipe = ?";
    $stmt_ing = $conn->prepare($sql_ing);
    $stmt_ing->bind_param("i", $recipe_id);
    $stmt_ing->execute();
    $ingredients = $stmt_ing->get_result();

    while ($row = $ingredients->fetch_assoc()) {
        echo "<li>" . htmlspecialchars($row['amount'] . " " . $row['unit'] . " " . $row['name']) . "</li>";
    }
    echo "</ul>";
    
    echo "<h3>Instructions:</h3>";
    $sql_steps = "SELECT step_number, step_description FROM view_recipe_steps WHERE recipe_id = ? ORDER BY step_number ASC";
    
    $stmt_steps = $conn->prepare($sql_steps);
    $stmt_steps->bind_param("i", $recipe_id);
    $stmt_steps->execute();
    $steps = $stmt_steps->get_result();

    echo "<div class='instructions-box'>";
    if ($steps->num_rows > 0) {
        while ($step = $steps->fetch_assoc()) {
            echo "<p><strong>Step " . $step['step_number'] . ":</strong> " . nl2br(htmlspecialchars($step['step_description'])) . "</p>";
        }
    } else {
        echo "<p>No instructions provided for this recipe.</p>";
    }
    echo "</div>";
} else {
    echo "Recipe not found.";
}

require_once __DIR__ . '/actions/foot.php'; 
?>