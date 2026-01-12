<?php
require_once __DIR__ . '/actions/head.php'; 

$recipe_id = $_GET['id']; 

// Retrieve recipe details
$stmt = $conn->prepare("SELECT * FROM recipe WHERE id = ?"); 
$stmt->bind_param("i", $recipe_id);
$stmt->execute();
$recipe = $stmt->get_result()->fetch_assoc();

if ($recipe) {
    // Display recipe title
    echo "<h1 class='recipe-detail-header'>" . $recipe['title'] . "</h1>";
    echo "<h3>Ingredients:</h3>";
    echo "<ul>";
    
    // Query to fetch ingredients
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
    
    // Instructions: Fetch and display using LEFT JOIN
    echo "<h3>Instructions:</h3>";
    
    $sql_steps = "SELECT rs.step_number, rs.step_description 
                  FROM recipe_steps rs 
                  LEFT JOIN recipe r ON rs.recipe_id = r.id
                  WHERE r.id = ?
                  ORDER BY rs.step_number ASC";
    
    $stmt_steps = $conn->prepare($sql_steps);
    $stmt_steps->bind_param("i", $recipe_id);
    $stmt_steps->execute();
    $steps = $stmt_steps->get_result();

    // Display instructions
    echo "<div class='instructions-box'>";
    while ($step = $steps->fetch_assoc()) {
        echo "<p><strong>Step " . $step['step_number'] . ":</strong> " . nl2br($step['step_description']) . "</p>";
    }
    echo "</div>";
} else {
    echo "Recipe not found.";
}
?>