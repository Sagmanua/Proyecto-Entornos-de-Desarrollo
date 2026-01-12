<?php 
include "actions/head.php"; 

if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit();
}
$user_id = $_SESSION['user_id'];

?>

<div class="profile-container">
    <div class="recipe-card profile-card">
        <div class="profile-header">
            <div class="avatar-circle">

                <?php echo substr($_SESSION['phone'], 0, 1); ?>


            </div>
            <h2>User Profile</h2>
        </div>

<div class="profile-info">
    <div class="info-group">
        <div class="info-item">
            <label>Username:</label>
            <span><?php echo htmlspecialchars($_SESSION['username']); ?></span>
        </div>

        <div class="info-item">
            <label>Email:</label>
            <span><?php echo htmlspecialchars($_SESSION['email']); ?></span>
        </div>

        <div class="info-item">
            <label>Phone:</label>
            <span><?php echo htmlspecialchars($_SESSION['phone']); ?></span>
        </div>
    </div>


                

            </div>
        </div>
        <div class="profile-actions">
            <a href="planner.php" class="btn-secondary">Open Full Planner</a>
            <a href="inc/logout.php" class="btn-danger">Logout</a>
            <a href="update_user.php?user_id=<?php echo $user_id; ?>" class="btn-danger">UPDATE</a>

        </div>
        
    </div>

    <div class="profile-menu-section" style="margin-top: 30px; width: 100%; max-width: 800px;">
        <h3 style="margin-bottom: 20px; color: #333;">My Upcoming Meals</h3>
        <div class="planner-grid">
            <?php
            $sql = "SELECT m.plannes_date, m.meal_type, r.title, r.id as rid 
                    FROM MENU m 
                    JOIN RECIPE r ON m.id_recipe = r.id 
                    WHERE m.id_user = ? AND m.plannes_date >= CURDATE()
                    ORDER BY m.plannes_date ASC LIMIT 3"; 
            
            $stmt = $conn->prepare($sql);
            $stmt->bind_param("i", $user_id);
            $stmt->execute();
            $result = $stmt->get_result();

            if ($result->num_rows > 0) {
                while($row = $result->fetch_assoc()) {
                    $date = date("D, M j", strtotime($row['plannes_date']));
                    ?>
                    <div class="recipe-card day-column" style="text-align: left;">
                        <span class="badge"><?php echo $row['meal_type']; ?></span>
                        <h4 style="margin: 5px 0;"><?php echo $date; ?></h4>
                        <p style="font-weight: bold; color: #ff6b6b;"><?php echo htmlspecialchars($row['title']); ?></p>
                        <a href="recipe_details.php?id=<?php echo $row['rid']; ?>" class="small-link">View Recipe</a>
                    </div>
                    <?php
                }
            } else {
                echo "<div class='recipe-card'><p>No meals planned for today. <a href='planner.php'>Plan now!</a></p></div>";
            }
            ?>
        </div>
    </div>
</div>

<?php include "actions/foot.php"; ?>