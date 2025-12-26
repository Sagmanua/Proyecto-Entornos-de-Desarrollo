<?php
require_once __DIR__ . '/actions/head.php'; 


$recipe_id = $_GET['id']; 

// ... (Database connection and getting $recipe_id from URL) ...

// 1. Fetch the main Recipe details
$stmt = $conn->prepare("SELECT * FROM recipe WHERE id = ?"); // Check if your column is 'id' or 'id_recipe'
$stmt->bind_param("i", $recipe_id);
$stmt->execute();
$recipe = $stmt->get_result()->fetch_assoc();

if ($recipe) {
    echo "<h1>" . $recipe['title'] . "</h1>";

    // 2. Get the ingredients using a JOIN
    echo "<h3>Ingredients:</h3><ul>";
    
    $sql_ing = "SELECT i.name, ri.amount, ri.unit 
                FROM ingredient i 
                JOIN recipe_ingredient ri ON i.id = ri.id_ingredient 
                WHERE ri.id_recipe = ?";
                
    $stmt_ing = $conn->prepare($sql_ing);
    $stmt_ing->bind_param("i", $recipe_id);
    $stmt_ing->execute();
    $ingredients = $stmt_ing->get_result();

    while ($row = $ingredients->fetch_assoc()) {
        // We use the column names from the ingredient and recipe_ingredient tables
        echo "<li>" . $row['amount'] . " " . $row['unit'] . " " . $row['name'] . "</li>";
    }
    echo "</ul>";

    // 3. Show instructions (Check your 'recipe' table for the exact column name, e.g., 'description')
    echo "<h3>Instructions:</h3>";
    echo "<p>" . nl2br($recipe['description']) . "</p>";

} else {
    echo "Recipe not found.";
}
?>
