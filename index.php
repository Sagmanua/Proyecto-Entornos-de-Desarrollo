<?php include "actions/head.php"; ?>


<div class="recipe-grid"> <?php 
$sql = "SELECT * FROM RECIPE;";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        echo '<div class="recipe-card">'; 
        
        echo "<h3>" . $row['title'] . "</h3>";
        
        echo '<a href="recipe_details.php?id=' . $row['id'] . '">View Full Recipe</a>';
        
        echo '</div>';
    }
} else {
    echo "The table is empty.";
}
?>
</div>

<?php include "actions/foot.php"; ?>