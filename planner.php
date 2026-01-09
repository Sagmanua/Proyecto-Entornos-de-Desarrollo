<?php 
include "actions/head.php"; 

if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit();
}

$user_id = $_SESSION['user_id'];

// 1. Handle form submission to save to the MENU table
if (isset($_POST['save_menu'])) {
    $date = $_POST['planned_date'];
    $recipe_id = $_POST['id_recipe'];
    $type = $_POST['meal_type'];
    
    $stmt = $conn->prepare("INSERT INTO MENU (plannes_date, id_recipe, id_user, meal_type) VALUES (?, ?, ?, ?)");
    $stmt->bind_param("siis", $date, $recipe_id, $user_id, $type);
    $stmt->execute();
    echo "<p class='success-msg'>Meal added to your plan!</p>";
}
?>

<div class="container">
    <div class="menu-header">
        <h1>Weekly Meal Planner</h1>
        <p>Plan your meals for the upcoming days</p>
    </div>

    <div class="recipe-card" style="margin-bottom: 30px;">
        <form method="POST" style="box-shadow: none; margin: 0; max-width: 100%;">
            <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(200px, 1fr)); gap: 15px;">
                <div>
                    <label>Date</label>
                    <input type="date" name="planned_date" required value="<?php echo date('Y-m-d'); ?>">
                </div>
                <div>
                    <label>Meal Type</label>
                    <select name="meal_type" required style="width:100%; padding:12px; border-radius:6px; border:1px solid #ddd;">
                        <option value="Breakfast">Breakfast</option>
                        <option value="Lunch">Lunch</option>
                        <option value="Dinner">Dinner</option>
                        <option value="Snack">Snack</option>
                    </select>
                </div>
                <div>
                    <label>Select Recipe</label>
                    <select name="id_recipe" required style="width:100%; padding:12px; border-radius:6px; border:1px solid #ddd;">
                        <?php
                        $recipes = $conn->query("SELECT id, title FROM RECIPE");
                        while($r = $recipes->fetch_assoc()) {
                            echo "<option value='{$r['id']}'>".htmlspecialchars($r['title'])."</option>";
                        }
                        ?>
                    </select>
                </div>
                <div style="display: flex; align-items: flex-end;">
                    <button name="save_menu">Add to Plan</button>
                </div>
            </div>
        </form>
    </div>

    <div class="planner-grid">
        <?php
        $sql = "SELECT m.plannes_date, m.meal_type, r.title, r.id as rid 
                FROM MENU m 
                JOIN RECIPE r ON m.id_recipe = r.id 
                WHERE m.id_user = ? 
                ORDER BY m.plannes_date ASC";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("i", $user_id);
        $stmt->execute();
        $result = $stmt->get_result();

        if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
                $formatted_date = date("l, M j", strtotime($row['plannes_date']));
                ?>
                <div class="recipe-card day-column">
                    <span class="badge"><?php echo $row['meal_type']; ?></span>
                    <h4><?php echo $formatted_date; ?></h4>
                    <p><strong><?php echo htmlspecialchars($row['title']); ?></strong></p>
                    <a href="recipe_details.php?id=<?php echo $row['rid']; ?>" style="font-size: 0.8rem; color: #ff6b6b;">View Recipe</a>
                </div>
                <?php
            }
        } else {
            echo "<p style='grid-column: 1/-1; text-align: center;'>Your planner is empty.</p>";
        }
        ?>
    </div>
</div>

<?php include "actions/foot.php"; ?>