<?php include "actions/head.php"; ?>

<p>This is index front page </p>

<?php 
$sql = "SELECT * FROM RECIPE;";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        echo '<div class="recipe" style="border:1px solid #ccc; margin:10px; padding:10px;">';
        
        // Show the title (replace 'title' with your actual column name)
        echo "<h3>" . $row['title'] . "</h3>";
        
        // CREATE THE DYNAMIC LINK
        // We pass the ID of this specific row to the next page
        echo '<a href="recipe_details.php?id=' . $row['id'] . '">View Full Recipe</a>';
        
        echo '</div>';
    }
} else {
    echo "The table is empty.";
}
?>
<?php include "actions/foot.php"; ?>