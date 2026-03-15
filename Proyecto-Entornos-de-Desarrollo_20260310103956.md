# Reporte de proyecto

## Estructura del proyecto

```
/home/sagman/projects/Proyecto-Entornos-de-Desarrollo
├── .gitignore
├── README.md
├── actions
│   ├── User_name.php
│   ├── connect_bd.php
│   ├── foot.php
│   └── head.php
├── admin
│   └── CRUD.php
├── assets
│   ├── apple_pie.jpg
│   ├── arrabiata.jpg
│   ├── avocado_toast.jpg
│   ├── beef_wellington.jpg
│   ├── burger.jpg
│   ├── carbonara.jpg
│   ├── chicken_tikka.jpg
│   ├── fish_tacos.jpg
│   ├── fondant.jpg
│   ├── fried_chicken.jpg
│   ├── greek_salad.jpg
│   ├── keto_salad.jpg
│   ├── lentil_soup.jpg
│   ├── macarons.jpg
│   ├── quinoa.jpg
│   ├── ribs.jpg
│   ├── scallops.jpg
│   ├── smoothie.jpg
│   ├── sourdough.jpg
│   └── stirfry.jpg
├── css
│   └── style.css
├── dosc
│   ├── Diagramas
│   │   ├── ER
│   │   │   ├── CRUD.png
│   │   │   ├── diagramaV0.2.json
│   │   │   ├── diagramaV0.3.json
│   │   │   ├── diagramav0.1.json
│   │   │   ├── index.png
│   │   │   ├── login.png
│   │   │   ├── profile.png
│   │   │   └── update.png
│   │   ├── Menu diagrama version 1.json
│   │   ├── Menu diagrama version 1.svg
│   │   ├── len
│   │   │   ├── diagrama (1).svg
│   │   │   └── image.png
│   │   ├── planner.png
│   │   └── recipe_details.png
│   ├── Proyecto-Entornos-de-Desarrollo_20260107114859.md
│   ├── What to Cook kit Generator
│   │   └── password_hash.php
│   ├── databases cod
│   │   ├── v0.1
│   │   │   ├── databases.sql
│   │   │   ├── insert for test.sql
│   │   │   ├── login.sql
│   │   │   └── mysql databases.sql
│   │   └── v0.2
│   │       ├── Create_View.sql
│   │       ├── Create_database.sql
│   │       ├── Create_user.sql
│   │       ├── insert_for_test.sql
│   │       └── recipe_seteps.sql
│   ├── envio_a_la_jocarsa.md
│   └── prepare_for_examen
│       ├── Lenguajes de marcas.md
│       ├── all_in_1.md
│       ├── base_de_daros.md
│       ├── images
│       │   ├── diagramas
│       │   │   ├── diagrama recipe_app.json
│       │   │   ├── diagrama.svg
│       │   │   ├── diagrama_paginas.png
│       │   │   └── diagrama_paginas.svg
│       │   └── recipe_app.png
│       ├── inter modular.md
│       ├── programacion.md
│       ├── programacion_trimestral.md
│       └── texto original en ruso.md
├── inc
│   ├── create_user.php
│   ├── login_user.php
│   ├── logout.php
│   └── update_informacio.php
├── index.php
├── login.php
├── planner.php
├── profile.php
├── recipe_details.php
├── register.php
└── update_user.php
```

## Código (intercalado)

# Proyecto-Entornos-de-Desarrollo
**README.md**
```markdown
# 🥗 App de Recetas y Planificador de Comidas

Una aplicación web full-stack desarrollada en PHP diseñada para ayudar a los usuarios a descubrir recetas, gestionar perfiles y organizar sus hábitos alimenticios semanales a través de un planificador interactivo.

## 📝 Descripción del Proyecto
Este proyecto es una herramienta integral para la gestión de cocina. Permite a los usuarios registrados explorar una colección de recetas, ver detalles de preparación y agendar sus comidas diarias (desayuno, almuerzo, cena o snacks) en un calendario personalizado.

## ✨ Características Principales
* **Autenticación de Usuarios:** Sistema de registro y login seguro con manejo de sesiones.
* **Planificador Semanal:** Interfaz para añadir recetas a fechas específicas y tipos de comida.
* **Detalles de Receta:** Visualización de ingredientes con cantidades, unidades e instrucciones paso a paso.
* **Panel de Usuario:** Perfil personalizado que muestra las próximas comidas programadas.
* **Catálogo Dinámico:** Página principal que carga automáticamente las recetas disponibles desde la base de datos.

## 🛠 Tecnologías Utilizadas
* **Backend:** PHP.
* **Base de Datos:** MySQL.
* **Frontend:** HTML5 y CSS3 con diseño de cuadrículas (Grid).
* **Servidor:** Compatible con entornos locales como XAMPP o WAMP.

## 🗄 Arquitectura de la Base de Datos
El proyecto utiliza una base de datos relacional llamada `recipe_app` con las siguientes tablas principales:
* `USER`: Almacena credenciales y datos de perfil.
* `RECIPE`: Contiene títulos, descripciones y rutas de imágenes de las recetas.
* `MENU`: Gestiona la lógica del planificador (relaciona usuario, receta y fecha).
* `INGREDIENT` y `RECIPE_INGREDIENT`: Maneja la relación de muchos a muchos entre platos y sus componentes.

## 🚀 Instalación y Configuración

1.  **Importar Base de Datos:**
    * Ejecuta el script `mysql databases.sql` en tu servidor MySQL para crear las tablas y el usuario de base de datos necesario.

2.  **Configuración de Conexión:**
    * Verifica que los ajustes en `connect_bd.php` coincidan con tu entorno local:
    ```php
    $host = "localhost";
    $user = "admin_recipe_app";
    $pass = "Login_system123$";
    $db   = "recipe_app";
    ```

3.  **Despliegue:**
    * Mueve los archivos al directorio raíz de tu servidor (ej. `/htdocs` en XAMPP).
    * Accede a la aplicación a través de `index.php`.

## 📂 Estructura del Proyecto
* `index.php`: Página de inicio con el catálogo de recetas

# 🥗 Recipe & Meal Planner App

A full-stack PHP web application designed to help users discover recipes, manage profiles, and organize their weekly eating habits through an interactive meal planner.

## 📝 Project Overview
This application serves as a comprehensive tool for home cooks. Users can browse a collection of recipes, view detailed preparation instructions, and schedule their meals for the week using a dedicated planning interface.

## ✨ Key Features
* **User Authentication:** Includes secure registration and login systems with session-based access control.
* **Weekly Meal Planner:** Allows users to assign specific recipes to a date and meal type (Breakfast, Lunch, Dinner, or Snack).
* **Recipe Details:** Displays specific ingredients, quantities, units, and step-by-step instructions for every dish.
* **User Dashboard:** A personalized profile page that highlights the user's upcoming scheduled meals.
* **Dynamic Discovery:** A homepage that automatically pulls and displays all available recipes from the database.

## 🛠 Tech Stack
* **Backend:** PHP.
* **Database:** MySQL.
* **Frontend:** HTML5 and CSS3 (utilizing a custom grid system).
* **Server:** Compatible with local stacks like XAMPP or WAMP.

## 🗄 Database Architecture
The project relies on a relational database named `recipe_app` consisting of several key tables:
* `USER`: Stores user credentials and profile data.
* `RECIPE`: Contains the title, description, and image paths for meals.
* `MENU`: Manages the meal planning logic (linking users, recipes, and dates).
* `INGREDIENT` & `RECIPE_INGREDIENT`: Handles the many-to-many relationship between recipes and their components.

## 🚀 Installation & Setup

1.  **Import Database:**
    * Execute the provided `mysql databases.sql` script in your MySQL environment to create the tables and the dedicated database user.

2.  **Configuration:**
    * Ensure your database connection settings in `connect_bd.php` match your local environment:
    ```php
    $host = "localhost";
    $user = "admin_recipe_app";
    $pass = "Login_system123$";
    $db   = "recipe_app";
    ```

3.  **Deployment:**
    * Move the project files to your server's root directory (e.g., `/htdocs`).
    * Access the application via `index.php`.

## 📂 Project Structure
* `index.php`: The main landing page displaying recipe cards.
* `planner.php`: The interface for adding and viewing planned meals.
* `profile.php`: The user account dashboard.
* `recipe_details.php`: Detailed view for individual recipes.
* `actions/`: Directory containing global includes like `head.php` and `foot.php`.
* `connect_bd.php`: Database connection logic.
```
**index.php**
```php
<?php include "actions/head.php"; ?>


<div class="recipe-grid"> <?php 
$sql = "SELECT * FROM recipes;";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
            echo '<div class="recipe-card">'; 
            echo '<div class="image-wrapper">'; 
            echo '<img src="' . $row['img'] . '" class="recipe-image">';
            echo '</div>';
            echo '<h3>' . $row['title'] . '</h3>';
            echo '<a href="recipe_details.php?id=' . $row['id'] . '" class="btn">View Full Recipe</a>';

echo '</div>';
    }
} else {
    echo "The table is empty.";
}
?>
</div>

<?php include "actions/foot.php"; ?>
```
**login.php**
```php
<?php require_once __DIR__ . '/inc/login_user.php'; ?>  
<form method="POST">
    <h2>login_system</h2>
    <input type="text" name="username" required placeholder="Username"><br><br>
    <input type="password" name="password" required placeholder="Password"><br>
    <small>Min. 8 characters + 1 number</small><br><br>
    <button name="login">Login</button>
</form>
```
**planner.php**
```php
<?php 
include "actions/head.php"; 

if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit();
}

$user_id = $_SESSION['user_id'];

// 1. Handle form submission to save to the menu table
if (isset($_POST['save_menu'])) {
    $date = $_POST['planned_date'];
    $recipe_id = $_POST['id_recipe'];
    $type = $_POST['meal_type'];
    
    $stmt = $conn->prepare("INSERT INTO menus (plannes_date, id_recipe, id_user, meal_type) VALUES (?, ?, ?, ?)");
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
                        $recipes = $conn->query("SELECT id, title FROM recipes");
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
    $sql = "SELECT plannes_date, meal_type, title, rid 
            FROM user_meal_plans 
            WHERE id_user = ? 
            ORDER BY plannes_date ASC";
            
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("i", $user_id);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            $formatted_date = date("l, M j", strtotime($row['plannes_date']));
            ?>
            <div class="recipe-card day-column">
                <span class="badge"><?php echo htmlspecialchars($row['meal_type']); ?></span>
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
```
**profile.php**
```php
<?php 
include "actions/head.php"; 

if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit();
}

$user_id = $_SESSION['user_id'];
?>

<div class="profile-container">
    <div class="profile-left">
        <div class="profile-card">
            <div class="profile-header">
                <div class="avatar-circle">
                    <?php 
                    echo isset($_SESSION['phone']) ? strtoupper(substr($_SESSION['phone'], 0, 1)) : "?"; 
                    ?>
                </div>
                <h2>User Profile</h2>
            </div>

            <div class="profile-info">
                <div class="info-group">
                    <div class="info-item">
                        <label>Username:</label>
                        <span><?php echo isset($_SESSION['username']) ? htmlspecialchars($_SESSION['username']) : "-"; ?></span>
                    </div>
                    <div class="info-item">
                        <label>Email:</label>
                        <span><?php echo isset($_SESSION['email']) ? htmlspecialchars($_SESSION['email']) : "-"; ?></span>
                    </div>
                    <div class="info-item">
                        <label>Phone:</label>
                        <span><?php echo isset($_SESSION['phone']) ? htmlspecialchars($_SESSION['phone']) : "-"; ?></span>
                    </div>
                </div>
            </div>

            <div class="profile-actions">
                <a href="planner.php" class="btn-secondary">Open Full Planner</a>
                <a href="update_user.php?user_id=<?php echo $user_id; ?>" class="btn-secondary">Update</a>
                <a href="inc/logout.php" class="btn-danger">Logout</a>
            </div>
        </div>
    </div>

    <div class="profile-right">
        <h3>My Upcoming Meals</h3>
        <div class="planner-grid">
            <?php
            $sql = "SELECT plannes_date, meal_type, title, rid 
                    FROM view_upcoming_meals 
                    WHERE id_user = ? 
                    ORDER BY plannes_date ASC 
                    LIMIT 3"; 
            
            $stmt = $conn->prepare($sql);
            $stmt->bind_param("i", $user_id);
            $stmt->execute();
            $result = $stmt->get_result();

            if ($result->num_rows > 0) {
                while($row = $result->fetch_assoc()) {
                    $date = date("D, M j", strtotime($row['plannes_date']));
                    ?>
                    <div class="recipe-card day-column">
                        <span class="badge"><?php echo htmlspecialchars($row['meal_type']); ?></span>
                        <h4><?php echo $date; ?></h4>
                        <p style="font-weight: bold; color: #ff6b6b;"><?php echo htmlspecialchars($row['title']); ?></p>
                        <a href="recipe_details.php?id=<?php echo $row['rid']; ?>" class="small-link">View Recipe</a>
                    </div>
                    <?php
                }
            } else {
                echo "<div class='recipe-card'><p>No meals planned. <a href='planner.php'>Plan now!</a></p></div>";
            }
            ?>
        </div>
    </div>
</div>

<?php include "actions/foot.php"; ?>
```
**recipe_details.php**
```php
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
```
**register.php**
```php
<?php require_once __DIR__ . '/inc/create_user.php'; ?>  
<form method="POST">
    <h2>Create user</h2>
    <input type="text" name="username" required placeholder="Username"><br><br>
        <input type="text" name="email" required placeholder="email"><br><br>
    <input type="text" name="phone" required placeholder="phine"><br><br>
    <input type="password" name="password" required placeholder="Password"><br>


    <small>Min. 8 characters + 1 number</small><br><br>
    <button name="login">Create</button>
</form>
```
**update_user.php**
```php

<?php


require_once __DIR__ . '/inc/update_informacio.php';

$user_id = $_GET['user_id'] ?? null;
if (!$user_id) {
    die("User ID missing");
}

$stmt = $conn->prepare("SELECT username, email, phone FROM `USER` WHERE id = ?");
$stmt->bind_param("i", $user_id);
$stmt->execute();

$result = $stmt->get_result();
$user = $result->fetch_assoc();

if (!$user) {
    die("User not found");
}
?>
<form method="POST">
    <h2>Update user</h2>

    <input type="text" name="username" required
        value="<?php echo htmlspecialchars($user['username']); ?>"
        placeholder="Username"><br><br>

    <input type="email" name="email" required
        value="<?php echo htmlspecialchars($user['email']); ?>"
        placeholder="Email"><br><br>

    <input type="text" name="phone" required
        value="<?php echo htmlspecialchars($user['phone']); ?>"
        placeholder="Phone"><br><br>

    <input type="password" name="password" placeholder="New Password"><br>
    <small>Leave empty to keep current password</small><br><br>

    <input type="hidden" name="user_id" value="<?php echo (int)$user_id; ?>">

    <button name="update">Update</button>
</form>
```
## actions
**User_name.php**
```php
<?php
require_once __DIR__ . '/connect_bd.php';

$sql = "SELECT username FROM user WHERE id = " . $_SESSION['user_id'];
$result = $conn->query($sql);

if ($result && $result->num_rows > 0) {
    $row = $result->fetch_assoc();
    echo $row['username'];
}


?>
```
**connect_bd.php**
```php
<?php
$host = "localhost";
$user = "admin_recipe_app";
$pass = "Login_system123$";
$db   = "recipe_app";

$conn = mysqli_connect($host, $user, $pass, $db);

if (!$conn) {
    die("Database connection failed: " . mysqli_connect_error());
}
?>


```
**foot.php**
```php
		</main>
  	<footer>
    </footer>
  </body>
</html>
```
**head.php**
```php
<?php
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}
require_once __DIR__ . '/connect_bd.php'; 
?>
<!doctype html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css?v=2">
    <title>Recipe App</title>
</head>
<body>
<div class="container">
    <nav>
        <div class="nav-links">
            <a href="index.php">Home</a>
            <?php if(isset($_SESSION['user_id'])): ?>
                <a href="profile.php">My Account</a>
                <a href="inc/logout.php" style="color: #666;">Logout</a>
            <?php else: ?>
                <a href="login.php">Login</a>
                <a href="register.php">Register</a>
            <?php endif; ?>
        </div>
    </nav>
    <main>
```
## admin
**CRUD.php**
```php
<link rel="stylesheet" href="../css/style.css">

<?php
require_once __DIR__ . '/../actions/connect_bd.php';

$table = $_REQUEST['table_name'] ?? 'USER';
$edit_id = $_GET['edit'] ?? null;
$row_to_edit = $edit_id ? $conn->query("SELECT * FROM $table WHERE id=$edit_id")->fetch_assoc() : null;

// Save Logic (Insert and Update)
if (isset($_POST['save'])) {
    $fields = $_POST['f'];
    $id = $_POST['id'] ?? null;

    if ($id) { // Update existing
        foreach ($fields as $col => $val) { $set[] = "$col='" . $conn->real_escape_string($val) . "'"; }
        $sql = "UPDATE $table SET " . implode(',', $set) . " WHERE id=$id";
    } else { // Insert new
        $cols = implode(",", array_keys($fields));
        $vals = "'" . implode("','", array_map([$conn, 'real_escape_string'], $fields)) . "'";
        $sql = "INSERT INTO $table ($cols) VALUES ($vals)";
    }
    $conn->query($sql);
    header("Location: ?table_name=$table"); 
}

//  Delete Logic
if (isset($_GET['delete'])) {
    $id = (int)$_GET['delete'];

    // Delete child records first
    $conn->query("DELETE FROM recipe_ingredient WHERE id_ingredient = $id");

    // Then delete parent record
    $conn->query("DELETE FROM ingredient WHERE id = $id");

    header("Location: ?table_name=$table");
}

?>

<form method="get">
    <select name="table_name" onchange="this.form.submit()">
        <option value="users" <?= $table=='user'?'selected':'' ?>>Users</option>
        <option value="ingredients" <?= $table=='ingredients'?'selected':'' ?>>Ingredients</option>
        <option value="menus" <?= $table=='menus'?'selected':'' ?>>Menu</option>
        <option value="recipes" <?= $table=='recipes'?'selected':'' ?>>recipe</option>
        <option value="recipe_ingredientes" <?= $table=='recipe_ingredientes'?'selected':'' ?>>recipe_ingredient</option>
        <option value="recipe_steps" <?= $table=='recipe_steps'?'selected':'' ?>>recipe_steps</option>      
    </select>
</form>

<hr>

<form method="post">
    <input type="hidden" name="table_name" value="<?= $table ?>">
    <?php if($edit_id): ?> <input type="hidden" name="id" value="<?= $edit_id ?>"> <?php endif; ?>
    
    <?php
    $res = $conn->query("DESCRIBE $table");
    while($col = $res->fetch_assoc()): 
        if($col['Extra'] == 'auto_increment') continue;
        $name = $col['Field'];
    ?>
        <label><?= $name ?>:</label>
        <input type="text" name="f[<?= $name ?>]" value="<?= $row_to_edit[$name] ?? '' ?>" required><br>
    <?php endwhile; ?>
    <button type="submit" name="save">SAVE RECORD</button>
</form>

<hr>

<table class="crud-table">
    <?php $data = $conn->query("SELECT * FROM $table"); while($row = $data->fetch_assoc()): ?>
    <tr>
        <?php foreach($row as $v) echo "<td>$v</td>"; ?>
        <td class="actions">
            <a class="btn-edit" href="?table_name=<?= $table ?>&edit=<?= $row['id'] ?>">Edit</a>
            <a class="btn-delete" href="?table_name=<?= $table ?>&delete=<?= $row['id'] ?>" onclick="return confirm('Delete?')">Del</a>
        </td>
    </tr>
    <?php endwhile; ?>
</table>

```
## assets
## css
**style.css**
```css
/* =========================================
   1. GENERAL RESET & BASE STYLES
   ========================================= */
* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

body {
    background-color: #f9fbf9;
    color: #333;
    line-height: 1.6;
    padding: 20px;
}

.container {
    max-width: 900px;
    margin: 0 auto;
}

/* =========================================
   2. NAVIGATION BAR
   ========================================= */
nav {
    background: #fff;
    padding: 1rem;
    border-radius: 8px;
    box-shadow: 0 2px 5px rgba(0,0,0,0.05);
    margin-bottom: 20px;
    display: flex;
    justify-content: space-between;
    align-items: center;
}

nav a {
    text-decoration: none;
    color: #ff6b6b;
    font-weight: bold;
    margin-right: 15px;
}

/* =========================================
   3. RECIPE GRID & CARDS (Home Page)
   ========================================= */
.recipe-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
    gap: 20px;
}

.recipe-card {
    background: #fff;
    border-radius: 12px;
    padding: 20px;
    box-shadow: 0 4px 6px rgba(0,0,0,0.1);
    display: flex;
    flex-direction: column;
    height: 100%;
    min-width: 0; 
    width: 100%;
    transition: transform 0.2s ease;
}

.recipe-card:hover {
    transform: translateY(-5px);
}

.recipe-image {
    width: 100%; 
    height: 200px;         
    object-fit: cover;     
    border-radius: 10px;
    margin-bottom: 15px;
    display: block;
    flex-shrink: 0;
}

.recipe-card h3 {
    margin-top: 15px;
    margin-bottom: 10px;
    color: #2d3436;
    word-wrap: break-word;
}

.recipe-card a.btn {
    margin-top: auto;
    align-self: flex-start;
    color: #fff;
    background: #ff6b6b;
    padding: 8px 16px;
    border-radius: 20px;
    text-decoration: none;
    font-size: 0.9rem;
}

/* =========================================
   4. FORMS (Login, Register, Update)
   ========================================= */
form {
    background: #fff;
    max-width: 400px;
    margin: 50px auto;
    padding: 30px;
    border-radius: 12px;
    box-shadow: 0 10px 25px rgba(0,0,0,0.1);
}

form h2 {
    margin-bottom: 20px;
    text-align: center;
    color: #ff6b6b;
}

input[type="text"], 
input[type="password"],
input[type="email"],
input[type="date"],
select {
    width: 100%;
    padding: 12px;
    margin-bottom: 15px;
    border: 1px solid #ddd;
    border-radius: 6px;
}

button {
    width: 100%;
    padding: 12px;
    background: #ff6b6b;
    border: none;
    color: white;
    font-size: 1rem;
    border-radius: 6px;
    cursor: pointer;
    font-weight: bold;
}

button:hover {
    background: #ee5253;
}

/* =========================================
   5. RECIPE DETAILS PAGE
   ========================================= */
.recipe-detail-header {
    border-bottom: 3px solid #ff6b6b;
    padding-bottom: 10px;
    margin-bottom: 20px;
}

ul {
    list-style-position: inside;
    background: #fff;
    padding: 15px;
    border-radius: 8px;
    margin-bottom: 20px;
}

.instructions-box {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    border-left: 5px solid #ff6b6b;
}

/* =========================================
   6. USER PROFILE
   ========================================= */
/* Container as flex row */
.profile-container {
    display: flex;
    gap: 30px;
    justify-content: center;
    align-items: flex-start;
    padding: 50px 20px;
    flex-wrap: wrap; /* for mobile */
    background-color: #f5f5f5;
}

/* Left column */
.profile-left {
    flex: 1 1 300px; /* grow, shrink, base width */
    max-width: 400px;
}

/* Right column */
.profile-right {
    flex: 2 1 400px; /* bigger column */
    max-width: 800px;
}

/* Profile card */
.profile-card {
    background: #fff;
    border-radius: 12px;
    padding: 30px 20px;
    box-shadow: 0 4px 15px rgba(0,0,0,0.1);
}

/* Avatar circle */
.avatar-circle {
    width: 70px;
    height: 70px;
    background-color: #ff6b6b;
    color: white;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 1.8rem;
    font-weight: bold;
    margin: 0 auto 15px;
}

/* Profile actions */
.profile-actions {
    display: flex;
    gap: 10px;
    flex-wrap: wrap;
    justify-content: center;
    margin-top: 20px;
}

.profile-actions a {
    padding: 10px 20px;
    border-radius: 8px;
    text-align: center;
    font-weight: 600;
    text-decoration: none;
}

.btn-secondary { background-color: #6c757d; color: #fff; }
.btn-secondary:hover { background-color: #5a6268; }
.btn-danger { background-color: #ff6b6b; color: #fff; }
.btn-danger:hover { background-color: #e55b5b; }

/* Planner grid (right column) */
.planner-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
    gap: 20px;
}

.recipe-card.day-column {
    background: #fff;
    border-radius: 12px;
    padding: 15px;
    box-shadow: 0 4px 10px rgba(0,0,0,0.05);
}

.recipe-card .badge {
    background-color: #ff6b6b;
    color: #fff;
    font-size: 0.75rem;
    padding: 2px 8px;
    border-radius: 6px;
}

/* =========================================
   7. MEAL PLANNER STYLES
   ========================================= */
.planner-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
    gap: 15px;
    width: 100%;
}

.badge {
    display: inline-block;
    background: #ffeaa7;
    color: #d35400;
    padding: 2px 8px;
    border-radius: 4px;
    font-size: 0.75rem;
    font-weight: bold;
    margin-bottom: 8px;
    width: fit-content;
}

.small-link {
    font-size: 0.8rem;
    color: #ff6b6b;
    text-decoration: none;
    font-weight: bold;
}

/* =========================================
   8. CRUD TABLE & ADMIN
   ========================================= */
.crud-table {
    width: 100%;
    border-collapse: collapse;
    background: #fff;
    border-radius: 12px;
    overflow: hidden;
    box-shadow: 0 10px 25px rgba(0,0,0,0.08);
    margin: 30px auto;
}

.crud-table th {
    background: #ff6b6b;
    color: #fff;
    text-align: left;
    padding: 14px;
    font-weight: bold;
}

.crud-table td {
    padding: 14px;
    border-bottom: 1px solid #f0f0f0;
    font-size: 0.9rem;
    vertical-align: middle;
}

.crud-table tr:nth-child(even) { background-color: #fafafa; }
.crud-table tr:hover { background-color: #fff1f1; }

.crud-table .actions {
    display: flex;
    gap: 8px;
}

/* =========================================
   9. SHARED BUTTON VARIANTS
   ========================================= */
.btn-secondary { background: #eee; color: #333; text-align: center; }
.btn-danger { background: #ff6b6b; color: white; text-align: center; }

.btn-edit { background: #eee; color: #333; }
.btn-delete { background: #ff6b6b; color: #fff; }

.btn-secondary:hover, .btn-edit:hover { background: #ddd; }
.btn-danger:hover, .btn-delete:hover { background: #ee5253; }
```
## dosc
**Proyecto-Entornos-de-Desarrollo_20260107114859.md**
```markdown
# Reporte de proyecto

## Estructura del proyecto

```
C:\Proyecto-Entornos-de-Desarrollo
├── .gitignore
├── README.md
├── actions
│   ├── User_name.php
│   ├── connect_bd.php
│   ├── foot.php
│   └── head.php
├── assets
│   ├── apple_pie.jpg
│   ├── arrabiata.jpg
│   ├── avocado_toast.jpg
│   ├── beef_wellington.jpg
│   ├── burger.jpg
│   ├── carbonara.jpg
│   ├── chicken_tikka.jpg
│   ├── fish_tacos.jpg
│   ├── fondant.jpg
│   ├── fried_chicken.jpg
│   ├── greek_salad.jpg
│   ├── keto_salad.jpg
│   ├── lentil_soup.jpg
│   ├── macarons.jpg
│   ├── quinoa.jpg
│   ├── ribs.jpg
│   ├── scallops.jpg
│   ├── smoothie.jpg
│   ├── sourdough.jpg
│   └── stirfry.jpg
├── css
│   └── style.css
├── dosc
│   ├── Admin password
│   │   └── user.md
│   ├── Diagramas
│   │   ├── ER
│   │   │   ├── diagramaV0.2.json
│   │   │   ├── diagramaV0.3.json
│   │   │   └── diagramav0.1.json
│   │   ├── Menu diagrama version 1.json
│   │   └── Menu diagrama version 1.svg
│   ├── What to Cook kit Generator
│   │   └── password_hash.php
│   └── databases cod
│       ├── insert for test.sql
│       └── login.sql
├── inc
│   ├── create_user.php
│   ├── login_user.php
│   └── logout.php
├── index.php
├── login.php
├── mysql databases.sql
├── planner.php
├── profile.php
├── recipe_details.php
├── register.php
└── versiones
    ├── v0.0
    │   ├── back
    │   │   ├── inc
    │   │   │   └── connect_bd.php
    │   │   └── login_system
    │   │       ├── create_user.php
    │   │       └── login_user.php
    │   ├── front
    │   │   ├── css
    │   │   │   └── style.css
    │   │   ├── inc
    │   │   │   ├── foot.php
    │   │   │   ├── head.php
    │   │   │   └── logout.php
    │   │   ├── index.php
    │   │   ├── login.php
    │   │   ├── profile.php
    │   │   └── register.php
    │   └── test
    │       ├── create_user.php
    │       ├── login copy.php
    │       ├── login.php
    │       └── login1.php
    ├── v0.1 another structure
    │   ├── actions
    │   │   ├── User_name.php
    │   │   ├── connect_bd.php
    │   │   ├── foot.php
    │   │   └── head.php
    │   ├── inc
    │   │   ├── create_user.php
    │   │   ├── login_user.php
    │   │   └── logout.php
    │   ├── index.php
    │   ├── login.php
    │   ├── profile.php
    │   └── register.php
    ├── v0.2 create write mysql databases
    │   ├── actions
    │   │   ├── User_name.php
    │   │   ├── connect_bd.php
    │   │   ├── foot.php
    │   │   └── head.php
    │   ├── inc
    │   │   ├── create_user.php
    │   │   ├── login_user.php
    │   │   └── logout.php
    │   ├── index.php
    │   ├── login.php
    │   ├── mysql databases.sql
    │   ├── profile.php
    │   └── register.php
    ├── v0.3
    │   ├── actions
    │   │   ├── User_name.php
    │   │   ├── connect_bd.php
    │   │   ├── foot.php
    │   │   └── head.php
    │   ├── inc
    │   │   ├── create_user.php
    │   │   ├── login_user.php
    │   │   └── logout.php
    │   ├── index.php
    │   ├── login.php
    │   ├── mysql databases.sql
    │   ├── profile.php
    │   ├── recipe_details.php
    │   └── register.php
    ├── v0.4 style
    │   ├── actions
    │   │   ├── User_name.php
    │   │   ├── connect_bd.php
    │   │   ├── foot.php
    │   │   └── head.php
    │   ├── css
    │   │   └── style.css
    │   ├── inc
    │   │   ├── create_user.php
    │   │   ├── login_user.php
    │   │   └── logout.php
    │   ├── index.php
    │   ├── login.php
    │   ├── mysql databases.sql
    │   ├── planner.php
    │   ├── profile.php
    │   ├── recipe_details.php
    │   └── register.php
    └── v0.5
        ├── actions
        │   ├── User_name.php
        │   ├── connect_bd.php
        │   ├── foot.php
        │   └── head.php
        ├── assets
        │   ├── apple_pie.jpg
        │   ├── arrabiata.jpg
        │   ├── avocado_toast.jpg
        │   ├── beef_wellington.jpg
        │   ├── burger.jpg
        │   ├── carbonara.jpg
        │   ├── chicken_tikka.jpg
        │   ├── fish_tacos.jpg
        │   ├── fondant.jpg
        │   ├── fried_chicken.jpg
        │   ├── greek_salad.jpg
        │   ├── keto_salad.jpg
        │   ├── lentil_soup.jpg
        │   ├── macarons.jpg
        │   ├── quinoa.jpg
        │   ├── ribs.jpg
        │   ├── scallops.jpg
        │   ├── smoothie.jpg
        │   ├── sourdough.jpg
        │   └── stirfry.jpg
        ├── css
        │   └── style.css
        ├── inc
        │   ├── create_user.php
        │   ├── login_user.php
        │   └── logout.php
        ├── index.php
        ├── login.php
        ├── mysql databases.sql
        ├── planner.php
        ├── profile.php
        ├── recipe_details.php
        └── register.php
```

## Código (intercalado)

# Proyecto-Entornos-de-Desarrollo
**README.md**
```markdown
# 🥗 App de Recetas y Planificador de Comidas

Una aplicación web full-stack desarrollada en PHP diseñada para ayudar a los usuarios a descubrir recetas, gestionar perfiles y organizar sus hábitos alimenticios semanales a través de un planificador interactivo.

## 📝 Descripción del Proyecto
Este proyecto es una herramienta integral para la gestión de cocina. Permite a los usuarios registrados explorar una colección de recetas, ver detalles de preparación y agendar sus comidas diarias (desayuno, almuerzo, cena o snacks) en un calendario personalizado.

## ✨ Características Principales
* **Autenticación de Usuarios:** Sistema de registro y login seguro con manejo de sesiones.
* **Planificador Semanal:** Interfaz para añadir recetas a fechas específicas y tipos de comida.
* **Detalles de Receta:** Visualización de ingredientes con cantidades, unidades e instrucciones paso a paso.
* **Panel de Usuario:** Perfil personalizado que muestra las próximas comidas programadas.
* **Catálogo Dinámico:** Página principal que carga automáticamente las recetas disponibles desde la base de datos.

## 🛠 Tecnologías Utilizadas
* **Backend:** PHP.
* **Base de Datos:** MySQL.
* **Frontend:** HTML5 y CSS3 con diseño de cuadrículas (Grid).
* **Servidor:** Compatible con entornos locales como XAMPP o WAMP.

## 🗄 Arquitectura de la Base de Datos
El proyecto utiliza una base de datos relacional llamada `recipe_app` con las siguientes tablas principales:
* `USER`: Almacena credenciales y datos de perfil.
* `RECIPE`: Contiene títulos, descripciones y rutas de imágenes de las recetas.
* `MENU`: Gestiona la lógica del planificador (relaciona usuario, receta y fecha).
* `INGREDIENT` y `RECIPE_INGREDIENT`: Maneja la relación de muchos a muchos entre platos y sus componentes.

## 🚀 Instalación y Configuración

1.  **Importar Base de Datos:**
    * Ejecuta el script `mysql databases.sql` en tu servidor MySQL para crear las tablas y el usuario de base de datos necesario.

2.  **Configuración de Conexión:**
    * Verifica que los ajustes en `connect_bd.php` coincidan con tu entorno local:
    ```php
    $host = "localhost";
    $user = "admin_recipe_app";
    $pass = "Login_system123$";
    $db   = "recipe_app";
    ```

3.  **Despliegue:**
    * Mueve los archivos al directorio raíz de tu servidor (ej. `/htdocs` en XAMPP).
    * Accede a la aplicación a través de `index.php`.

## 📂 Estructura del Proyecto
* `index.php`: Página de inicio con el catálogo de recetas

# 🥗 Recipe & Meal Planner App

A full-stack PHP web application designed to help users discover recipes, manage profiles, and organize their weekly eating habits through an interactive meal planner.

## 📝 Project Overview
This application serves as a comprehensive tool for home cooks. Users can browse a collection of recipes, view detailed preparation instructions, and schedule their meals for the week using a dedicated planning interface.

## ✨ Key Features
* **User Authentication:** Includes secure registration and login systems with session-based access control.
* **Weekly Meal Planner:** Allows users to assign specific recipes to a date and meal type (Breakfast, Lunch, Dinner, or Snack).
* **Recipe Details:** Displays specific ingredients, quantities, units, and step-by-step instructions for every dish.
* **User Dashboard:** A personalized profile page that highlights the user's upcoming scheduled meals.
* **Dynamic Discovery:** A homepage that automatically pulls and displays all available recipes from the database.

## 🛠 Tech Stack
* **Backend:** PHP.
* **Database:** MySQL.
* **Frontend:** HTML5 and CSS3 (utilizing a custom grid system).
* **Server:** Compatible with local stacks like XAMPP or WAMP.

## 🗄 Database Architecture
The project relies on a relational database named `recipe_app` consisting of several key tables:
* `USER`: Stores user credentials and profile data.
* `RECIPE`: Contains the title, description, and image paths for meals.
* `MENU`: Manages the meal planning logic (linking users, recipes, and dates).
* `INGREDIENT` & `RECIPE_INGREDIENT`: Handles the many-to-many relationship between recipes and their components.

## 🚀 Installation & Setup

1.  **Import Database:**
    * Execute the provided `mysql databases.sql` script in your MySQL environment to create the tables and the dedicated database user.

2.  **Configuration:**
    * Ensure your database connection settings in `connect_bd.php` match your local environment:
    ```php
    $host = "localhost";
    $user = "admin_recipe_app";
    $pass = "Login_system123$";
    $db   = "recipe_app";
    ```

3.  **Deployment:**
    * Move the project files to your server's root directory (e.g., `/htdocs`).
    * Access the application via `index.php`.

## 📂 Project Structure
* `index.php`: The main landing page displaying recipe cards.
* `planner.php`: The interface for adding and viewing planned meals.
* `profile.php`: The user account dashboard.
* `recipe_details.php`: Detailed view for individual recipes.
* `actions/`: Directory containing global includes like `head.php` and `foot.php`.
* `connect_bd.php`: Database connection logic.
```
**index.php**
```php
<?php include "actions/head.php"; ?>


<div class="recipe-grid"> <?php 
$sql = "SELECT * FROM RECIPE;";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
            echo '<div class="recipe-card">'; 
            echo '<div class="image-wrapper">'; 
            echo '<img src="' . $row['img'] . '" class="recipe-image">';
            echo '</div>';
            echo '<h3>' . $row['title'] . '</h3>';
            echo '<a href="...">View Full Recipe</a>';
echo '</div>';
    }
} else {
    echo "The table is empty.";
}
?>
</div>

<?php include "actions/foot.php"; ?>
```
**login.php**
```php
<?php require_once __DIR__ . '/inc/login_user.php'; ?>  
<form method="POST">
    <h2>login_system</h2>
    <input type="text" name="username" required placeholder="Username"><br><br>
    <input type="password" name="password" required placeholder="Password"><br>
    <small>Min. 8 characters + 1 number</small><br><br>
    <button name="login">Login</button>
</form>
```
**mysql databases.sql**
```sql
CREATE DATABASE IF NOT EXISTS recipe_app;
USE recipe_app;

-- 1. USER Table
CREATE TABLE USER (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255),
    phone VARCHAR(20),
    username VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL
);

-- 2. RECIPE Table
CREATE TABLE RECIPE (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_user INT,
    title VARCHAR(100) NOT NULL,
    prep_time VARCHAR(50),
    description TEXT,
    img VARCHAR(255),
    serving INT,
    FOREIGN KEY (id_user) REFERENCES USER(id) ON DELETE SET NULL
);

-- 3. INGREDIENT Table
CREATE TABLE INGREDIENT (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    calories INT,
    type VARCHAR(50)
);

-- 4. POST Table
CREATE TABLE POST (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_recipe INT,
    id_user INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    caption TEXT,
    image_url VARCHAR(255),
    FOREIGN KEY (id_recipe) REFERENCES RECIPE(id) ON DELETE CASCADE,
    FOREIGN KEY (id_user) REFERENCES USER(id) ON DELETE CASCADE
);

-- 5. REVIEWS Table
CREATE TABLE REVIEWS (
    id INT AUTO_INCREMENT PRIMARY KEY,
    likes INT DEFAULT 0,
    comment TEXT,
    id_recipe INT,
    id_user INT,
    rating INT,
    FOREIGN KEY (id_recipe) REFERENCES RECIPE(id) ON DELETE CASCADE,
    FOREIGN KEY (id_user) REFERENCES USER(id) ON DELETE CASCADE
);

-- 6. MENU Table
CREATE TABLE MENU (
    id INT AUTO_INCREMENT PRIMARY KEY,
    plannes_date DATE,
    id_recipe INT,
    id_user INT,
    meal_type VARCHAR(50),
    FOREIGN KEY (id_recipe) REFERENCES RECIPE(id) ON DELETE CASCADE,
    FOREIGN KEY (id_user) REFERENCES USER(id) ON DELETE CASCADE
);

-- 7. HISTORY Table
CREATE TABLE HISTORY (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_recipe INT,
    date_time DATETIME DEFAULT CURRENT_TIMESTAMP,
    id_user INT,
    action_type VARCHAR(50),
    FOREIGN KEY (id_recipe) REFERENCES RECIPE(id) ON DELETE SET NULL,
    FOREIGN KEY (id_user) REFERENCES USER(id) ON DELETE CASCADE
);

-- 8. RECIPE_INGREDIENT (Many-to-Many Bridge Table)
CREATE TABLE RECIPE_INGREDIENT (
    id_recipe INT,
    id_ingredient INT,
    amount DECIMAL(10, 2),
    unit VARCHAR(20),
    atributo VARCHAR(50),
    PRIMARY KEY (id_recipe, id_ingredient),
    FOREIGN KEY (id_recipe) REFERENCES RECIPE(id) ON DELETE CASCADE,
    FOREIGN KEY (id_ingredient) REFERENCES INGREDIENT(id) ON DELETE CASCADE
);


-- 1. Create the user with the credentials from your PHP $user and $pass
CREATE USER 'admin_recipe_app'@'localhost' 
IDENTIFIED BY 'Login_system123$';

-- 2. Initial usage grant
GRANT USAGE ON *.* TO 'admin_recipe_app'@'localhost';

-- 3. Set resource limits (keeping your original requirements)
ALTER USER 'admin_recipe_app'@'localhost' 
REQUIRE NONE 
WITH MAX_QUERIES_PER_HOUR 0 
MAX_CONNECTIONS_PER_HOUR 0 
MAX_UPDATES_PER_HOUR 0 
MAX_USER_CONNECTIONS 0;

-- 4. Grant privileges specifically to the 'recipe_app' database
-- This matches your PHP $db variable
GRANT ALL PRIVILEGES ON recipe_app.* TO 'admin_recipe_app'@'localhost';

-- 5. Apply changes
FLUSH PRIVILEGES;
```
**planner.php**
```php
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
    
    $stmt = $conn->prepare("INSERT INTO  (plannes_date, id_recipe, id_user, meal_type) VALUES (?, MENU?, ?, ?)");
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
        // Fetch last 7 days of plans
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
```
**profile.php**
```php
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
                <?php echo strtoupper(substr($_SESSION['username'], 0, 1)); ?>
            </div>
            <h2>User Profile</h2>
        </div>
        <div class="profile-info">
            <div class="info-group">
                <label>Username:</label>
                <span><?php echo htmlspecialchars($_SESSION['username']); ?></span>
            </div>
        </div>
        <div class="profile-actions">
            <a href="planner.php" class="btn-secondary">Open Full Planner</a>
            <a href="inc/logout.php" class="btn-danger">Logout</a>
        </div>
    </div>

    <div class="profile-menu-section" style="margin-top: 30px; width: 100%; max-width: 800px;">
        <h3 style="margin-bottom: 20px; color: #333;">My Upcoming Meals</h3>
        <div class="planner-grid">
            <?php
            // Выбираем меню только для текущего пользователя на сегодня и будущие даты
            $sql = "SELECT m.plannes_date, m.meal_type, r.title, r.id as rid 
                    FROM MENU m 
                    JOIN RECIPE r ON m.id_recipe = r.id 
                    WHERE m.id_user = ? AND m.plannes_date >= CURDATE()
                    ORDER BY m.plannes_date ASC LIMIT 3"; // Показываем только ближайшие 3 приема пищи
            
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
```
**recipe_details.php**
```php
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

```
**register.php**
```php
<?php require_once __DIR__ . '/inc/create_user.php'; ?>  
<form method="POST">
    <h2>Create user</h2>
    <input type="text" name="username" required placeholder="Username"><br><br>
    <input type="password" name="password" required placeholder="Password"><br>
    <small>Min. 8 characters + 1 number</small><br><br>
    <button name="login">Create</button>
</form>
```
## actions
**User_name.php**
```php
<?php
require_once __DIR__ . '/connect_bd.php';

$sql = "SELECT username FROM user WHERE id = " . $_SESSION['user_id'];
$result = $conn->query($sql);

if ($result && $result->num_rows > 0) {
    $row = $result->fetch_assoc();
    echo $row['username'];
}


?>
```
**connect_bd.php**
```php
<?php
$host = "localhost";
$user = "admin_recipe_app";
$pass = "Login_system123$";
$db   = "recipe_app";

$conn = mysqli_connect($host, $user, $pass, $db);

if (!$conn) {
    die("Database connection failed: " . mysqli_connect_error());
}
?>


```
**foot.php**
```php
		</main>
  	<footer>
    </footer>
  </body>
</html>
```
**head.php**
```php
<?php
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}
require_once __DIR__ . '/connect_bd.php'; 
?>
<!doctype html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css?v=2">
    <title>Recipe App</title>
</head>
<body>
<div class="container">
    <nav>
        <div class="nav-links">
            <a href="index.php">Home</a>
            <?php if(isset($_SESSION['user_id'])): ?>
                <a href="profile.php">My Account</a>
                <a href="inc/logout.php" style="color: #666;">Logout</a>
            <?php else: ?>
                <a href="login.php">Login</a>
                <a href="register.php">Register</a>
            <?php endif; ?>
        </div>
    </nav>
    <main>
```
## assets
## css
**style.css**
```css
/* General Reset */
* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

body {
    background-color: #f9fbf9;
    color: #333;
    line-height: 1.6;
    padding: 20px;
}

/* Container for all content */
.container {
    max-width: 900px;
    margin: 0 auto;
}

/* Navigation & Header */
nav {
    background: #fff;
    padding: 1rem;
    border-radius: 8px;
    box-shadow: 0 2px 5px rgba(0,0,0,0.05);
    margin-bottom: 20px;
    display: flex;
    justify-content: space-between;
    align-items: center;
}

nav a {
    text-decoration: none;
    color: #ff6b6b;
    font-weight: bold;
    margin-right: 15px;
}

.recipe-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
    gap: 20px;
}

.recipe-card {
    background: #fff;
    border-radius: 12px;
    padding: 20px;
    box-shadow: 0 4px 6px rgba(0,0,0,0.1);
    display: flex;
    flex-direction: column;
    height: 100%;
    /* This ensures the card doesn't grow wider than the grid column */
    min-width: 0; 
    width: 100%;
}

.recipe-image {
    width: calc(100%); 
    height: 200px;         
    object-fit: cover;     
    border-radius: 10px;
    margin-bottom: 15px;
    display: block;
    flex-shrink: 0;
    max-width: 100%;
    box-sizing: border-box;
}

.recipe-card:hover {
    transform: translateY(-5px);
}

.recipe-card h3 {
    margin-top: 15px;
    margin-bottom: 10px;
    color: #2d3436;
    word-wrap: break-word;
}

.recipe-card a {
    margin-top: auto;
    align-self: flex-start;
    color: #fff;
    background: #ff6b6b;
    padding: 8px 16px;
    border-radius: 20px;
    text-decoration: none;
    font-size: 0.9rem;
}





/* Form Styling (Login/Register) */
form {
    background: #fff;
    max-width: 400px;
    margin: 50px auto;
    padding: 30px;
    border-radius: 12px;
    box-shadow: 0 10px 25px rgba(0,0,0,0.1);
}

form h2 {
    margin-bottom: 20px;
    text-align: center;
    color: #ff6b6b;
}

input[type="text"], 
input[type="password"] {
    width: 100%;
    padding: 12px;
    margin-bottom: 15px;
    border: 1px solid #ddd;
    border-radius: 6px;
}

button {
    width: 100%;
    padding: 12px;
    background: #ff6b6b;
    border: none;
    color: white;
    font-size: 1rem;
    border-radius: 6px;
    cursor: pointer;
    font-weight: bold;
}

button:hover {
    background: #ee5253;
}

/* Recipe Details Page */
.recipe-detail-header {
    border-bottom: 3px solid #ff6b6b;
    padding-bottom: 10px;
    margin-bottom: 20px;
}

ul {
    list-style-position: inside;
    background: #fff;
    padding: 15px;
    border-radius: 8px;
    margin-bottom: 20px;
}

.instructions-box {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    border-left: 5px solid #ff6b6b;
}

/* Profile Layout */
.profile-container {
    display: flex;
    justify-content: center;
    padding-top: 50px;
}

.profile-card {
    width: 100%;
    max-width: 400px;
    text-align: center;
    background: #fff;
    border-radius: 12px;
    padding: 30px;
    box-shadow: 0 4px 15px rgba(0,0,0,0.1);
}

/* Initial Avatar */
.avatar-circle {
    width: 70px;
    height: 70px;
    background-color: #ff6b6b;
    color: white;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 1.8rem;
    font-weight: bold;
    margin: 0 auto 15px;
}

.profile-info {
    text-align: left;
    background: #fdfdfd;
    padding: 15px;
    border: 1px solid #eee;
    border-radius: 8px;
    margin: 20px 0;
}

.info-group {
    display: flex;
    justify-content: space-between;
    margin-bottom: 10px;
    border-bottom: 1px solid #f0f0f0;
    padding-bottom: 5px;
}

/* Buttons */
.profile-actions {
    display: flex;
    gap: 10px;
}

.btn-secondary, .btn-danger {
    flex: 1;
    padding: 10px;
    border-radius: 6px;
    text-decoration: none;
    font-size: 0.9rem;
    font-weight: bold;
}

.btn-secondary { background: #eee; color: #333; }
.btn-danger { background: #ff6b6b; color: white; }
```
## dosc
### Admin password
**user.md**
```markdown
adminbohdan1 y9jQWSDa1a2a3
```
### Diagramas
**Menu diagrama version 1.json**
```json
{
  "formas": [
    {
      "id": "forma-1",
      "tipo": "rectangle",
      "left": "295px",
      "top": "74.2px",
      "width": "",
      "height": "",
      "texto": "USER"
    },
    {
      "id": "forma-2",
      "tipo": "rectangle",
      "left": "990px",
      "top": "85.2px",
      "width": "",
      "height": "",
      "texto": "ADMIN"
    },
    {
      "id": "forma-3",
      "tipo": "rectangle",
      "left": "988px",
      "top": "278.2px",
      "width": "",
      "height": "",
      "texto": "PAGE"
    },
    {
      "id": "forma-4",
      "tipo": "rectangle",
      "left": "623px",
      "top": "106.2px",
      "width": "",
      "height": "",
      "texto": "LOGIN"
    },
    {
      "id": "forma-5",
      "tipo": "rectangle",
      "left": "619px",
      "top": "189.2px",
      "width": "",
      "height": "",
      "texto": "POST "
    },
    {
      "id": "forma-8",
      "tipo": "rectangle",
      "left": "246px",
      "top": "381.2px",
      "width": "",
      "height": "",
      "texto": "FILTER?"
    },
    {
      "id": "forma-9",
      "tipo": "rectangle",
      "left": "626px",
      "top": "45.2px",
      "width": "",
      "height": "",
      "texto": "HISTORY?"
    },
    {
      "id": "forma-10",
      "tipo": "rectangle",
      "left": "397px",
      "top": "278.2px",
      "width": "",
      "height": "",
      "texto": "MENU"
    },
    {
      "id": "forma-11",
      "tipo": "rectangle",
      "left": "742px",
      "top": "311.2px",
      "width": "",
      "height": "",
      "texto": "reviews"
    },
    {
      "id": "forma-12",
      "tipo": "rectangle",
      "left": "551px",
      "top": "300.2px",
      "width": "",
      "height": "",
      "texto": "Likes=aprove"
    }
  ],
  "flechas": [
    {
      "desde": {
        "shapeId": "forma-2",
        "propId": null,
        "side": null
      },
      "hasta": {
        "shapeId": "forma-4",
        "propId": null,
        "side": null
      },
      "tipo": "simple",
      "estilo": "straight"
    },
    {
      "desde": {
        "shapeId": "forma-2",
        "propId": null,
        "side": null
      },
      "hasta": {
        "shapeId": "forma-3",
        "propId": null,
        "side": null
      },
      "tipo": "simple",
      "estilo": "straight"
    },
    {
      "desde": {
        "shapeId": "forma-2",
        "propId": null,
        "side": null
      },
      "hasta": {
        "shapeId": "forma-5",
        "propId": null,
        "side": null
      },
      "tipo": "simple",
      "estilo": "straight"
    },
    {
      "desde": {
        "shapeId": "forma-1",
        "propId": null,
        "side": null
      },
      "hasta": {
        "shapeId": "forma-4",
        "propId": null,
        "side": null
      },
      "tipo": "simple",
      "estilo": "straight"
    },
    {
      "desde": {
        "shapeId": "forma-2",
        "propId": null,
        "side": null
      },
      "hasta": {
        "shapeId": "forma-9",
        "propId": null,
        "side": null
      },
      "tipo": "simple",
      "estilo": "straight"
    },
    {
      "desde": {
        "shapeId": "forma-1",
        "propId": null,
        "side": null
      },
      "hasta": {
        "shapeId": "forma-9",
        "propId": null,
        "side": null
      },
      "tipo": "simple",
      "estilo": "straight"
    },
    {
      "desde": {
        "shapeId": "forma-1",
        "propId": null,
        "side": null
      },
      "hasta": {
        "shapeId": "forma-5",
        "propId": null,
        "side": null
      },
      "tipo": "simple",
      "estilo": "straight"
    },
    {
      "desde": {
        "shapeId": "forma-1",
        "propId": null,
        "side": null
      },
      "hasta": {
        "shapeId": "forma-10",
        "propId": null,
        "side": null
      },
      "tipo": "simple",
      "estilo": "straight"
    },
    {
      "desde": {
        "shapeId": "forma-5",
        "propId": null,
        "side": null
      },
      "hasta": {
        "shapeId": "forma-10",
        "propId": null,
        "side": null
      },
      "tipo": "simple",
      "estilo": "straight"
    },
    {
      "desde": {
        "shapeId": "forma-1",
        "propId": null,
        "side": null
      },
      "hasta": {
        "shapeId": "forma-8",
        "propId": null,
        "side": null
      },
      "tipo": "simple",
      "estilo": "straight"
    },
    {
      "desde": {
        "shapeId": "forma-5",
        "propId": null,
        "side": null
      },
      "hasta": {
        "shapeId": "forma-3",
        "propId": null,
        "side": null
      },
      "tipo": "doble",
      "estilo": "ortho"
    },
    {
      "desde": {
        "shapeId": "forma-5",
        "propId": null,
        "side": null
      },
      "hasta": {
        "shapeId": "forma-3",
        "propId": null,
        "side": null
      },
      "tipo": "doble",
      "estilo": "straight"
    },
    {
      "desde": {
        "shapeId": "forma-1",
        "propId": null,
        "side": null
      },
      "hasta": {
        "shapeId": "forma-11",
        "propId": null,
        "side": null
      },
      "tipo": "simple",
      "estilo": "straight"
    },
    {
      "desde": {
        "shapeId": "forma-2",
        "propId": null,
        "side": null
      },
      "hasta": {
        "shapeId": "forma-11",
        "propId": null,
        "side": null
      },
      "tipo": "simple",
      "estilo": "straight"
    },
    {
      "desde": {
        "shapeId": "forma-5",
        "propId": null,
        "side": null
      },
      "hasta": {
        "shapeId": "forma-12",
        "propId": null,
        "side": null
      },
      "tipo": "simple",
      "estilo": "straight"
    },
    {
      "desde": {
        "shapeId": "forma-12",
        "propId": null,
        "side": null
      },
      "hasta": {
        "shapeId": "forma-8",
        "propId": null,
        "side": null
      },
      "tipo": "simple",
      "estilo": "straight"
    },
    {
      "desde": {
        "shapeId": "forma-5",
        "propId": null,
        "side": null
      },
      "hasta": {
        "shapeId": "forma-11",
        "propId": null,
        "side": null
      },
      "tipo": "simple",
      "estilo": "ortho"
    },
    {
      "desde": {
        "shapeId": "forma-5",
        "propId": null,
        "side": null
      },
      "hasta": {
        "shapeId": "forma-11",
        "propId": null,
        "side": null
      },
      "tipo": "simple",
      "estilo": "straight"
    },
    {
      "desde": {
        "shapeId": "forma-8",
        "propId": null,
        "side": null
      },
      "hasta": {
        "shapeId": "forma-10",
        "propId": null,
        "side": null
      },
      "tipo": "simple",
      "estilo": "ortho"
    },
    {
      "desde": {
        "shapeId": "forma-8",
        "propId": null,
        "side": null
      },
      "hasta": {
        "shapeId": "forma-10",
        "propId": null,
        "side": null
      },
      "tipo": "simple",
      "estilo": "ortho"
    },
    {
      "desde": {
        "shapeId": "forma-8",
        "propId": null,
        "side": null
      },
      "hasta": {
        "shapeId": "forma-10",
        "propId": null,
        "side": null
      },
      "tipo": "simple",
      "estilo": "ortho"
    },
    {
      "desde": {
        "shapeId": "forma-8",
        "propId": null,
        "side": null
      },
      "hasta": {
        "shapeId": "forma-10",
        "propId": null,
        "side": null
      },
      "tipo": "simple",
      "estilo": "straight"
    }
  ]
}
```
#### ER
**diagramaV0.2.json**
```json
{
  "formas": [
    {
      "id": "forma-1",
      "tipo": "entity",
      "left": "269.879px",
      "top": "23.5597px",
      "width": "",
      "height": "",
      "entityName": "USER",
      "properties": [
        {
          "id": "prop-1",
          "name": "id"
        },
        {
          "id": "prop-7",
          "name": "email(opcional)"
        },
        {
          "id": "prop-8",
          "name": "phone(opcional)"
        },
        {
          "id": "prop-9",
          "name": "username"
        },
        {
          "id": "prop-10",
          "name": "password"
        }
      ]
    },
    {
      "id": "forma-2",
      "tipo": "entity",
      "left": "259.775px",
      "top": "292.338px",
      "width": "",
      "height": "",
      "entityName": "POST",
      "properties": [
        {
          "id": "prop-2",
          "name": "id"
        },
        {
          "id": "prop-16",
          "name": "id_recipe"
        },
        {
          "id": "prop-17",
          "name": "id_user"
        },
        {
          "id": "prop-26",
          "name": "created_at"
        }
      ]
    },
    {
      "id": "forma-3",
      "tipo": "entity",
      "left": "434.138px",
      "top": "293.6px",
      "width": "",
      "height": "",
      "entityName": "MENU",
      "properties": [
        {
          "id": "prop-3",
          "name": "id"
        },
        {
          "id": "prop-11",
          "name": "date_time"
        },
        {
          "id": "prop-12",
          "name": "id_recipe"
        },
        {
          "id": "prop-27",
          "name": "id_user"
        }
      ]
    },
    {
      "id": "forma-5",
      "tipo": "entity",
      "left": "782.7px",
      "top": "279.412px",
      "width": "",
      "height": "",
      "entityName": "REVIEWS",
      "properties": [
        {
          "id": "prop-5",
          "name": "id"
        },
        {
          "id": "prop-20",
          "name": "likes"
        },
        {
          "id": "prop-21",
          "name": "comment"
        },
        {
          "id": "prop-22",
          "name": "id_recipe"
        },
        {
          "id": "prop-25",
          "name": "id_user"
        },
        {
          "id": "prop-42",
          "name": "rating"
        }
      ]
    },
    {
      "id": "forma-6",
      "tipo": "entity",
      "left": "604.338px",
      "top": "287.587px",
      "width": "",
      "height": "",
      "entityName": "HISTORY",
      "properties": [
        {
          "id": "prop-6",
          "name": "id"
        },
        {
          "id": "prop-18",
          "name": "id_recipe"
        },
        {
          "id": "prop-19",
          "name": "date_time"
        },
        {
          "id": "prop-23",
          "name": "id_user"
        },
        {
          "id": "prop-28",
          "name": "action_type"
        }
      ]
    },
    {
      "id": "forma-7",
      "tipo": "entity",
      "left": "847.213px",
      "top": "43.425px",
      "width": "",
      "height": "",
      "entityName": "INGREDIENT",
      "properties": [
        {
          "id": "prop-29",
          "name": "id"
        },
        {
          "id": "prop-30",
          "name": "name"
        },
        {
          "id": "prop-41",
          "name": "calories"
        }
      ]
    },
    {
      "id": "forma-8",
      "tipo": "entity",
      "left": "661.134px",
      "top": "37.1714px",
      "width": "",
      "height": "",
      "entityName": "RECIPE_INGREDIENT",
      "properties": [
        {
          "id": "prop-31",
          "name": "id_recipe "
        },
        {
          "id": "prop-32",
          "name": "id_ingredient "
        },
        {
          "id": "prop-33",
          "name": "quantity"
        },
        {
          "id": "prop-34",
          "name": "unit"
        },
        {
          "id": "prop-40",
          "name": "atributo"
        }
      ]
    },
    {
      "id": "forma-9",
      "tipo": "entity",
      "left": "461.15px",
      "top": "24.0161px",
      "width": "",
      "height": "",
      "entityName": "RECIPE",
      "properties": [
        {
          "id": "prop-35",
          "name": "id"
        },
        {
          "id": "prop-36",
          "name": "id_user "
        },
        {
          "id": "prop-37",
          "name": "title "
        },
        {
          "id": "prop-38",
          "name": "time_cooking"
        },
        {
          "id": "prop-39",
          "name": "description "
        },
        {
          "id": "prop-43",
          "name": ""
        }
      ]
    }
  ],
  "flechas": [
    {
      "desde": {
        "shapeId": "forma-1",
        "propId": "prop-1",
        "side": "right"
      },
      "hasta": {
        "shapeId": "forma-9",
        "propId": "prop-36",
        "side": "left"
      },
      "tipo": "simple",
      "estilo": "straight"
    },
    {
      "desde": {
        "shapeId": "forma-8",
        "propId": "prop-31",
        "side": "left"
      },
      "hasta": {
        "shapeId": "forma-9",
        "propId": "prop-35",
        "side": "right"
      },
      "tipo": "simple",
      "estilo": "straight"
    },
    {
      "desde": {
        "shapeId": "forma-8",
        "propId": "prop-32",
        "side": "right"
      },
      "hasta": {
        "shapeId": "forma-7",
        "propId": "prop-29",
        "side": "left"
      },
      "tipo": "simple",
      "estilo": "straight"
    },
    {
      "desde": {
        "shapeId": "forma-9",
        "propId": "prop-35",
        "side": "right"
      },
      "hasta": {
        "shapeId": "forma-6",
        "propId": "prop-18",
        "side": "left"
      },
      "tipo": "simple",
      "estilo": "straight"
    },
    {
      "desde": {
        "shapeId": "forma-1",
        "propId": "prop-1",
        "side": "right"
      },
      "hasta": {
        "shapeId": "forma-6",
        "propId": "prop-23",
        "side": "left"
      },
      "tipo": "simple",
      "estilo": "straight"
    },
    {
      "desde": {
        "shapeId": "forma-1",
        "propId": "prop-1",
        "side": "right"
      },
      "hasta": {
        "shapeId": "forma-5",
        "propId": "prop-25",
        "side": "right"
      },
      "tipo": "simple",
      "estilo": "straight"
    },
    {
      "desde": {
        "shapeId": "forma-9",
        "propId": "prop-35",
        "side": "right"
      },
      "hasta": {
        "shapeId": "forma-5",
        "propId": "prop-22",
        "side": "right"
      },
      "tipo": "simple",
      "estilo": "straight"
    },
    {
      "desde": {
        "shapeId": "forma-1",
        "propId": "prop-1",
        "side": "right"
      },
      "hasta": {
        "shapeId": "forma-3",
        "propId": "prop-27",
        "side": "left"
      },
      "tipo": "simple",
      "estilo": "straight"
    },
    {
      "desde": {
        "shapeId": "forma-9",
        "propId": "prop-35",
        "side": "right"
      },
      "hasta": {
        "shapeId": "forma-3",
        "propId": "prop-12",
        "side": "right"
      },
      "tipo": "simple",
      "estilo": "straight"
    },
    {
      "desde": {
        "shapeId": "forma-9",
        "propId": "prop-35",
        "side": "right"
      },
      "hasta": {
        "shapeId": "forma-2",
        "propId": "prop-16",
        "side": "left"
      },
      "tipo": "simple",
      "estilo": "straight"
    },
    {
      "desde": {
        "shapeId": "forma-1",
        "propId": "prop-1",
        "side": "right"
      },
      "hasta": {
        "shapeId": "forma-2",
        "propId": "prop-17",
        "side": "left"
      },
      "tipo": "simple",
      "estilo": "straight"
    }
  ]
}
```
**diagramaV0.3.json**
```json
{
  "formas": [
    {
      "id": "forma-1",
      "tipo": "entity",
      "left": "269.879px",
      "top": "23.5597px",
      "width": "",
      "height": "",
      "entityName": "USER",
      "properties": [
        {
          "id": "prop-1",
          "name": "id"
        },
        {
          "id": "prop-7",
          "name": "email(opcional)"
        },
        {
          "id": "prop-8",
          "name": "phone(opcional)"
        },
        {
          "id": "prop-9",
          "name": "username"
        },
        {
          "id": "prop-10",
          "name": "password"
        }
      ]
    },
    {
      "id": "forma-2",
      "tipo": "entity",
      "left": "640.103px",
      "top": "38.5556px",
      "width": "",
      "height": "",
      "entityName": "POST",
      "properties": [
        {
          "id": "prop-2",
          "name": "id"
        },
        {
          "id": "prop-16",
          "name": "id_recipe"
        },
        {
          "id": "prop-17",
          "name": "id_user"
        },
        {
          "id": "prop-26",
          "name": "created_at"
        },
        {
          "id": "prop-44",
          "name": "caption"
        },
        {
          "id": "prop-45",
          "name": "image_url"
        }
      ]
    },
    {
      "id": "forma-3",
      "tipo": "entity",
      "left": "1003.03px",
      "top": "47.4889px",
      "width": "",
      "height": "",
      "entityName": "MENU",
      "properties": [
        {
          "id": "prop-3",
          "name": "id"
        },
        {
          "id": "prop-11",
          "name": "plannes_date"
        },
        {
          "id": "prop-12",
          "name": "id_recipe"
        },
        {
          "id": "prop-27",
          "name": "id_user"
        },
        {
          "id": "prop-46",
          "name": "meal_type"
        }
      ]
    },
    {
      "id": "forma-5",
      "tipo": "entity",
      "left": "816.024px",
      "top": "43.6361px",
      "width": "",
      "height": "",
      "entityName": "REVIEWS",
      "properties": [
        {
          "id": "prop-5",
          "name": "id"
        },
        {
          "id": "prop-20",
          "name": "likes"
        },
        {
          "id": "prop-21",
          "name": "comment"
        },
        {
          "id": "prop-22",
          "name": "id_recipe"
        },
        {
          "id": "prop-25",
          "name": "id_user"
        },
        {
          "id": "prop-42",
          "name": "rating"
        }
      ]
    },
    {
      "id": "forma-6",
      "tipo": "entity",
      "left": "668.461px",
      "top": "417.267px",
      "width": "",
      "height": "",
      "entityName": "HISTORY",
      "properties": [
        {
          "id": "prop-6",
          "name": "id"
        },
        {
          "id": "prop-18",
          "name": "id_recipe"
        },
        {
          "id": "prop-19",
          "name": "date_time"
        },
        {
          "id": "prop-23",
          "name": "id_user"
        },
        {
          "id": "prop-28",
          "name": "action_type"
        }
      ]
    },
    {
      "id": "forma-7",
      "tipo": "entity",
      "left": "1186.09px",
      "top": "136.756px",
      "width": "",
      "height": "",
      "entityName": "INGREDIENT",
      "properties": [
        {
          "id": "prop-29",
          "name": "id"
        },
        {
          "id": "prop-30",
          "name": "name"
        },
        {
          "id": "prop-41",
          "name": "calories"
        },
        {
          "id": "prop-47",
          "name": "type"
        }
      ]
    },
    {
      "id": "forma-8",
      "tipo": "entity",
      "left": "1108.9px",
      "top": "406.051px",
      "width": "",
      "height": "",
      "entityName": "RECIPE_INGREDIENT",
      "properties": [
        {
          "id": "prop-31",
          "name": "id_recipe "
        },
        {
          "id": "prop-32",
          "name": "id_ingredient "
        },
        {
          "id": "prop-33",
          "name": "amount"
        },
        {
          "id": "prop-34",
          "name": "unit"
        },
        {
          "id": "prop-40",
          "name": ""
        }
      ]
    },
    {
      "id": "forma-9",
      "tipo": "entity",
      "left": "461.15px",
      "top": "24.0161px",
      "width": "",
      "height": "",
      "entityName": "RECIPE",
      "properties": [
        {
          "id": "prop-35",
          "name": "id"
        },
        {
          "id": "prop-36",
          "name": "id_user "
        },
        {
          "id": "prop-37",
          "name": "title "
        },
        {
          "id": "prop-38",
          "name": "prep_time"
        },
        {
          "id": "prop-39",
          "name": "description "
        },
        {
          "id": "prop-43",
          "name": "serving"
        }
      ]
    }
  ],
  "flechas": []
}
```
**diagramav0.1.json**
```json
{
  "formas": [
    {
      "id": "forma-1",
      "tipo": "entity",
      "left": "269.879px",
      "top": "23.5597px",
      "width": "",
      "height": "",
      "entityName": "USER",
      "properties": [
        {
          "id": "prop-1",
          "name": "id"
        },
        {
          "id": "prop-7",
          "name": "email(opcional)"
        },
        {
          "id": "prop-8",
          "name": "phone(opcional)"
        },
        {
          "id": "prop-9",
          "name": "username"
        },
        {
          "id": "prop-10",
          "name": "password"
        }
      ]
    },
    {
      "id": "forma-2",
      "tipo": "entity",
      "left": "1206.78px",
      "top": "36.3482px",
      "width": "",
      "height": "",
      "entityName": "POST",
      "properties": [
        {
          "id": "prop-2",
          "name": "id"
        },
        {
          "id": "prop-16",
          "name": "id_recipe"
        },
        {
          "id": "prop-17",
          "name": "id_user"
        },
        {
          "id": "prop-26",
          "name": "created_at"
        }
      ]
    },
    {
      "id": "forma-3",
      "tipo": "entity",
      "left": "474.139px",
      "top": "258.605px",
      "width": "",
      "height": "",
      "entityName": "MENU",
      "properties": [
        {
          "id": "prop-3",
          "name": "id"
        },
        {
          "id": "prop-11",
          "name": "date_time"
        },
        {
          "id": "prop-12",
          "name": "id_recipe"
        },
        {
          "id": "prop-27",
          "name": "id_user"
        }
      ]
    },
    {
      "id": "forma-5",
      "tipo": "entity",
      "left": "272.709px",
      "top": "251.432px",
      "width": "",
      "height": "",
      "entityName": "REVIEWS",
      "properties": [
        {
          "id": "prop-5",
          "name": "id"
        },
        {
          "id": "prop-20",
          "name": "likes"
        },
        {
          "id": "prop-21",
          "name": "comment"
        },
        {
          "id": "prop-22",
          "name": "id_recipe"
        },
        {
          "id": "prop-25",
          "name": "id_user"
        },
        {
          "id": "prop-42",
          "name": "rating"
        }
      ]
    },
    {
      "id": "forma-6",
      "tipo": "entity",
      "left": "1027.35px",
      "top": "40.6107px",
      "width": "",
      "height": "",
      "entityName": "HISTORY",
      "properties": [
        {
          "id": "prop-6",
          "name": "id"
        },
        {
          "id": "prop-18",
          "name": "id_recipe"
        },
        {
          "id": "prop-19",
          "name": "date_time"
        },
        {
          "id": "prop-23",
          "name": "id_user"
        },
        {
          "id": "prop-28",
          "name": "action_type"
        }
      ]
    },
    {
      "id": "forma-7",
      "tipo": "entity",
      "left": "847.213px",
      "top": "43.425px",
      "width": "",
      "height": "",
      "entityName": "INGREDIENT",
      "properties": [
        {
          "id": "prop-29",
          "name": "id"
        },
        {
          "id": "prop-30",
          "name": "name"
        },
        {
          "id": "prop-41",
          "name": "calories"
        }
      ]
    },
    {
      "id": "forma-8",
      "tipo": "entity",
      "left": "661.134px",
      "top": "37.1714px",
      "width": "",
      "height": "",
      "entityName": "RECIPE_INGREDIENT",
      "properties": [
        {
          "id": "prop-31",
          "name": "id_recipe "
        },
        {
          "id": "prop-32",
          "name": "id_ingredient "
        },
        {
          "id": "prop-33",
          "name": "quantity"
        },
        {
          "id": "prop-34",
          "name": "unit"
        },
        {
          "id": "prop-40",
          "name": "atributo"
        }
      ]
    },
    {
      "id": "forma-9",
      "tipo": "entity",
      "left": "461.15px",
      "top": "24.0161px",
      "width": "",
      "height": "",
      "entityName": "RECIPE",
      "properties": [
        {
          "id": "prop-35",
          "name": "id"
        },
        {
          "id": "prop-36",
          "name": "id_user "
        },
        {
          "id": "prop-37",
          "name": "title "
        },
        {
          "id": "prop-38",
          "name": "time_cooking"
        },
        {
          "id": "prop-39",
          "name": "description "
        }
      ]
    }
  ],
  "flechas": []
}
```
### What to Cook kit Generator
**password_hash.php**
```php
<?php
include "config.php";

$username = "alice";
$password = "mypassword123";

// Hash the password
$hashedPassword = password_hash($password, PASSWORD_DEFAULT);

// Save to database
$stmt = $conn->prepare("INSERT INTO users (username, password) VALUES (?, ?)");
$stmt->bind_param("ss", $username, $hashedPassword);
$stmt->execute();

echo "User saved safely!";
?>

```
### databases cod
**insert for test.sql**
```sql
SET FOREIGN_KEY_CHECKS = 0;

-- 1. USER (IDs 21-30)
INSERT INTO USER (id, email, phone, username, password) VALUES 
(NULL, 'will@bakery.com', '555-3001', 'WillWheat', '$2b$12$W1i2l3l4B5a6k7e8r9y0H1a2s3h4V5a6'),
(NULL, 'xenia@food.com', '555-3002', 'XeniaXo', '$2b$12$X1e2n3i4a5F6o7o8d9H1a2s3h4V5a6l7u8'),
(NULL, 'yusef@spice.com', '555-3003', 'YusefCooks', '$2b$12$Y1u2s3e4f5S6p7i8c9e0H1a2s3h4V5a6'),
(NULL, 'zara@zero.com', '555-3004', 'ZaraZeroWaste', '$2b$12$Z1a2r3a4Z5e6r7o8W9a0s1t2e3H4a5s6'),
(NULL, 'art@culinary.com', '555-3005', 'ArtisanArt', '$2b$12$A1r2t3i4s5a6n7H8a9s0h1v2a3l4u5e6'),
(NULL, 'bella@ciao.com', '555-3006', 'BellaPasta', '$2b$12$B1e2l3l4a5C6i7a8o9H1a2s3h4V5a6l7'),
(NULL, 'cris@fire.com', '555-3007', 'CrispyCris', '$2b$12$C1r2i3s4p5y6F7i8r9e0H1a2s3h4V5a6'),
(NULL, 'dan@diet.com', '555-3008', 'DanDiets', '$2b$12$D1a2n3D4i5e6t7s8H1a2s3h4V5a6l7u8'),
(NULL, 'eva@eat.com', '555-3009', 'EvaEats', '$2b$12$E1v2a3E4a5t6s7H8a9s0h1v2a3l4u5e6'),
(NULL, 'finn@fish.com', '555-3010', 'FinnishFish', '$2b$12$F1i2n3n4i5s6h7F8i9s0h1H2a3s4h5V6');

-- 2. RECIPE (IDs 21-30)
INSERT INTO RECIPE (id, id_user, title, prep_time, description, serving) VALUES 
(NULL, 21, 'Sourdough Bread', '24 hours', 'Traditional fermented crusty bread.', 1),
(NULL, 22, 'Greek Salad', '15 mins', 'Cucumber, olives, and feta cheese.', 2),
(NULL, 23, 'Lentil Soup', '40 mins', 'Hearty spiced red lentil soup.', 4),
(NULL, 24, 'Vegetable Stirfry', '10 mins', 'Zero-waste broccoli and carrot fry.', 2),
(NULL, 25, 'Beef Wellington', '2 hours', 'Premium beef wrapped in pastry.', 4),
(NULL, 26, 'Penne Arrabiata', '20 mins', 'Spicy tomato sauce pasta.', 2),
(NULL, 27, 'Fried Chicken', '30 mins', 'Extra crispy buttermilk chicken.', 4),
(NULL, 28, 'Keto Salad', '10 mins', 'High fat, low carb green salad.', 1),
(NULL, 29, 'Apple Pie', '1.5 hours', 'Classic cinnamon apple filling.', 8),
(NULL, 30, 'Fish Tacos', '25 mins', 'Cod tacos with lime slaw.', 3);

-- 3. INGREDIENT (IDs 11-20)
INSERT INTO INGREDIENT (id, name, calories, type) VALUES 
(NULL, 'Sourdough Starter', 50, 'Grains'),
(NULL, 'Feta Cheese', 264, 'Dairy'),
(NULL, 'Red Lentils', 116, 'Legumes'),
(NULL, 'Broccoli', 34, 'Vegetables'),
(NULL, 'Beef Fillet', 250, 'Meat'),
(NULL, 'Chili Flakes', 6, 'Spice'),
(NULL, 'Buttermilk', 40, 'Dairy'),
(NULL, 'Spinach', 23, 'Vegetables'),
(NULL, 'Apples', 52, 'Fruit'),
(NULL, 'Cod Fillet', 82, 'Seafood');

-- 4. POST
INSERT INTO POST (id, id_recipe, id_user, caption, image_url) VALUES 
(NULL, 21, 21, 'The crust on this bread!', 'img21.jpg'),
(NULL, 22, 22, 'Fresh summer lunch.', 'img22.jpg'),
(NULL, 25, 25, 'Special occasion dinner.', 'img25.jpg'),
(NULL, 26, 26, 'Spicy!!', 'img26.jpg'),
(NULL, 27, 27, 'Better than takeout.', 'img27.jpg'),
(NULL, 28, 28, 'Keeping it keto.', 'img28.jpg'),
(NULL, 29, 29, 'Grandmas recipe.', 'img29.jpg'),
(NULL, 30, 30, 'Taco Tuesday!', 'img30.jpg'),
(NULL, 23, 23, 'Warm soul food.', 'img23.jpg'),
(NULL, 24, 24, 'Fridge cleanout stirfry.', 'img24.jpg');

-- 5. REVIEWS
INSERT INTO REVIEWS (id, likes, comment, id_recipe, id_user, rating) VALUES 
(NULL, 100, 'Best bread ever!', 21, 25, 5),
(NULL, 12, 'So healthy.', 22, 28, 4),
(NULL, 45, 'Perfect spice level.', 26, 30, 5),
(NULL, 8, 'A bit difficult.', 25, 21, 3),
(NULL, 20, 'Crispy indeed!', 27, 26, 5),
(NULL, 5, 'Too much vinegar.', 28, 22, 2),
(NULL, 60, 'Perfect crust.', 29, 23, 5),
(NULL, 33, 'Delicious cod.', 30, 24, 4),
(NULL, 15, 'Very filling.', 23, 27, 5),
(NULL, 2, 'Simple but good.', 24, 29, 4);

-- 6. MENU
INSERT INTO MENU (id, plannes_date, id_recipe, id_user, meal_type) VALUES 
(NULL, '2025-02-01', 21, 21, 'Breakfast'),
(NULL, '2025-02-01', 25, 25, 'Dinner'),
(NULL, '2025-02-02', 22, 22, 'Lunch'),
(NULL, '2025-02-02', 26, 26, 'Dinner'),
(NULL, '2025-02-03', 23, 23, 'Lunch'),
(NULL, '2025-02-03', 27, 27, 'Dinner'),
(NULL, '2025-02-04', 28, 28, 'Lunch'),
(NULL, '2025-02-04', 24, 24, 'Dinner'),
(NULL, '2025-02-05', 30, 30, 'Lunch'),
(NULL, '2025-02-05', 29, 29, 'Dessert');

-- 7. HISTORY
INSERT INTO HISTORY (id, id_recipe, id_user, action_type) VALUES 
(NULL, 21, 25, 'Viewed'), (NULL, 22, 28, 'Saved'), (NULL, 25, 21, 'Cooked'),
(NULL, 26, 30, 'Liked'), (NULL, 27, 26, 'Viewed'), (NULL, 28, 22, 'Saved'),
(NULL, 29, 23, 'Cooked'), (NULL, 30, 24, 'Liked'), (NULL, 23, 27, 'Viewed'),
(NULL, 24, 29, 'Saved');

-- 8. RECIPE_INGREDIENT
-- Links Recipes 21-30 to Ingredients 11-20
INSERT INTO RECIPE_INGREDIENT (id_recipe, id_ingredient, amount, unit, atributo) VALUES 
(21, 11, 1.00, 'cup', 'Active'),
(22, 12, 50.00, 'g', 'Crumbled'),
(23, 13, 200.00, 'g', 'Dry'),
(24, 14, 1.00, 'head', 'Chopped'),
(25, 15, 600.00, 'g', 'Center cut'),
(26, 16, 1.00, 'tsp', 'Dried'),
(27, 17, 500.00, 'ml', 'Cold'),
(28, 18, 2.00, 'cups', 'Fresh'),
(29, 19, 4.00, 'pcs', 'Granny Smith'),
(30, 20, 300.00, 'g', 'Flaky');

SET FOREIGN_KEY_CHECKS = 1;

-- 1. USER (10 Users with NULL IDs to trigger AUTO_INCREMENT)
INSERT INTO USER (id, email, phone, username, password) VALUES 
(NULL, 'clara_b@demo.com', '555-1001', 'ClaraBakes', '$2b$12$C1l2a3r4a5B6a7k8e9s0H1a2s3h4V5a6l7u8'),
(NULL, 'david_dev@code.com', '555-1002', 'CodingCook', '$2b$12$D1a2v3i4d5D6e7v8P9a0s1s2w3o4r5d6H7a8'),
(NULL, 'elena_fit@gym.com', '555-1003', 'ElenaFit', '$2b$12$E1l2e3n4a5F6i7t8V9i0b1e2s3H4a5s6h7L8'),
(NULL, 'frankie_g@bbq.com', '555-1004', 'FrankieGrills', '$2b$12$F1r2a3n4k5i6e7G8r9i0l1l2s3H4a5s6h7I8'),
(NULL, 'gina_v@vegan.com', '555-1005', 'GinaVegan', '$2b$12$G1i2n3a4V5e6g7a8n9V1i0b1e2s3H4a5s6h7'),
(NULL, 'henry_h@home.com', '555-1006', 'HenryHomeChef', '$2b$12$H1e2n3r4y5H6o7m8e9C0h1e2f3H4a5s6h7J8'),
(NULL, 'iris_i@india.com', '555-1007', 'IrisSpices', '$2b$12$I1r2i3s4S5p6i7c8e9s0I1n2d3i4a5H6a7s8'),
(NULL, 'jack_j@burger.com', '555-1008', 'JackBurger', '$2b$12$J1a2c3k4B5u6r7g8e9r0K1i2n3g4H5a6s7h8'),
(NULL, 'kara_k@kitchen.com', '555-1009', 'KaraKitchen', '$2b$12$K1a2r3a4K5i6t7c8h9e0n1Q2u3e4e5n6H7a8'),
(NULL, 'leo_l@luxury.com', '555-1010', 'LeoLuxury', '$2b$12$L1e2o3L4u5x6u7r8y9C0h1e2f3H4a5s6h7P8');

-- 2. RECIPE (10 Recipes)
INSERT INTO RECIPE (id, id_user, title, prep_time, description, serving) VALUES 
(1, 10, 'Spaghetti Carbonara', '20 mins', 'Authentic Roman pasta with egg and guanciale.', 2),
(2, 2, 'Chocolate Fondant', '15 mins', 'Molten lava cake with a gooey center.', 4),
(3, 4, 'Quinoa Buddha Bowl', '25 mins', 'Healthy bowl with roasted chickpeas and kale.', 1),
(4, 3, 'Smoked BBQ Ribs', '4 hours', 'Slow-cooked ribs with a honey bourbon glaze.', 6),
(5, 7, 'Strawberry Macarons', '1 hour', 'Delicate French almond cookies with jam filling.', 12),
(6, 6, 'Pan-Seared Scallops', '10 mins', 'Scallops with lemon butter and pea puree.', 2),
(7, 8, 'Avocado Toast', '5 mins', 'Sourdough with mashed avocado and chili flakes.', 1),
(8, 1, 'Chicken Tikka Masala', '45 mins', 'Creamy spiced tomato curry with tender chicken.', 4),
(9, 5, 'Classic Smash Burger', '15 mins', 'Crispy beef patties with melted cheddar.', 2),
(10, 9, 'Green Smoothie', '5 mins', 'Spinach, banana, and almond milk blend.', 1);

-- 3. INGREDIENT (10 Ingredients)
INSERT INTO INGREDIENT (id, name, calories, type) VALUES 
(1, 'Spaghetti', 158, 'Grain'),
(2, 'Large Egg', 72, 'Dairy'),
(3, 'Guanciale', 655, 'Meat'),
(4, 'Dark Chocolate', 546, 'Sweet'),
(5, 'Quinoa', 120, 'Grain'),
(6, 'Pork Ribs', 242, 'Meat'),
(7, 'Almond Flour', 160, 'Nut'),
(8, 'Sea Scallops', 111, 'Seafood'),
(9, 'Avocado', 160, 'Fruit'),
(10, 'Chicken Breast', 165, 'Meat');

-- 4. POST (10 Posts)
INSERT INTO POST (id_recipe, id_user, caption, image_url) VALUES 
(1, 10, 'Dinner tonight in Rome!', 'http://cdn.com/post1.jpg'),
(2, 2, 'Look at that melt...', 'http://cdn.com/post2.jpg'),
(3, 4, 'Healthy vibes only.', 'http://cdn.com/post3.jpg'),
(4, 3, 'Smoked for 4 hours!', 'http://cdn.com/post4.jpg'),
(5, 7, 'Testing a new flavor.', 'http://cdn.com/post5.jpg'),
(6, 6, 'Fine dining at home.', 'http://cdn.com/post6.jpg'),
(7, 8, 'Quick breakfast.', 'http://cdn.com/post7.jpg'),
(8, 1, 'Spicy and creamy.', 'http://cdn.com/post8.jpg'),
(9, 5, 'Double patty today.', 'http://cdn.com/post9.jpg'),
(10, 9, 'Starting the day right.', 'http://cdn.com/post10.jpg');

-- 5. REVIEWS (10 Reviews)
INSERT INTO REVIEWS (likes, comment, id_recipe, id_user, rating) VALUES 
(12, 'Perfect texture!', 1, 2, 5),
(5, 'A bit too sweet.', 2, 4, 3),
(20, 'Love this for lunch.', 3, 1, 5),
(8, 'The glaze is killer.', 4, 6, 5),
(3, 'Hard to make, but worth it.', 5, 9, 4),
(15, 'So fresh!', 6, 10, 5),
(2, 'Classic.', 7, 3, 4),
(10, 'Best curry recipe.', 8, 5, 5),
(7, 'Juicy!', 9, 8, 5),
(4, 'Very refreshing.', 10, 7, 4);

-- 6. MENU (10 Planned Meals)
INSERT INTO MENU (plannes_date, id_recipe, id_user, meal_type) VALUES 
('2025-01-01', 1, 1, 'Dinner'),
('2025-01-01', 10, 2, 'Breakfast'),
('2025-01-02', 3, 4, 'Lunch'),
('2025-01-02', 2, 7, 'Snack'),
('2025-01-03', 4, 3, 'Dinner'),
('2025-01-03', 7, 8, 'Breakfast'),
('2025-01-04', 8, 5, 'Dinner'),
('2025-01-04', 9, 6, 'Lunch'),
('2025-01-05', 6, 10, 'Dinner'),
('2025-01-05', 5, 9, 'Snack');

-- 7. HISTORY (10 History Logs)
INSERT INTO HISTORY (id_recipe, id_user, action_type) VALUES 
(1, 2, 'Viewed'), (2, 4, 'Liked'), (3, 1, 'Cooked'), (4, 6, 'Saved'),
(5, 9, 'Shared'), (6, 10, 'Cooked'), (7, 3, 'Viewed'), (8, 5, 'Liked'),
(9, 8, 'Saved'), (10, 7, 'Cooked');

-- 8. RECIPE_INGREDIENT (10 Links)
INSERT INTO RECIPE_INGREDIENT (id_recipe, id_ingredient, amount, unit, atributo) VALUES 
(1, 1, 200, 'g', 'Al dente'),
(1, 2, 3, 'pcs', 'Whisked'),
(2, 4, 100, 'g', 'Melted'),
(3, 5, 1, 'cup', 'Cooked'),
(4, 6, 1, 'kg', 'Marinated'),
(5, 7, 2, 'cups', 'Sifted'),
(6, 8, 6, 'pcs', 'Cleaned'),
(7, 9, 1, 'pc', 'Ripe'),
(8, 10, 500, 'g', 'Diced'),
(10, 9, 0.5, 'pc', 'Sliced');

SET FOREIGN_KEY_CHECKS = 1;
```
**login.sql**
```sql
CREATE DATABASE login_system;

USE login_system;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL
);



CREATE USER 
'login_system'@'localhost' 
IDENTIFIED  BY 'Login_system123$';

GRANT USAGE ON *.* TO 'login_system'@'localhost';

ALTER USER 'login_system'@'localhost' 
REQUIRE NONE 
WITH MAX_QUERIES_PER_HOUR 0 
MAX_CONNECTIONS_PER_HOUR 0 
MAX_UPDATES_PER_HOUR 0 
MAX_USER_CONNECTIONS 0;

GRANT ALL PRIVILEGES ON login_system.* 
TO 'login_system'@'localhost';

FLUSH PRIVILEGES;
```
## inc
**create_user.php**
```php
<?php
require_once __DIR__ . '/../actions/head.php';

if (isset($_POST['login'])) {
    $username = trim($_POST['username']); // Remove accidental whitespace
    $password = $_POST['password'];
    $errors = [];

    // 1. Username Validation (5-20 characters)
    if (strlen($username) < 5 || strlen($username) > 20) {
        $errors[] = "Username must be between 5 and 20 characters.";
    }

    // 2. Password Validation (8-16 characters + number)
    if (strlen($password) < 8 || strlen($password) > 16) {
        $errors[] = "Password must be between 8 and 16 characters.";
    }
    if (!preg_match("/[0-9]/", $password)) {
        $errors[] = "Password must contain at least one number.";
    }

    // 3. Execution
    if (empty($errors)) {
        $hashed_password = password_hash($password, PASSWORD_DEFAULT);

        $stmt = $conn->prepare("INSERT INTO USER (username, password) VALUES (?, ?)");
        $stmt->bind_param("ss", $username, $hashed_password);

        if ($stmt->execute()) {
            echo "<p style='color:green;'>Registration successful! <a href='login.php'>Login here</a></p>";
        } else {
            echo "<p style='color:red;'>Errrrror: Username might already be taken.</p>";
        }
    } else {
        // Display all boundary errors
        foreach ($errors as $error) {
            echo "<p style='color:red;'>$error</p>";
        }
    }
}
?>
```
**login_user.php**
```php
<?php
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}
require_once __DIR__ . '/../actions/head.php'; 

if (isset($_POST['login'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];

    // Use a prepared statement to find the user
    $stmt = $conn->prepare("SELECT id, password FROM USER WHERE username = ?");
    $stmt->bind_param("s", $username);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($user = $result->fetch_assoc()) {
        // Compare the submitted password with the hashed password in the DB
        if (password_verify($password, $user['password'])) {
            $_SESSION['user_id'] = $user['id'];
            $_SESSION['username'] = $username;
            header("Location: ./profile.php");
            exit();
        } else {
            echo "<p class='error'>Invalid password.</p>";
        }
    } else {
        echo "<p class='error'>User not found.</p>";
    }
}
?>
```
**logout.php**
```php
<?php
// 1. Обязательно запускаем сессию, чтобы PHP знал, ЧТО именно закрывать
session_start();

// 2. Очищаем все переменные сессии в текущем скрипте
$_SESSION = array();

// 3. Если нужно полностью уничтожить сессию (включая куки браузера)
if (ini_get("session.use_cookies")) {
    $params = session_get_cookie_params();
    setcookie(session_name(), '', time() - 42000,
        $params["path"], $params["domain"],
        $params["secure"], $params["httponly"]
    );
}

// 4. Уничтожаем сессию на сервере
session_destroy();

// 5. Перенаправляем на страницу входа или главную
header("Location: ../login.php"); 
exit();
?>
```
## versiones
### v0.0
#### back
##### inc
**connect_bd.php**
```php
<?php
$host = "localhost";
$user = "login_system";
$pass = "Login_system123$";
$db   = "login_system";

$conn = mysqli_connect($host, $user, $pass, $db);

if (!$conn) {
    die("Database connection failed: " . mysqli_connect_error());
}
?>


```
##### login_system
**create_user.php**
```php
<?php
session_start();
require_once __DIR__ . '/../inc/connect_bd.php';


if (isset($_POST['login'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];

    // --- Username Validation ---
    $long_of_name = strlen($username);
    $is_username_valid = preg_match('/^[a-zA-Z0-9]+$/', $username);

    // --- Password Validation ---
    // Checks if password is at least 8 chars and contains at least one number
    $is_password_secure = (strlen($password) >= 8 && preg_match('/[0-9]/', $password));

    if ($long_of_name > 8 && $long_of_name < 16 && $is_username_valid) {
        
        if ($is_password_secure) {
            // Hash the password
            $hashedPassword = password_hash($password, PASSWORD_DEFAULT);

            // Save to database
            $stmt = $conn->prepare("INSERT INTO users (username, password) VALUES (?, ?)");
            $stmt->bind_param("ss", $username, $hashedPassword);
            
            if ($stmt->execute()) {
                echo "User created safely!";
            } else {
                echo "Error: Could not save to database.";
            }
        } else {
            echo "Password too weak! Must be 8+ characters and include at least one number.";
        }
        
    } else {
        echo "Username is not correct (9-15 alphanumeric characters only).";
    }
}
?>


```
**login_user.php**
```php
<?php
session_start();
require_once __DIR__ . '/../inc/connect_bd.php';
if (isset($_POST['login'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];

    // --- Username Validation ---
    $long_of_name = strlen($username);
    $is_username_valid = preg_match('/^[a-zA-Z0-9]+$/', $username);

    if ($long_of_name > 8 && $long_of_name < 16 && $is_username_valid) {

        // --- Fetch user from database ---
        $stmt = $conn->prepare("SELECT id, username, password FROM users WHERE username = ?");
        $stmt->bind_param("s", $username);
        $stmt->execute();
        $result = $stmt->get_result();

        if ($result->num_rows === 1) {
            $user = $result->fetch_assoc();

            // --- Verify password ---
            if (password_verify($password, $user['password'])) {
                // Login successful
                $_SESSION['user_id'] = $user['id'];
                $_SESSION['username'] = $user['username'];
                echo "Login successful! Welcome, " . htmlspecialchars($user['username']);
            } else {
                echo "Incorrect password.";
            }
        } else {
            echo "User not found.";
        }

    } else {
        echo "Username is not correct (9-15 alphanumeric characters only).";
    }
}
?>

```
#### front
**index.php**
```php
<?php include "inc/head.php"; ?>
<p>This is index front page </p>


<?php include "inc/foot.php"; ?>
```
**login.php**
```php
<?php require_once __DIR__ . '/../back/login_system/login_user.php'; ?>  
<form method="POST">
    <h2>login_system</h2>
    <input type="text" name="username" required placeholder="Username"><br><br>
    <input type="password" name="password" required placeholder="Password"><br>
    <small>Min. 8 characters + 1 number</small><br><br>
    <button name="login">Create</button>
</form>
```
**profile.php**
```php

```
**register.php**
```php
<?php require_once __DIR__ . '/../back/login_system/create_user.php'; ?>  
<form method="POST">
    <h2>Create user</h2>
    <input type="text" name="username" required placeholder="Username"><br><br>
    <input type="password" name="password" required placeholder="Password"><br>
    <small>Min. 8 characters + 1 number</small><br><br>
    <button name="login">Create</button>
</form>
```
##### css
**style.css**
```css

```
##### inc
**foot.php**
```php
		</main>
  	<footer>
    </footer>
  </body>
</html>
```
**head.php**
```php
<?php
session_start(); 

?>
<!doctype html>
<html lang="es">
<head>
    <title>Menu</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<header>
    <?php if(isset($_SESSION['user_id'])): ?>
        <a href="profile.php">My Account</a>
    <?php else: ?>
        <a href="login.php">Login</a>
    <?php endif; ?>
</header>
<main>

```
**logout.php**
```php
<?php
// 1. Обязательно запускаем сессию, чтобы PHP знал, ЧТО именно закрывать
session_start();

// 2. Очищаем все переменные сессии в текущем скрипте
$_SESSION = array();

// 3. Если нужно полностью уничтожить сессию (включая куки браузера)
if (ini_get("session.use_cookies")) {
    $params = session_get_cookie_params();
    setcookie(session_name(), '', time() - 42000,
        $params["path"], $params["domain"],
        $params["secure"], $params["httponly"]
    );
}

// 4. Уничтожаем сессию на сервере
session_destroy();

// 5. Перенаправляем на страницу входа или главную
header("Location: login.php");
exit();
?>
```
#### test
**create_user.php**
```php
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

```
**login copy.php**
```php
<?php
session_start();
include "config.php";

if (isset($_POST['login'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];

    $sql = "SELECT * FROM users WHERE username='$username'";
    $result = mysqli_query($conn, $sql);
    $user = mysqli_fetch_assoc($result);

    if ($user && password_verify($password, $user['password'])) {
        $_SESSION['username'] = $username;
        header("Location: dashboard.php");
    } else {
        echo "Invalid username or password";
    }
}
?>

<form method="POST">
    <h2>Login</h2>
    <input type="text" name="username" required placeholder="Username"><br><br>
    <input type="password" name="password" required placeholder="Password"><br><br>
    <button name="login">Login</button>
</form>

```
**login.php**
```php
<?php
session_start();
include "config.php";

if (isset($_POST['login'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];

    $sql = "SELECT * FROM users WHERE username='$username'";
    $result = mysqli_query($conn, $sql);
    $user = mysqli_fetch_assoc($result);

    if ($user && password_verify($password, $user['password'])) {
        $_SESSION['username'] = $username;
        header("Location: dashboard.php");
    } else {
        echo "Invalid username or password";
    }
}
?>

<form method="POST">
    <h2>Login</h2>
    <input type="text" name="username" required placeholder="Username"><br><br>
    <input type="password" name="password" required placeholder="Password"><br><br>
    <button name="login">Login</button>
</form>

```
**login1.php**
```php
<?php
session_start();
include "config.php";

if (isset($_POST['login'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];

    $stmt = $conn->prepare(
        "SELECT * FROM users WHERE username = ? AND password = ?"
    );
    $stmt->bind_param("ss", $username, $password);
    $stmt->execute();

    $result = $stmt->get_result();

    if ($result->num_rows === 1) {
        $_SESSION['username'] = $username;
        header("Location: dashboard.php");
        exit;
    } else {
        echo "Invalid username or password";
    }
}
?>

<form method="POST">
    <h2>Login</h2>
    <input type="text" name="username" required placeholder="Username"><br><br>
    <input type="password" name="password" required placeholder="Password"><br><br>
    <button name="login">Login</button>
</form>

```
### v0.1 another structure
**index.php**
```php
<?php include "actions/head.php"; ?>

<p>This is index front page </p>


<?php include "actions/foot.php"; ?>
```
**login.php**
```php
<?php require_once __DIR__ . '/inc/login_user.php'; ?>  
<form method="POST">
    <h2>login_system</h2>
    <input type="text" name="username" required placeholder="Username"><br><br>
    <input type="password" name="password" required placeholder="Password"><br>
    <small>Min. 8 characters + 1 number</small><br><br>
    <button name="login">Create</button>
</form>
```
**profile.php**
```php
<?php
session_start();
?>

<a href="inc/logout.php">Logout</a>

<p>This is ypu profile</p>
    <?php if(isset($_SESSION['user_id'])):?>
       <p>Welcome, <?php require_once __DIR__ . '/actions/User_name.php'; ?>  </p>
       <p>Your id isUser ID: <?php echo $_SESSION['user_id']; ?> </p>
    <?php else: ?>
        <a href="login.php">Login</a>
    <?php endif; ?>


```
**register.php**
```php
<?php require_once __DIR__ . '/inc/create_user.php'; ?>  
<form method="POST">
    <h2>Create user</h2>
    <input type="text" name="username" required placeholder="Username"><br><br>
    <input type="password" name="password" required placeholder="Password"><br>
    <small>Min. 8 characters + 1 number</small><br><br>
    <button name="login">Create</button>
</form>
```
#### actions
**User_name.php**
```php
<?php
require_once __DIR__ . '/connect_bd.php';

$sql = "SELECT username FROM users WHERE id = " . $_SESSION['user_id'];
$result = $conn->query($sql);

if ($result && $result->num_rows > 0) {
    $row = $result->fetch_assoc();
    echo $row['username'];
}


?>
```
**connect_bd.php**
```php
<?php
$host = "localhost";
$user = "login_system";
$pass = "Login_system123$";
$db   = "login_system";

$conn = mysqli_connect($host, $user, $pass, $db);

if (!$conn) {
    die("Database connection failed: " . mysqli_connect_error());
}
?>


```
**foot.php**
```php
		</main>
  	<footer>
    </footer>
  </body>
</html>
```
**head.php**
```php
<?php
session_start(); 

?>
<!doctype html>
<html lang="es">
<head>
    <title>Menu</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<header>
    <?php if(isset($_SESSION['user_id'])): ?>
        <a href="profile.php">My Account</a>
    <?php else: ?>
        <a href="login.php">Login</a>
    <?php endif; ?>
</header>
<main>

```
#### inc
**create_user.php**
```php
<?php
session_start();
require_once __DIR__ . '/../actions/connect_bd.php';


if (isset($_POST['login'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];

    // --- Username Validation ---
    $long_of_name = strlen($username);
    $is_username_valid = preg_match('/^[a-zA-Z0-9]+$/', $username);

    // --- Password Validation ---
    // Checks if password is at least 8 chars and contains at least one number
    $is_password_secure = (strlen($password) >= 8 && preg_match('/[0-9]/', $password));

    if ($long_of_name > 8 && $long_of_name < 16 && $is_username_valid) {
        
        if ($is_password_secure) {
            // Hash the password
            $hashedPassword = password_hash($password, PASSWORD_DEFAULT);

            // Save to database
            $stmt = $conn->prepare("INSERT INTO users (username, password) VALUES (?, ?)");
            $stmt->bind_param("ss", $username, $hashedPassword);
            
            if ($stmt->execute()) {
                echo "User created safely!";
            } else {
                echo "Error: Could not save to database.";
            }
        } else {
            echo "Password too weak! Must be 8+ characters and include at least one number.";
        }
        
    } else {
        echo "Username is not correct (9-15 alphanumeric characters only).";
    }
}
?>


```
**login_user.php**
```php
<?php
session_start();
require_once __DIR__ . '/../actions/connect_bd.php';

if (isset($_POST['login'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];

    // --- Username Validation ---
    $long_of_name = strlen($username);
    $is_username_valid = preg_match('/^[a-zA-Z0-9]+$/', $username);

    if ($long_of_name > 8 && $long_of_name < 16 && $is_username_valid) {

        // --- Fetch user from database ---
        $stmt = $conn->prepare("SELECT id, username, password FROM users WHERE username = ?");
        $stmt->bind_param("s", $username);
        $stmt->execute();
        $result = $stmt->get_result();

        if ($result->num_rows === 1) {
            $user = $result->fetch_assoc();

            // --- Verify password ---
            if (password_verify($password, $user['password'])) {
                // Login successful
                $_SESSION['user_id'] = $user['id'];
                $_SESSION['username'] = $user['username'];
                echo "Login successful! Welcome, " . htmlspecialchars($user['username']);
            } else {
                echo "Incorrect password.";
            }
        } else {
            echo "User not found.";
        }

    } else {
        echo "Username is not correct (9-15 alphanumeric characters only).";
    }
}
?>

```
**logout.php**
```php
<?php
// 1. Обязательно запускаем сессию, чтобы PHP знал, ЧТО именно закрывать
session_start();

// 2. Очищаем все переменные сессии в текущем скрипте
$_SESSION = array();

// 3. Если нужно полностью уничтожить сессию (включая куки браузера)
if (ini_get("session.use_cookies")) {
    $params = session_get_cookie_params();
    setcookie(session_name(), '', time() - 42000,
        $params["path"], $params["domain"],
        $params["secure"], $params["httponly"]
    );
}

// 4. Уничтожаем сессию на сервере
session_destroy();

// 5. Перенаправляем на страницу входа или главную
header("Location: ../login.php"); 
exit();
?>
```
### v0.2 create write mysql databases
**index.php**
```php
<?php include "actions/head.php"; ?>

<p>This is index front page </p>


<?php include "actions/foot.php"; ?>
```
**login.php**
```php
<?php require_once __DIR__ . '/inc/login_user.php'; ?>  
<form method="POST">
    <h2>login_system</h2>
    <input type="text" name="username" required placeholder="Username"><br><br>
    <input type="password" name="password" required placeholder="Password"><br>
    <small>Min. 8 characters + 1 number</small><br><br>
    <button name="login">Login</button>
</form>
```
**mysql databases.sql**
```sql
CREATE DATABASE IF NOT EXISTS recipe_app;
USE recipe_app;

-- 1. USER Table
CREATE TABLE USER (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255),
    phone VARCHAR(20),
    username VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL
);

-- 2. RECIPE Table
CREATE TABLE RECIPE (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_user INT,
    title VARCHAR(100) NOT NULL,
    prep_time VARCHAR(50),
    description TEXT,
    serving INT,
    FOREIGN KEY (id_user) REFERENCES USER(id) ON DELETE SET NULL
);

-- 3. INGREDIENT Table
CREATE TABLE INGREDIENT (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    calories INT,
    type VARCHAR(50)
);

-- 4. POST Table
CREATE TABLE POST (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_recipe INT,
    id_user INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    caption TEXT,
    image_url VARCHAR(255),
    FOREIGN KEY (id_recipe) REFERENCES RECIPE(id) ON DELETE CASCADE,
    FOREIGN KEY (id_user) REFERENCES USER(id) ON DELETE CASCADE
);

-- 5. REVIEWS Table
CREATE TABLE REVIEWS (
    id INT AUTO_INCREMENT PRIMARY KEY,
    likes INT DEFAULT 0,
    comment TEXT,
    id_recipe INT,
    id_user INT,
    rating INT,
    FOREIGN KEY (id_recipe) REFERENCES RECIPE(id) ON DELETE CASCADE,
    FOREIGN KEY (id_user) REFERENCES USER(id) ON DELETE CASCADE
);

-- 6. MENU Table
CREATE TABLE MENU (
    id INT AUTO_INCREMENT PRIMARY KEY,
    plannes_date DATE,
    id_recipe INT,
    id_user INT,
    meal_type VARCHAR(50),
    FOREIGN KEY (id_recipe) REFERENCES RECIPE(id) ON DELETE CASCADE,
    FOREIGN KEY (id_user) REFERENCES USER(id) ON DELETE CASCADE
);

-- 7. HISTORY Table
CREATE TABLE HISTORY (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_recipe INT,
    date_time DATETIME DEFAULT CURRENT_TIMESTAMP,
    id_user INT,
    action_type VARCHAR(50),
    FOREIGN KEY (id_recipe) REFERENCES RECIPE(id) ON DELETE SET NULL,
    FOREIGN KEY (id_user) REFERENCES USER(id) ON DELETE CASCADE
);

-- 8. RECIPE_INGREDIENT (Many-to-Many Bridge Table)
CREATE TABLE RECIPE_INGREDIENT (
    id_recipe INT,
    id_ingredient INT,
    amount DECIMAL(10, 2),
    unit VARCHAR(20),
    atributo VARCHAR(50),
    PRIMARY KEY (id_recipe, id_ingredient),
    FOREIGN KEY (id_recipe) REFERENCES RECIPE(id) ON DELETE CASCADE,
    FOREIGN KEY (id_ingredient) REFERENCES INGREDIENT(id) ON DELETE CASCADE
);


-- 1. Create the user with the credentials from your PHP $user and $pass
CREATE USER 'admin_recipe_app'@'localhost' 
IDENTIFIED BY 'Login_system123$';

-- 2. Initial usage grant
GRANT USAGE ON *.* TO 'admin_recipe_app'@'localhost';

-- 3. Set resource limits (keeping your original requirements)
ALTER USER 'admin_recipe_app'@'localhost' 
REQUIRE NONE 
WITH MAX_QUERIES_PER_HOUR 0 
MAX_CONNECTIONS_PER_HOUR 0 
MAX_UPDATES_PER_HOUR 0 
MAX_USER_CONNECTIONS 0;

-- 4. Grant privileges specifically to the 'recipe_app' database
-- This matches your PHP $db variable
GRANT ALL PRIVILEGES ON recipe_app.* TO 'admin_recipe_app'@'localhost';

-- 5. Apply changes
FLUSH PRIVILEGES;
```
**profile.php**
```php
<?php
session_start();
?>

<a href="inc/logout.php">Logout</a>

<p>This is ypu profile</p>
    <?php if(isset($_SESSION['user_id'])):?>
       <p>Welcome, <?php require_once __DIR__ . '/actions/User_name.php'; ?>  </p>
       <p>Your id isUser ID: <?php echo $_SESSION['user_id']; ?> </p>
    <?php else: ?>
        <a href="login.php">Login</a>
    <?php endif; ?>


```
**register.php**
```php
<?php require_once __DIR__ . '/inc/create_user.php'; ?>  
<form method="POST">
    <h2>Create user</h2>
    <input type="text" name="username" required placeholder="Username"><br><br>
    <input type="password" name="password" required placeholder="Password"><br>
    <small>Min. 8 characters + 1 number</small><br><br>
    <button name="login">Create</button>
</form>
```
#### actions
**User_name.php**
```php
<?php
require_once __DIR__ . '/connect_bd.php';

$sql = "SELECT username FROM user WHERE id = " . $_SESSION['user_id'];
$result = $conn->query($sql);

if ($result && $result->num_rows > 0) {
    $row = $result->fetch_assoc();
    echo $row['username'];
}


?>
```
**connect_bd.php**
```php
<?php
$host = "localhost";
$user = "admin_recipe_app";
$pass = "Login_system123$";
$db   = "recipe_app";

$conn = mysqli_connect($host, $user, $pass, $db);

if (!$conn) {
    die("Database connection failed: " . mysqli_connect_error());
}
?>


```
**foot.php**
```php
		</main>
  	<footer>
    </footer>
  </body>
</html>
```
**head.php**
```php
<?php
session_start(); 

?>
<!doctype html>
<html lang="es">
<head>
    <title>Menu</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<header>
    <?php if(isset($_SESSION['user_id'])): ?>
        <a href="profile.php">My Account</a>
    <?php else: ?>
        <a href="login.php">Login</a>
    <?php endif; ?>
</header>
<main>

```
#### inc
**create_user.php**
```php
<?php
session_start();
require_once __DIR__ . '/../actions/connect_bd.php';


if (isset($_POST['login'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];

    // --- Username Validation ---
    $long_of_name = strlen($username);
    $is_username_valid = preg_match('/^[a-zA-Z0-9]+$/', $username);

    // --- Password Validation ---
    // Checks if password is at least 8 chars and contains at least one number
    $is_password_secure = (strlen($password) >= 8 && preg_match('/[0-9]/', $password));

    if ($long_of_name > 8 && $long_of_name < 16 && $is_username_valid) {
        
        if ($is_password_secure) {
            // Hash the password
            $hashedPassword = password_hash($password, PASSWORD_DEFAULT);

            // Save to database
            $stmt = $conn->prepare("INSERT INTO user (username, password) VALUES (?, ?)");
            $stmt->bind_param("ss", $username, $hashedPassword);
            
            if ($stmt->execute()) {
                echo "User created safely!";
            } else {
                echo "Error: Could not save to database.";
            }
        } else {
            echo "Password too weak! Must be 8+ characters and include at least one number.";
        }
        
    } else {
        echo "Username is not correct (9-15 alphanumeric characters only).";
    }
}
?>


```
**login_user.php**
```php
<?php
session_start();
require_once __DIR__ . '/../actions/connect_bd.php';

if (isset($_POST['login'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];

    // --- Username Validation ---
    $long_of_name = strlen($username);
    $is_username_valid = preg_match('/^[a-zA-Z0-9]+$/', $username);

    if ($long_of_name > 8 && $long_of_name < 16 && $is_username_valid) {

        // --- Fetch user from database ---
        $stmt = $conn->prepare("SELECT id, username, password FROM user WHERE username = ?");
        $stmt->bind_param("s", $username);
        $stmt->execute();
        $result = $stmt->get_result();

        if ($result->num_rows === 1) {
            $user = $result->fetch_assoc();

            // --- Verify password ---
            if (password_verify($password, $user['password'])) {
                // Login successful
                $_SESSION['user_id'] = $user['id'];
                $_SESSION['username'] = $user['username'];
                header("Location: ./profile.php");
                exit();
            } else {
                echo "Incorrect password.";
            }
        } else {
            echo "User not found.";
        }

    } else {
        echo "Username is not correct (9-15 alphanumeric characters only).";
    }
}
?>

```
**logout.php**
```php
<?php
// 1. Обязательно запускаем сессию, чтобы PHP знал, ЧТО именно закрывать
session_start();

// 2. Очищаем все переменные сессии в текущем скрипте
$_SESSION = array();

// 3. Если нужно полностью уничтожить сессию (включая куки браузера)
if (ini_get("session.use_cookies")) {
    $params = session_get_cookie_params();
    setcookie(session_name(), '', time() - 42000,
        $params["path"], $params["domain"],
        $params["secure"], $params["httponly"]
    );
}

// 4. Уничтожаем сессию на сервере
session_destroy();

// 5. Перенаправляем на страницу входа или главную
header("Location: ../login.php"); 
exit();
?>
```
### v0.3
**index.php**
```php
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
```
**login.php**
```php
<?php require_once __DIR__ . '/inc/login_user.php'; ?>  
<form method="POST">
    <h2>login_system</h2>
    <input type="text" name="username" required placeholder="Username"><br><br>
    <input type="password" name="password" required placeholder="Password"><br>
    <small>Min. 8 characters + 1 number</small><br><br>
    <button name="login">Login</button>
</form>
```
**mysql databases.sql**
```sql
CREATE DATABASE IF NOT EXISTS recipe_app;
USE recipe_app;

-- 1. USER Table
CREATE TABLE USER (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255),
    phone VARCHAR(20),
    username VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL
);

-- 2. RECIPE Table
CREATE TABLE RECIPE (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_user INT,
    title VARCHAR(100) NOT NULL,
    prep_time VARCHAR(50),
    description TEXT,
    serving INT,
    FOREIGN KEY (id_user) REFERENCES USER(id) ON DELETE SET NULL
);

-- 3. INGREDIENT Table
CREATE TABLE INGREDIENT (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    calories INT,
    type VARCHAR(50)
);

-- 4. POST Table
CREATE TABLE POST (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_recipe INT,
    id_user INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    caption TEXT,
    image_url VARCHAR(255),
    FOREIGN KEY (id_recipe) REFERENCES RECIPE(id) ON DELETE CASCADE,
    FOREIGN KEY (id_user) REFERENCES USER(id) ON DELETE CASCADE
);

-- 5. REVIEWS Table
CREATE TABLE REVIEWS (
    id INT AUTO_INCREMENT PRIMARY KEY,
    likes INT DEFAULT 0,
    comment TEXT,
    id_recipe INT,
    id_user INT,
    rating INT,
    FOREIGN KEY (id_recipe) REFERENCES RECIPE(id) ON DELETE CASCADE,
    FOREIGN KEY (id_user) REFERENCES USER(id) ON DELETE CASCADE
);

-- 6. MENU Table
CREATE TABLE MENU (
    id INT AUTO_INCREMENT PRIMARY KEY,
    plannes_date DATE,
    id_recipe INT,
    id_user INT,
    meal_type VARCHAR(50),
    FOREIGN KEY (id_recipe) REFERENCES RECIPE(id) ON DELETE CASCADE,
    FOREIGN KEY (id_user) REFERENCES USER(id) ON DELETE CASCADE
);

-- 7. HISTORY Table
CREATE TABLE HISTORY (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_recipe INT,
    date_time DATETIME DEFAULT CURRENT_TIMESTAMP,
    id_user INT,
    action_type VARCHAR(50),
    FOREIGN KEY (id_recipe) REFERENCES RECIPE(id) ON DELETE SET NULL,
    FOREIGN KEY (id_user) REFERENCES USER(id) ON DELETE CASCADE
);

-- 8. RECIPE_INGREDIENT (Many-to-Many Bridge Table)
CREATE TABLE RECIPE_INGREDIENT (
    id_recipe INT,
    id_ingredient INT,
    amount DECIMAL(10, 2),
    unit VARCHAR(20),
    atributo VARCHAR(50),
    PRIMARY KEY (id_recipe, id_ingredient),
    FOREIGN KEY (id_recipe) REFERENCES RECIPE(id) ON DELETE CASCADE,
    FOREIGN KEY (id_ingredient) REFERENCES INGREDIENT(id) ON DELETE CASCADE
);


-- 1. Create the user with the credentials from your PHP $user and $pass
CREATE USER 'admin_recipe_app'@'localhost' 
IDENTIFIED BY 'Login_system123$';

-- 2. Initial usage grant
GRANT USAGE ON *.* TO 'admin_recipe_app'@'localhost';

-- 3. Set resource limits (keeping your original requirements)
ALTER USER 'admin_recipe_app'@'localhost' 
REQUIRE NONE 
WITH MAX_QUERIES_PER_HOUR 0 
MAX_CONNECTIONS_PER_HOUR 0 
MAX_UPDATES_PER_HOUR 0 
MAX_USER_CONNECTIONS 0;

-- 4. Grant privileges specifically to the 'recipe_app' database
-- This matches your PHP $db variable
GRANT ALL PRIVILEGES ON recipe_app.* TO 'admin_recipe_app'@'localhost';

-- 5. Apply changes
FLUSH PRIVILEGES;
```
**profile.php**
```php
<?php
session_start();
?>

<a href="inc/logout.php">Logout</a>

<p>This is ypu profile</p>
    <?php if(isset($_SESSION['user_id'])):?>
       <p>Welcome, <?php require_once __DIR__ . '/actions/User_name.php'; ?>  </p>
       <p>Your id isUser ID: <?php echo $_SESSION['user_id']; ?> </p>
    <?php else: ?>
        <a href="login.php">Login</a>
    <?php endif; ?>


```
**recipe_details.php**
```php
<?php
require_once __DIR__ . '/actions/head.php'; 


$recipe_id = $_GET['id']; 


$stmt = $conn->prepare("SELECT * FROM recipe WHERE id = ?"); 
$stmt->bind_param("i", $recipe_id);
$stmt->execute();
$recipe = $stmt->get_result()->fetch_assoc();

if ($recipe) {
    echo "<h1>" . $recipe['title'] . "</h1>";

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
        echo "<li>" . $row['amount'] . " " . $row['unit'] . " " . $row['name'] . "</li>";
    }
    echo "</ul>";

    echo "<h3>Instructions:</h3>";
    echo "<p>" . nl2br($recipe['description']) . "</p>";

} else {
    echo "Recipe not found.";
}
?>

```
**register.php**
```php
<?php require_once __DIR__ . '/inc/create_user.php'; ?>  
<form method="POST">
    <h2>Create user</h2>
    <input type="text" name="username" required placeholder="Username"><br><br>
    <input type="password" name="password" required placeholder="Password"><br>
    <small>Min. 8 characters + 1 number</small><br><br>
    <button name="login">Create</button>
</form>
```
#### actions
**User_name.php**
```php
<?php
require_once __DIR__ . '/connect_bd.php';

$sql = "SELECT username FROM user WHERE id = " . $_SESSION['user_id'];
$result = $conn->query($sql);

if ($result && $result->num_rows > 0) {
    $row = $result->fetch_assoc();
    echo $row['username'];
}


?>
```
**connect_bd.php**
```php
<?php
$host = "localhost";
$user = "admin_recipe_app";
$pass = "Login_system123$";
$db   = "recipe_app";

$conn = mysqli_connect($host, $user, $pass, $db);

if (!$conn) {
    die("Database connection failed: " . mysqli_connect_error());
}
?>


```
**foot.php**
```php
		</main>
  	<footer>
    </footer>
  </body>
</html>
```
**head.php**
```php
<?php
session_start(); 
require_once __DIR__ . '/connect_bd.php';
?>
<!doctype html>
<html lang="es">
<head>
    <title>Menu</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<header>
    <?php if(isset($_SESSION['user_id'])): ?>
        <a href="profile.php">My Account</a>
    <?php else: ?>
        <a href="login.php">Login</a>
    <?php endif; ?>
</header>
<main>

```
#### inc
**create_user.php**
```php
<?php
session_start();
require_once __DIR__ . '/../actions/connect_bd.php';


if (isset($_POST['login'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];

    // --- Username Validation ---
    $long_of_name = strlen($username);
    $is_username_valid = preg_match('/^[a-zA-Z0-9]+$/', $username);

    // --- Password Validation ---
    // Checks if password is at least 8 chars and contains at least one number
    $is_password_secure = (strlen($password) >= 8 && preg_match('/[0-9]/', $password));

    if ($long_of_name > 8 && $long_of_name < 16 && $is_username_valid) {
        
        if ($is_password_secure) {
            // Hash the password
            $hashedPassword = password_hash($password, PASSWORD_DEFAULT);

            // Save to database
            $stmt = $conn->prepare("INSERT INTO user (username, password) VALUES (?, ?)");
            $stmt->bind_param("ss", $username, $hashedPassword);
            
            if ($stmt->execute()) {
                echo "User created safely!";
            } else {
                echo "Error: Could not save to database.";
            }
        } else {
            echo "Password too weak! Must be 8+ characters and include at least one number.";
        }
        
    } else {
        echo "Username is not correct (9-15 alphanumeric characters only).";
    }
}
?>


```
**login_user.php**
```php
<?php
session_start();
require_once __DIR__ . '/../actions/connect_bd.php';

if (isset($_POST['login'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];

    // --- Username Validation ---
    $long_of_name = strlen($username);
    $is_username_valid = preg_match('/^[a-zA-Z0-9]+$/', $username);

    if ($long_of_name > 8 && $long_of_name < 16 && $is_username_valid) {

        // --- Fetch user from database ---
        $stmt = $conn->prepare("SELECT id, username, password FROM user WHERE username = ?");
        $stmt->bind_param("s", $username);
        $stmt->execute();
        $result = $stmt->get_result();

        if ($result->num_rows === 1) {
            $user = $result->fetch_assoc();

            // --- Verify password ---
            if (password_verify($password, $user['password'])) {
                // Login successful
                $_SESSION['user_id'] = $user['id'];
                $_SESSION['username'] = $user['username'];
                header("Location: ./profile.php");
                exit();
            } else {
                echo "Incorrect password.";
            }
        } else {
            echo "User not found.";
        }

    } else {
        echo "Username is not correct (9-15 alphanumeric characters only).";
    }
}
?>

```
**logout.php**
```php
<?php
// 1. Обязательно запускаем сессию, чтобы PHP знал, ЧТО именно закрывать
session_start();

// 2. Очищаем все переменные сессии в текущем скрипте
$_SESSION = array();

// 3. Если нужно полностью уничтожить сессию (включая куки браузера)
if (ini_get("session.use_cookies")) {
    $params = session_get_cookie_params();
    setcookie(session_name(), '', time() - 42000,
        $params["path"], $params["domain"],
        $params["secure"], $params["httponly"]
    );
}

// 4. Уничтожаем сессию на сервере
session_destroy();

// 5. Перенаправляем на страницу входа или главную
header("Location: ../login.php"); 
exit();
?>
```
### v0.4 style
**index.php**
```php
<?php include "actions/head.php"; ?>


<div class="recipe-grid"> <?php 
$sql = "SELECT * FROM RECIPE;";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        // We put the dynamic content INSIDE the loop so $row is defined
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
```
**login.php**
```php
<?php require_once __DIR__ . '/inc/login_user.php'; ?>  
<form method="POST">
    <h2>login_system</h2>
    <input type="text" name="username" required placeholder="Username"><br><br>
    <input type="password" name="password" required placeholder="Password"><br>
    <small>Min. 8 characters + 1 number</small><br><br>
    <button name="login">Login</button>
</form>
```
**mysql databases.sql**
```sql
CREATE DATABASE IF NOT EXISTS recipe_app;
USE recipe_app;

-- 1. USER Table
CREATE TABLE USER (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255),
    phone VARCHAR(20),
    username VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL
);

-- 2. RECIPE Table
CREATE TABLE RECIPE (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_user INT,
    title VARCHAR(100) NOT NULL,
    prep_time VARCHAR(50),
    description TEXT,
    serving INT,
    FOREIGN KEY (id_user) REFERENCES USER(id) ON DELETE SET NULL
);

-- 3. INGREDIENT Table
CREATE TABLE INGREDIENT (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    calories INT,
    type VARCHAR(50)
);

-- 4. POST Table
CREATE TABLE POST (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_recipe INT,
    id_user INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    caption TEXT,
    image_url VARCHAR(255),
    FOREIGN KEY (id_recipe) REFERENCES RECIPE(id) ON DELETE CASCADE,
    FOREIGN KEY (id_user) REFERENCES USER(id) ON DELETE CASCADE
);

-- 5. REVIEWS Table
CREATE TABLE REVIEWS (
    id INT AUTO_INCREMENT PRIMARY KEY,
    likes INT DEFAULT 0,
    comment TEXT,
    id_recipe INT,
    id_user INT,
    rating INT,
    FOREIGN KEY (id_recipe) REFERENCES RECIPE(id) ON DELETE CASCADE,
    FOREIGN KEY (id_user) REFERENCES USER(id) ON DELETE CASCADE
);

-- 6. MENU Table
CREATE TABLE MENU (
    id INT AUTO_INCREMENT PRIMARY KEY,
    plannes_date DATE,
    id_recipe INT,
    id_user INT,
    meal_type VARCHAR(50),
    FOREIGN KEY (id_recipe) REFERENCES RECIPE(id) ON DELETE CASCADE,
    FOREIGN KEY (id_user) REFERENCES USER(id) ON DELETE CASCADE
);

-- 7. HISTORY Table
CREATE TABLE HISTORY (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_recipe INT,
    date_time DATETIME DEFAULT CURRENT_TIMESTAMP,
    id_user INT,
    action_type VARCHAR(50),
    FOREIGN KEY (id_recipe) REFERENCES RECIPE(id) ON DELETE SET NULL,
    FOREIGN KEY (id_user) REFERENCES USER(id) ON DELETE CASCADE
);

-- 8. RECIPE_INGREDIENT (Many-to-Many Bridge Table)
CREATE TABLE RECIPE_INGREDIENT (
    id_recipe INT,
    id_ingredient INT,
    amount DECIMAL(10, 2),
    unit VARCHAR(20),
    atributo VARCHAR(50),
    PRIMARY KEY (id_recipe, id_ingredient),
    FOREIGN KEY (id_recipe) REFERENCES RECIPE(id) ON DELETE CASCADE,
    FOREIGN KEY (id_ingredient) REFERENCES INGREDIENT(id) ON DELETE CASCADE
);


-- 1. Create the user with the credentials from your PHP $user and $pass
CREATE USER 'admin_recipe_app'@'localhost' 
IDENTIFIED BY 'Login_system123$';

-- 2. Initial usage grant
GRANT USAGE ON *.* TO 'admin_recipe_app'@'localhost';

-- 3. Set resource limits (keeping your original requirements)
ALTER USER 'admin_recipe_app'@'localhost' 
REQUIRE NONE 
WITH MAX_QUERIES_PER_HOUR 0 
MAX_CONNECTIONS_PER_HOUR 0 
MAX_UPDATES_PER_HOUR 0 
MAX_USER_CONNECTIONS 0;

-- 4. Grant privileges specifically to the 'recipe_app' database
-- This matches your PHP $db variable
GRANT ALL PRIVILEGES ON recipe_app.* TO 'admin_recipe_app'@'localhost';

-- 5. Apply changes
FLUSH PRIVILEGES;
```
**planner.php**
```php
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
        // Fetch last 7 days of plans
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
```
**profile.php**
```php
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
                <?php echo strtoupper(substr($_SESSION['username'], 0, 1)); ?>
            </div>
            <h2>User Profile</h2>
        </div>
        <div class="profile-info">
            <div class="info-group">
                <label>Username:</label>
                <span><?php echo htmlspecialchars($_SESSION['username']); ?></span>
            </div>
        </div>
        <div class="profile-actions">
            <a href="planner.php" class="btn-secondary">Open Full Planner</a>
            <a href="inc/logout.php" class="btn-danger">Logout</a>
        </div>
    </div>

    <div class="profile-menu-section" style="margin-top: 30px; width: 100%; max-width: 800px;">
        <h3 style="margin-bottom: 20px; color: #333;">My Upcoming Meals</h3>
        <div class="planner-grid">
            <?php
            // Выбираем меню только для текущего пользователя на сегодня и будущие даты
            $sql = "SELECT m.plannes_date, m.meal_type, r.title, r.id as rid 
                    FROM MENU m 
                    JOIN RECIPE r ON m.id_recipe = r.id 
                    WHERE m.id_user = ? AND m.plannes_date >= CURDATE()
                    ORDER BY m.plannes_date ASC LIMIT 3"; // Показываем только ближайшие 3 приема пищи
            
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
```
**recipe_details.php**
```php
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

```
**register.php**
```php
<?php require_once __DIR__ . '/inc/create_user.php'; ?>  
<form method="POST">
    <h2>Create user</h2>
    <input type="text" name="username" required placeholder="Username"><br><br>
    <input type="password" name="password" required placeholder="Password"><br>
    <small>Min. 8 characters + 1 number</small><br><br>
    <button name="login">Create</button>
</form>
```
#### actions
**User_name.php**
```php
<?php
require_once __DIR__ . '/connect_bd.php';

$sql = "SELECT username FROM user WHERE id = " . $_SESSION['user_id'];
$result = $conn->query($sql);

if ($result && $result->num_rows > 0) {
    $row = $result->fetch_assoc();
    echo $row['username'];
}


?>
```
**connect_bd.php**
```php
<?php
$host = "localhost";
$user = "admin_recipe_app";
$pass = "Login_system123$";
$db   = "recipe_app";

$conn = mysqli_connect($host, $user, $pass, $db);

if (!$conn) {
    die("Database connection failed: " . mysqli_connect_error());
}
?>


```
**foot.php**
```php
		</main>
  	<footer>
    </footer>
  </body>
</html>
```
**head.php**
```php
<?php
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}
require_once __DIR__ . '/connect_bd.php'; 
?>
<!doctype html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <title>Recipe App</title>
</head>
<body>
<div class="container">
    <nav>
        <div class="nav-links">
            <a href="index.php">Home</a>
            <?php if(isset($_SESSION['user_id'])): ?>
                <a href="profile.php">My Account</a>
                <a href="inc/logout.php" style="color: #666;">Logout</a>
            <?php else: ?>
                <a href="login.php">Login</a>
                <a href="register.php">Register</a>
            <?php endif; ?>
        </div>
    </nav>
    <main>
```
#### css
**style.css**
```css
/* General Reset */
* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

body {
    background-color: #f9fbf9;
    color: #333;
    line-height: 1.6;
    padding: 20px;
}

/* Container for all content */
.container {
    max-width: 900px;
    margin: 0 auto;
}

/* Navigation & Header */
nav {
    background: #fff;
    padding: 1rem;
    border-radius: 8px;
    box-shadow: 0 2px 5px rgba(0,0,0,0.05);
    margin-bottom: 20px;
    display: flex;
    justify-content: space-between;
    align-items: center;
}

nav a {
    text-decoration: none;
    color: #ff6b6b;
    font-weight: bold;
    margin-right: 15px;
}

/* Recipe Grid (Index Page) */
.recipe-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
    gap: 20px;
}

.recipe-card {
    background: #fff;
    border: none !important; /* Overriding the inline style in your PHP */
    border-radius: 12px;
    padding: 20px;
    box-shadow: 0 4px 6px rgba(0,0,0,0.1);
    transition: transform 0.2s;
}

.recipe-card:hover {
    transform: translateY(-5px);
}

.recipe-card h3 {
    margin-bottom: 10px;
    color: #2d3436;
}

.recipe-card a {
    display: inline-block;
    margin-top: 10px;
    color: #fff;
    background: #ff6b6b;
    padding: 8px 16px;
    border-radius: 20px;
    text-decoration: none;
    font-size: 0.9rem;
}

/* Form Styling (Login/Register) */
form {
    background: #fff;
    max-width: 400px;
    margin: 50px auto;
    padding: 30px;
    border-radius: 12px;
    box-shadow: 0 10px 25px rgba(0,0,0,0.1);
}

form h2 {
    margin-bottom: 20px;
    text-align: center;
    color: #ff6b6b;
}

input[type="text"], 
input[type="password"] {
    width: 100%;
    padding: 12px;
    margin-bottom: 15px;
    border: 1px solid #ddd;
    border-radius: 6px;
}

button {
    width: 100%;
    padding: 12px;
    background: #ff6b6b;
    border: none;
    color: white;
    font-size: 1rem;
    border-radius: 6px;
    cursor: pointer;
    font-weight: bold;
}

button:hover {
    background: #ee5253;
}

/* Recipe Details Page */
.recipe-detail-header {
    border-bottom: 3px solid #ff6b6b;
    padding-bottom: 10px;
    margin-bottom: 20px;
}

ul {
    list-style-position: inside;
    background: #fff;
    padding: 15px;
    border-radius: 8px;
    margin-bottom: 20px;
}

.instructions-box {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    border-left: 5px solid #ff6b6b;
}

/* Profile Layout */
.profile-container {
    display: flex;
    justify-content: center;
    padding-top: 50px;
}

.profile-card {
    width: 100%;
    max-width: 400px;
    text-align: center;
    background: #fff;
    border-radius: 12px;
    padding: 30px;
    box-shadow: 0 4px 15px rgba(0,0,0,0.1);
}

/* Initial Avatar */
.avatar-circle {
    width: 70px;
    height: 70px;
    background-color: #ff6b6b;
    color: white;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 1.8rem;
    font-weight: bold;
    margin: 0 auto 15px;
}

.profile-info {
    text-align: left;
    background: #fdfdfd;
    padding: 15px;
    border: 1px solid #eee;
    border-radius: 8px;
    margin: 20px 0;
}

.info-group {
    display: flex;
    justify-content: space-between;
    margin-bottom: 10px;
    border-bottom: 1px solid #f0f0f0;
    padding-bottom: 5px;
}

/* Buttons */
.profile-actions {
    display: flex;
    gap: 10px;
}

.btn-secondary, .btn-danger {
    flex: 1;
    padding: 10px;
    border-radius: 6px;
    text-decoration: none;
    font-size: 0.9rem;
    font-weight: bold;
}

.btn-secondary { background: #eee; color: #333; }
.btn-danger { background: #ff6b6b; color: white; }
```
#### inc
**create_user.php**
```php
<?php
require_once __DIR__ . '/../actions/head.php';

if (isset($_POST['login'])) {
    $username = trim($_POST['username']); // Remove accidental whitespace
    $password = $_POST['password'];
    $errors = [];

    // 1. Username Validation (5-20 characters)
    if (strlen($username) < 5 || strlen($username) > 20) {
        $errors[] = "Username must be between 5 and 20 characters.";
    }

    // 2. Password Validation (8-16 characters + number)
    if (strlen($password) < 8 || strlen($password) > 16) {
        $errors[] = "Password must be between 8 and 16 characters.";
    }
    if (!preg_match("/[0-9]/", $password)) {
        $errors[] = "Password must contain at least one number.";
    }

    // 3. Execution
    if (empty($errors)) {
        $hashed_password = password_hash($password, PASSWORD_DEFAULT);

        $stmt = $conn->prepare("INSERT INTO USER (username, password) VALUES (?, ?)");
        $stmt->bind_param("ss", $username, $hashed_password);

        if ($stmt->execute()) {
            echo "<p style='color:green;'>Registration successful! <a href='login.php'>Login here</a></p>";
        } else {
            echo "<p style='color:red;'>Errrrror: Username might already be taken.</p>";
        }
    } else {
        // Display all boundary errors
        foreach ($errors as $error) {
            echo "<p style='color:red;'>$error</p>";
        }
    }
}
?>
```
**login_user.php**
```php
<?php
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}
require_once __DIR__ . '/../actions/head.php'; 

if (isset($_POST['login'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];

    // Use a prepared statement to find the user
    $stmt = $conn->prepare("SELECT id, password FROM USER WHERE username = ?");
    $stmt->bind_param("s", $username);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($user = $result->fetch_assoc()) {
        // Compare the submitted password with the hashed password in the DB
        if (password_verify($password, $user['password'])) {
            $_SESSION['user_id'] = $user['id'];
            $_SESSION['username'] = $username;
            header("Location: ./profile.php");
            exit();
        } else {
            echo "<p class='error'>Invalid password.</p>";
        }
    } else {
        echo "<p class='error'>User not found.</p>";
    }
}
?>
```
**logout.php**
```php
<?php
// 1. Обязательно запускаем сессию, чтобы PHP знал, ЧТО именно закрывать
session_start();

// 2. Очищаем все переменные сессии в текущем скрипте
$_SESSION = array();

// 3. Если нужно полностью уничтожить сессию (включая куки браузера)
if (ini_get("session.use_cookies")) {
    $params = session_get_cookie_params();
    setcookie(session_name(), '', time() - 42000,
        $params["path"], $params["domain"],
        $params["secure"], $params["httponly"]
    );
}

// 4. Уничтожаем сессию на сервере
session_destroy();

// 5. Перенаправляем на страницу входа или главную
header("Location: ../login.php"); 
exit();
?>
```
### v0.5
**index.php**
```php
<?php include "actions/head.php"; ?>


<div class="recipe-grid"> <?php 
$sql = "SELECT * FROM RECIPE;";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
            echo '<div class="recipe-card">'; 
            echo '<div class="image-wrapper">'; 
            echo '<img src="' . $row['img'] . '" class="recipe-image">';
            echo '</div>';
            echo '<h3>' . $row['title'] . '</h3>';
            echo '<a href="...">View Full Recipe</a>';
echo '</div>';
    }
} else {
    echo "The table is empty.";
}
?>
</div>

<?php include "actions/foot.php"; ?>
```
**login.php**
```php
<?php require_once __DIR__ . '/inc/login_user.php'; ?>  
<form method="POST">
    <h2>login_system</h2>
    <input type="text" name="username" required placeholder="Username"><br><br>
    <input type="password" name="password" required placeholder="Password"><br>
    <small>Min. 8 characters + 1 number</small><br><br>
    <button name="login">Login</button>
</form>
```
**mysql databases.sql**
```sql
CREATE DATABASE IF NOT EXISTS recipe_app;
USE recipe_app;

-- 1. USER Table
CREATE TABLE USER (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255),
    phone VARCHAR(20),
    username VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL
);

-- 2. RECIPE Table
CREATE TABLE RECIPE (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_user INT,
    title VARCHAR(100) NOT NULL,
    prep_time VARCHAR(50),
    description TEXT,
    img VARCHAR(255),
    serving INT,
    FOREIGN KEY (id_user) REFERENCES USER(id) ON DELETE SET NULL
);

-- 3. INGREDIENT Table
CREATE TABLE INGREDIENT (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    calories INT,
    type VARCHAR(50)
);

-- 4. POST Table
CREATE TABLE POST (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_recipe INT,
    id_user INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    caption TEXT,
    image_url VARCHAR(255),
    FOREIGN KEY (id_recipe) REFERENCES RECIPE(id) ON DELETE CASCADE,
    FOREIGN KEY (id_user) REFERENCES USER(id) ON DELETE CASCADE
);

-- 5. REVIEWS Table
CREATE TABLE REVIEWS (
    id INT AUTO_INCREMENT PRIMARY KEY,
    likes INT DEFAULT 0,
    comment TEXT,
    id_recipe INT,
    id_user INT,
    rating INT,
    FOREIGN KEY (id_recipe) REFERENCES RECIPE(id) ON DELETE CASCADE,
    FOREIGN KEY (id_user) REFERENCES USER(id) ON DELETE CASCADE
);

-- 6. MENU Table
CREATE TABLE MENU (
    id INT AUTO_INCREMENT PRIMARY KEY,
    plannes_date DATE,
    id_recipe INT,
    id_user INT,
    meal_type VARCHAR(50),
    FOREIGN KEY (id_recipe) REFERENCES RECIPE(id) ON DELETE CASCADE,
    FOREIGN KEY (id_user) REFERENCES USER(id) ON DELETE CASCADE
);

-- 7. HISTORY Table
CREATE TABLE HISTORY (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_recipe INT,
    date_time DATETIME DEFAULT CURRENT_TIMESTAMP,
    id_user INT,
    action_type VARCHAR(50),
    FOREIGN KEY (id_recipe) REFERENCES RECIPE(id) ON DELETE SET NULL,
    FOREIGN KEY (id_user) REFERENCES USER(id) ON DELETE CASCADE
);

-- 8. RECIPE_INGREDIENT (Many-to-Many Bridge Table)
CREATE TABLE RECIPE_INGREDIENT (
    id_recipe INT,
    id_ingredient INT,
    amount DECIMAL(10, 2),
    unit VARCHAR(20),
    atributo VARCHAR(50),
    PRIMARY KEY (id_recipe, id_ingredient),
    FOREIGN KEY (id_recipe) REFERENCES RECIPE(id) ON DELETE CASCADE,
    FOREIGN KEY (id_ingredient) REFERENCES INGREDIENT(id) ON DELETE CASCADE
);


-- 1. Create the user with the credentials from your PHP $user and $pass
CREATE USER 'admin_recipe_app'@'localhost' 
IDENTIFIED BY 'Login_system123$';

-- 2. Initial usage grant
GRANT USAGE ON *.* TO 'admin_recipe_app'@'localhost';

-- 3. Set resource limits (keeping your original requirements)
ALTER USER 'admin_recipe_app'@'localhost' 
REQUIRE NONE 
WITH MAX_QUERIES_PER_HOUR 0 
MAX_CONNECTIONS_PER_HOUR 0 
MAX_UPDATES_PER_HOUR 0 
MAX_USER_CONNECTIONS 0;

-- 4. Grant privileges specifically to the 'recipe_app' database
-- This matches your PHP $db variable
GRANT ALL PRIVILEGES ON recipe_app.* TO 'admin_recipe_app'@'localhost';

-- 5. Apply changes
FLUSH PRIVILEGES;
```
**planner.php**
```php
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
        // Fetch last 7 days of plans
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
```
**profile.php**
```php
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
                <?php echo strtoupper(substr($_SESSION['username'], 0, 1)); ?>
            </div>
            <h2>User Profile</h2>
        </div>
        <div class="profile-info">
            <div class="info-group">
                <label>Username:</label>
                <span><?php echo htmlspecialchars($_SESSION['username']); ?></span>
            </div>
        </div>
        <div class="profile-actions">
            <a href="planner.php" class="btn-secondary">Open Full Planner</a>
            <a href="inc/logout.php" class="btn-danger">Logout</a>
        </div>
    </div>

    <div class="profile-menu-section" style="margin-top: 30px; width: 100%; max-width: 800px;">
        <h3 style="margin-bottom: 20px; color: #333;">My Upcoming Meals</h3>
        <div class="planner-grid">
            <?php
            // Выбираем меню только для текущего пользователя на сегодня и будущие даты
            $sql = "SELECT m.plannes_date, m.meal_type, r.title, r.id as rid 
                    FROM MENU m 
                    JOIN RECIPE r ON m.id_recipe = r.id 
                    WHERE m.id_user = ? AND m.plannes_date >= CURDATE()
                    ORDER BY m.plannes_date ASC LIMIT 3"; // Показываем только ближайшие 3 приема пищи
            
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
```
**recipe_details.php**
```php
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

```
**register.php**
```php
<?php require_once __DIR__ . '/inc/create_user.php'; ?>  
<form method="POST">
    <h2>Create user</h2>
    <input type="text" name="username" required placeholder="Username"><br><br>
    <input type="password" name="password" required placeholder="Password"><br>
    <small>Min. 8 characters + 1 number</small><br><br>
    <button name="login">Create</button>
</form>
```
#### actions
**User_name.php**
```php
<?php
require_once __DIR__ . '/connect_bd.php';

$sql = "SELECT username FROM user WHERE id = " . $_SESSION['user_id'];
$result = $conn->query($sql);

if ($result && $result->num_rows > 0) {
    $row = $result->fetch_assoc();
    echo $row['username'];
}


?>
```
**connect_bd.php**
```php
<?php
$host = "localhost";
$user = "admin_recipe_app";
$pass = "Login_system123$";
$db   = "recipe_app";

$conn = mysqli_connect($host, $user, $pass, $db);

if (!$conn) {
    die("Database connection failed: " . mysqli_connect_error());
}
?>


```
**foot.php**
```php
		</main>
  	<footer>
    </footer>
  </body>
</html>
```
**head.php**
```php
<?php
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}
require_once __DIR__ . '/connect_bd.php'; 
?>
<!doctype html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css?v=2">
    <title>Recipe App</title>
</head>
<body>
<div class="container">
    <nav>
        <div class="nav-links">
            <a href="index.php">Home</a>
            <?php if(isset($_SESSION['user_id'])): ?>
                <a href="profile.php">My Account</a>
                <a href="inc/logout.php" style="color: #666;">Logout</a>
            <?php else: ?>
                <a href="login.php">Login</a>
                <a href="register.php">Register</a>
            <?php endif; ?>
        </div>
    </nav>
    <main>
```
#### assets
#### css
**style.css**
```css
/* General Reset */
* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

body {
    background-color: #f9fbf9;
    color: #333;
    line-height: 1.6;
    padding: 20px;
}

/* Container for all content */
.container {
    max-width: 900px;
    margin: 0 auto;
}

/* Navigation & Header */
nav {
    background: #fff;
    padding: 1rem;
    border-radius: 8px;
    box-shadow: 0 2px 5px rgba(0,0,0,0.05);
    margin-bottom: 20px;
    display: flex;
    justify-content: space-between;
    align-items: center;
}

nav a {
    text-decoration: none;
    color: #ff6b6b;
    font-weight: bold;
    margin-right: 15px;
}

.recipe-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
    gap: 20px;
}

.recipe-card {
    background: #fff;
    border-radius: 12px;
    padding: 20px;
    box-shadow: 0 4px 6px rgba(0,0,0,0.1);
    display: flex;
    flex-direction: column;
    height: 100%;
    /* This ensures the card doesn't grow wider than the grid column */
    min-width: 0; 
    width: 100%;
}

.recipe-image {
    width: calc(100%); 
    height: 200px;         
    object-fit: cover;     
    border-radius: 10px;
    margin-bottom: 15px;
    display: block;
    flex-shrink: 0;
    max-width: 100%;
    box-sizing: border-box;
}

.recipe-card:hover {
    transform: translateY(-5px);
}

.recipe-card h3 {
    margin-top: 15px;
    margin-bottom: 10px;
    color: #2d3436;
    word-wrap: break-word;
}

.recipe-card a {
    margin-top: auto;
    align-self: flex-start;
    color: #fff;
    background: #ff6b6b;
    padding: 8px 16px;
    border-radius: 20px;
    text-decoration: none;
    font-size: 0.9rem;
}





/* Form Styling (Login/Register) */
form {
    background: #fff;
    max-width: 400px;
    margin: 50px auto;
    padding: 30px;
    border-radius: 12px;
    box-shadow: 0 10px 25px rgba(0,0,0,0.1);
}

form h2 {
    margin-bottom: 20px;
    text-align: center;
    color: #ff6b6b;
}

input[type="text"], 
input[type="password"] {
    width: 100%;
    padding: 12px;
    margin-bottom: 15px;
    border: 1px solid #ddd;
    border-radius: 6px;
}

button {
    width: 100%;
    padding: 12px;
    background: #ff6b6b;
    border: none;
    color: white;
    font-size: 1rem;
    border-radius: 6px;
    cursor: pointer;
    font-weight: bold;
}

button:hover {
    background: #ee5253;
}

/* Recipe Details Page */
.recipe-detail-header {
    border-bottom: 3px solid #ff6b6b;
    padding-bottom: 10px;
    margin-bottom: 20px;
}

ul {
    list-style-position: inside;
    background: #fff;
    padding: 15px;
    border-radius: 8px;
    margin-bottom: 20px;
}

.instructions-box {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    border-left: 5px solid #ff6b6b;
}

/* Profile Layout */
.profile-container {
    display: flex;
    justify-content: center;
    padding-top: 50px;
}

.profile-card {
    width: 100%;
    max-width: 400px;
    text-align: center;
    background: #fff;
    border-radius: 12px;
    padding: 30px;
    box-shadow: 0 4px 15px rgba(0,0,0,0.1);
}

/* Initial Avatar */
.avatar-circle {
    width: 70px;
    height: 70px;
    background-color: #ff6b6b;
    color: white;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 1.8rem;
    font-weight: bold;
    margin: 0 auto 15px;
}

.profile-info {
    text-align: left;
    background: #fdfdfd;
    padding: 15px;
    border: 1px solid #eee;
    border-radius: 8px;
    margin: 20px 0;
}

.info-group {
    display: flex;
    justify-content: space-between;
    margin-bottom: 10px;
    border-bottom: 1px solid #f0f0f0;
    padding-bottom: 5px;
}

/* Buttons */
.profile-actions {
    display: flex;
    gap: 10px;
}

.btn-secondary, .btn-danger {
    flex: 1;
    padding: 10px;
    border-radius: 6px;
    text-decoration: none;
    font-size: 0.9rem;
    font-weight: bold;
}

.btn-secondary { background: #eee; color: #333; }
.btn-danger { background: #ff6b6b; color: white; }
```
#### inc
**create_user.php**
```php
<?php
require_once __DIR__ . '/../actions/head.php';

if (isset($_POST['login'])) {
    $username = trim($_POST['username']); // Remove accidental whitespace
    $password = $_POST['password'];
    $errors = [];

    // 1. Username Validation (5-20 characters)
    if (strlen($username) < 5 || strlen($username) > 20) {
        $errors[] = "Username must be between 5 and 20 characters.";
    }

    // 2. Password Validation (8-16 characters + number)
    if (strlen($password) < 8 || strlen($password) > 16) {
        $errors[] = "Password must be between 8 and 16 characters.";
    }
    if (!preg_match("/[0-9]/", $password)) {
        $errors[] = "Password must contain at least one number.";
    }

    // 3. Execution
    if (empty($errors)) {
        $hashed_password = password_hash($password, PASSWORD_DEFAULT);

        $stmt = $conn->prepare("INSERT INTO USER (username, password) VALUES (?, ?)");
        $stmt->bind_param("ss", $username, $hashed_password);

        if ($stmt->execute()) {
            echo "<p style='color:green;'>Registration successful! <a href='login.php'>Login here</a></p>";
        } else {
            echo "<p style='color:red;'>Errrrror: Username might already be taken.</p>";
        }
    } else {
        // Display all boundary errors
        foreach ($errors as $error) {
            echo "<p style='color:red;'>$error</p>";
        }
    }
}
?>
```
**login_user.php**
```php
<?php
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}
require_once __DIR__ . '/../actions/head.php'; 

if (isset($_POST['login'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];

    // Use a prepared statement to find the user
    $stmt = $conn->prepare("SELECT id, password FROM USER WHERE username = ?");
    $stmt->bind_param("s", $username);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($user = $result->fetch_assoc()) {
        // Compare the submitted password with the hashed password in the DB
        if (password_verify($password, $user['password'])) {
            $_SESSION['user_id'] = $user['id'];
            $_SESSION['username'] = $username;
            header("Location: ./profile.php");
            exit();
        } else {
            echo "<p class='error'>Invalid password.</p>";
        }
    } else {
        echo "<p class='error'>User not found.</p>";
    }
}
?>
```
**logout.php**
```php
<?php
// 1. Обязательно запускаем сессию, чтобы PHP знал, ЧТО именно закрывать
session_start();

// 2. Очищаем все переменные сессии в текущем скрипте
$_SESSION = array();

// 3. Если нужно полностью уничтожить сессию (включая куки браузера)
if (ini_get("session.use_cookies")) {
    $params = session_get_cookie_params();
    setcookie(session_name(), '', time() - 42000,
        $params["path"], $params["domain"],
        $params["secure"], $params["httponly"]
    );
}

// 4. Уничтожаем сессию на сервере
session_destroy();

// 5. Перенаправляем на страницу входа или главную
header("Location: ../login.php"); 
exit();
?>
```
```
**envio_a_la_jocarsa.md**
```markdown
ID de Envío: env_695f7c3f4604d6.22240922

Indica tu nombre: Bohdan
Indica tus apellidos: Sydorenko
Indica tu email: sidorenko.bohdan.05@gmail.com
Indica el título de tu proyecto de final de evaluación: App de Recetas y Planificador de Comidas
Describe tu proyecto: <div style="line-height: 19px;"><div style=""># 🥗 App de Recetas y Planificador de Comidas</div><br><div style="">Una aplicación web full-stack desarrollada en PHP diseñada para ayudar a los usuarios a descubrir recetas, gestionar perfiles y organizar sus hábitos alimenticios semanales a través de un planificador interactivo.</div><br><div style="">## 📝 Descripción del Proyecto</div><div style="">Este proyecto es una herramienta integral para la gestión de cocina. Permite a los usuarios registrados explorar una colección de recetas, ver detalles de preparación y agendar sus comidas diarias (desayuno, almuerzo, cena o snacks) en un calendario personalizado.</div><br><div style="">## ✨ Características Principales</div><div style="">* **Autenticación de Usuarios:** Sistema de registro y login seguro con manejo de sesiones.</div><div style="">* **Planificador Semanal:** Interfaz para añadir recetas a fechas específicas y tipos de comida.</div><div style="">* **Detalles de Receta:** Visualización de ingredientes con cantidades, unidades e instrucciones paso a paso.</div><div style="">* **Panel de Usuario:** Perfil personalizado que muestra las próximas comidas programadas.</div><div style="">* **Catálogo Dinámico:** Página principal que carga automáticamente las recetas disponibles desde la base de datos.</div></div>
Indica la URL del GitHub del proyecto: https://github.com/Sagmanua/Proyecto-Entornos-de-Desarrollo
Si necesitas realizar cambios, contacta al administrador.
```
### Diagramas
**Menu diagrama version 1.json**
```json
{
  "formas": [
    {
      "id": "forma-1",
      "tipo": "rectangle",
      "left": "295px",
      "top": "74.2px",
      "width": "",
      "height": "",
      "texto": "USER"
    },
    {
      "id": "forma-2",
      "tipo": "rectangle",
      "left": "990px",
      "top": "85.2px",
      "width": "",
      "height": "",
      "texto": "ADMIN"
    },
    {
      "id": "forma-3",
      "tipo": "rectangle",
      "left": "988px",
      "top": "278.2px",
      "width": "",
      "height": "",
      "texto": "PAGE"
    },
    {
      "id": "forma-4",
      "tipo": "rectangle",
      "left": "623px",
      "top": "106.2px",
      "width": "",
      "height": "",
      "texto": "LOGIN"
    },
    {
      "id": "forma-5",
      "tipo": "rectangle",
      "left": "619px",
      "top": "189.2px",
      "width": "",
      "height": "",
      "texto": "POST "
    },
    {
      "id": "forma-8",
      "tipo": "rectangle",
      "left": "246px",
      "top": "381.2px",
      "width": "",
      "height": "",
      "texto": "FILTER?"
    },
    {
      "id": "forma-9",
      "tipo": "rectangle",
      "left": "626px",
      "top": "45.2px",
      "width": "",
      "height": "",
      "texto": "HISTORY?"
    },
    {
      "id": "forma-10",
      "tipo": "rectangle",
      "left": "397px",
      "top": "278.2px",
      "width": "",
      "height": "",
      "texto": "MENU"
    },
    {
      "id": "forma-11",
      "tipo": "rectangle",
      "left": "742px",
      "top": "311.2px",
      "width": "",
      "height": "",
      "texto": "reviews"
    },
    {
      "id": "forma-12",
      "tipo": "rectangle",
      "left": "551px",
      "top": "300.2px",
      "width": "",
      "height": "",
      "texto": "Likes=aprove"
    }
  ],
  "flechas": [
    {
      "desde": {
        "shapeId": "forma-2",
        "propId": null,
        "side": null
      },
      "hasta": {
        "shapeId": "forma-4",
        "propId": null,
        "side": null
      },
      "tipo": "simple",
      "estilo": "straight"
    },
    {
      "desde": {
        "shapeId": "forma-2",
        "propId": null,
        "side": null
      },
      "hasta": {
        "shapeId": "forma-3",
        "propId": null,
        "side": null
      },
      "tipo": "simple",
      "estilo": "straight"
    },
    {
      "desde": {
        "shapeId": "forma-2",
        "propId": null,
        "side": null
      },
      "hasta": {
        "shapeId": "forma-5",
        "propId": null,
        "side": null
      },
      "tipo": "simple",
      "estilo": "straight"
    },
    {
      "desde": {
        "shapeId": "forma-1",
        "propId": null,
        "side": null
      },
      "hasta": {
        "shapeId": "forma-4",
        "propId": null,
        "side": null
      },
      "tipo": "simple",
      "estilo": "straight"
    },
    {
      "desde": {
        "shapeId": "forma-2",
        "propId": null,
        "side": null
      },
      "hasta": {
        "shapeId": "forma-9",
        "propId": null,
        "side": null
      },
      "tipo": "simple",
      "estilo": "straight"
    },
    {
      "desde": {
        "shapeId": "forma-1",
        "propId": null,
        "side": null
      },
      "hasta": {
        "shapeId": "forma-9",
        "propId": null,
        "side": null
      },
      "tipo": "simple",
      "estilo": "straight"
    },
    {
      "desde": {
        "shapeId": "forma-1",
        "propId": null,
        "side": null
      },
      "hasta": {
        "shapeId": "forma-5",
        "propId": null,
        "side": null
      },
      "tipo": "simple",
      "estilo": "straight"
    },
    {
      "desde": {
        "shapeId": "forma-1",
        "propId": null,
        "side": null
      },
      "hasta": {
        "shapeId": "forma-10",
        "propId": null,
        "side": null
      },
      "tipo": "simple",
      "estilo": "straight"
    },
    {
      "desde": {
        "shapeId": "forma-5",
        "propId": null,
        "side": null
      },
      "hasta": {
        "shapeId": "forma-10",
        "propId": null,
        "side": null
      },
      "tipo": "simple",
      "estilo": "straight"
    },
    {
      "desde": {
        "shapeId": "forma-1",
        "propId": null,
        "side": null
      },
      "hasta": {
        "shapeId": "forma-8",
        "propId": null,
        "side": null
      },
      "tipo": "simple",
      "estilo": "straight"
    },
    {
      "desde": {
        "shapeId": "forma-5",
        "propId": null,
        "side": null
      },
      "hasta": {
        "shapeId": "forma-3",
        "propId": null,
        "side": null
      },
      "tipo": "doble",
      "estilo": "ortho"
    },
    {
      "desde": {
        "shapeId": "forma-5",
        "propId": null,
        "side": null
      },
      "hasta": {
        "shapeId": "forma-3",
        "propId": null,
        "side": null
      },
      "tipo": "doble",
      "estilo": "straight"
    },
    {
      "desde": {
        "shapeId": "forma-1",
        "propId": null,
        "side": null
      },
      "hasta": {
        "shapeId": "forma-11",
        "propId": null,
        "side": null
      },
      "tipo": "simple",
      "estilo": "straight"
    },
    {
      "desde": {
        "shapeId": "forma-2",
        "propId": null,
        "side": null
      },
      "hasta": {
        "shapeId": "forma-11",
        "propId": null,
        "side": null
      },
      "tipo": "simple",
      "estilo": "straight"
    },
    {
      "desde": {
        "shapeId": "forma-5",
        "propId": null,
        "side": null
      },
      "hasta": {
        "shapeId": "forma-12",
        "propId": null,
        "side": null
      },
      "tipo": "simple",
      "estilo": "straight"
    },
    {
      "desde": {
        "shapeId": "forma-12",
        "propId": null,
        "side": null
      },
      "hasta": {
        "shapeId": "forma-8",
        "propId": null,
        "side": null
      },
      "tipo": "simple",
      "estilo": "straight"
    },
    {
      "desde": {
        "shapeId": "forma-5",
        "propId": null,
        "side": null
      },
      "hasta": {
        "shapeId": "forma-11",
        "propId": null,
        "side": null
      },
      "tipo": "simple",
      "estilo": "ortho"
    },
    {
      "desde": {
        "shapeId": "forma-5",
        "propId": null,
        "side": null
      },
      "hasta": {
        "shapeId": "forma-11",
        "propId": null,
        "side": null
      },
      "tipo": "simple",
      "estilo": "straight"
    },
    {
      "desde": {
        "shapeId": "forma-8",
        "propId": null,
        "side": null
      },
      "hasta": {
        "shapeId": "forma-10",
        "propId": null,
        "side": null
      },
      "tipo": "simple",
      "estilo": "ortho"
    },
    {
      "desde": {
        "shapeId": "forma-8",
        "propId": null,
        "side": null
      },
      "hasta": {
        "shapeId": "forma-10",
        "propId": null,
        "side": null
      },
      "tipo": "simple",
      "estilo": "ortho"
    },
    {
      "desde": {
        "shapeId": "forma-8",
        "propId": null,
        "side": null
      },
      "hasta": {
        "shapeId": "forma-10",
        "propId": null,
        "side": null
      },
      "tipo": "simple",
      "estilo": "ortho"
    },
    {
      "desde": {
        "shapeId": "forma-8",
        "propId": null,
        "side": null
      },
      "hasta": {
        "shapeId": "forma-10",
        "propId": null,
        "side": null
      },
      "tipo": "simple",
      "estilo": "straight"
    }
  ]
}
```
#### ER
**diagramaV0.2.json**
```json
{
  "formas": [
    {
      "id": "forma-1",
      "tipo": "entity",
      "left": "269.879px",
      "top": "23.5597px",
      "width": "",
      "height": "",
      "entityName": "USER",
      "properties": [
        {
          "id": "prop-1",
          "name": "id"
        },
        {
          "id": "prop-7",
          "name": "email(opcional)"
        },
        {
          "id": "prop-8",
          "name": "phone(opcional)"
        },
        {
          "id": "prop-9",
          "name": "username"
        },
        {
          "id": "prop-10",
          "name": "password"
        }
      ]
    },
    {
      "id": "forma-2",
      "tipo": "entity",
      "left": "259.775px",
      "top": "292.338px",
      "width": "",
      "height": "",
      "entityName": "POST",
      "properties": [
        {
          "id": "prop-2",
          "name": "id"
        },
        {
          "id": "prop-16",
          "name": "id_recipe"
        },
        {
          "id": "prop-17",
          "name": "id_user"
        },
        {
          "id": "prop-26",
          "name": "created_at"
        }
      ]
    },
    {
      "id": "forma-3",
      "tipo": "entity",
      "left": "434.138px",
      "top": "293.6px",
      "width": "",
      "height": "",
      "entityName": "MENU",
      "properties": [
        {
          "id": "prop-3",
          "name": "id"
        },
        {
          "id": "prop-11",
          "name": "date_time"
        },
        {
          "id": "prop-12",
          "name": "id_recipe"
        },
        {
          "id": "prop-27",
          "name": "id_user"
        }
      ]
    },
    {
      "id": "forma-5",
      "tipo": "entity",
      "left": "782.7px",
      "top": "279.412px",
      "width": "",
      "height": "",
      "entityName": "REVIEWS",
      "properties": [
        {
          "id": "prop-5",
          "name": "id"
        },
        {
          "id": "prop-20",
          "name": "likes"
        },
        {
          "id": "prop-21",
          "name": "comment"
        },
        {
          "id": "prop-22",
          "name": "id_recipe"
        },
        {
          "id": "prop-25",
          "name": "id_user"
        },
        {
          "id": "prop-42",
          "name": "rating"
        }
      ]
    },
    {
      "id": "forma-6",
      "tipo": "entity",
      "left": "604.338px",
      "top": "287.587px",
      "width": "",
      "height": "",
      "entityName": "HISTORY",
      "properties": [
        {
          "id": "prop-6",
          "name": "id"
        },
        {
          "id": "prop-18",
          "name": "id_recipe"
        },
        {
          "id": "prop-19",
          "name": "date_time"
        },
        {
          "id": "prop-23",
          "name": "id_user"
        },
        {
          "id": "prop-28",
          "name": "action_type"
        }
      ]
    },
    {
      "id": "forma-7",
      "tipo": "entity",
      "left": "847.213px",
      "top": "43.425px",
      "width": "",
      "height": "",
      "entityName": "INGREDIENT",
      "properties": [
        {
          "id": "prop-29",
          "name": "id"
        },
        {
          "id": "prop-30",
          "name": "name"
        },
        {
          "id": "prop-41",
          "name": "calories"
        }
      ]
    },
    {
      "id": "forma-8",
      "tipo": "entity",
      "left": "661.134px",
      "top": "37.1714px",
      "width": "",
      "height": "",
      "entityName": "RECIPE_INGREDIENT",
      "properties": [
        {
          "id": "prop-31",
          "name": "id_recipe "
        },
        {
          "id": "prop-32",
          "name": "id_ingredient "
        },
        {
          "id": "prop-33",
          "name": "quantity"
        },
        {
          "id": "prop-34",
          "name": "unit"
        },
        {
          "id": "prop-40",
          "name": "atributo"
        }
      ]
    },
    {
      "id": "forma-9",
      "tipo": "entity",
      "left": "461.15px",
      "top": "24.0161px",
      "width": "",
      "height": "",
      "entityName": "RECIPE",
      "properties": [
        {
          "id": "prop-35",
          "name": "id"
        },
        {
          "id": "prop-36",
          "name": "id_user "
        },
        {
          "id": "prop-37",
          "name": "title "
        },
        {
          "id": "prop-38",
          "name": "time_cooking"
        },
        {
          "id": "prop-39",
          "name": "description "
        },
        {
          "id": "prop-43",
          "name": ""
        }
      ]
    }
  ],
  "flechas": [
    {
      "desde": {
        "shapeId": "forma-1",
        "propId": "prop-1",
        "side": "right"
      },
      "hasta": {
        "shapeId": "forma-9",
        "propId": "prop-36",
        "side": "left"
      },
      "tipo": "simple",
      "estilo": "straight"
    },
    {
      "desde": {
        "shapeId": "forma-8",
        "propId": "prop-31",
        "side": "left"
      },
      "hasta": {
        "shapeId": "forma-9",
        "propId": "prop-35",
        "side": "right"
      },
      "tipo": "simple",
      "estilo": "straight"
    },
    {
      "desde": {
        "shapeId": "forma-8",
        "propId": "prop-32",
        "side": "right"
      },
      "hasta": {
        "shapeId": "forma-7",
        "propId": "prop-29",
        "side": "left"
      },
      "tipo": "simple",
      "estilo": "straight"
    },
    {
      "desde": {
        "shapeId": "forma-9",
        "propId": "prop-35",
        "side": "right"
      },
      "hasta": {
        "shapeId": "forma-6",
        "propId": "prop-18",
        "side": "left"
      },
      "tipo": "simple",
      "estilo": "straight"
    },
    {
      "desde": {
        "shapeId": "forma-1",
        "propId": "prop-1",
        "side": "right"
      },
      "hasta": {
        "shapeId": "forma-6",
        "propId": "prop-23",
        "side": "left"
      },
      "tipo": "simple",
      "estilo": "straight"
    },
    {
      "desde": {
        "shapeId": "forma-1",
        "propId": "prop-1",
        "side": "right"
      },
      "hasta": {
        "shapeId": "forma-5",
        "propId": "prop-25",
        "side": "right"
      },
      "tipo": "simple",
      "estilo": "straight"
    },
    {
      "desde": {
        "shapeId": "forma-9",
        "propId": "prop-35",
        "side": "right"
      },
      "hasta": {
        "shapeId": "forma-5",
        "propId": "prop-22",
        "side": "right"
      },
      "tipo": "simple",
      "estilo": "straight"
    },
    {
      "desde": {
        "shapeId": "forma-1",
        "propId": "prop-1",
        "side": "right"
      },
      "hasta": {
        "shapeId": "forma-3",
        "propId": "prop-27",
        "side": "left"
      },
      "tipo": "simple",
      "estilo": "straight"
    },
    {
      "desde": {
        "shapeId": "forma-9",
        "propId": "prop-35",
        "side": "right"
      },
      "hasta": {
        "shapeId": "forma-3",
        "propId": "prop-12",
        "side": "right"
      },
      "tipo": "simple",
      "estilo": "straight"
    },
    {
      "desde": {
        "shapeId": "forma-9",
        "propId": "prop-35",
        "side": "right"
      },
      "hasta": {
        "shapeId": "forma-2",
        "propId": "prop-16",
        "side": "left"
      },
      "tipo": "simple",
      "estilo": "straight"
    },
    {
      "desde": {
        "shapeId": "forma-1",
        "propId": "prop-1",
        "side": "right"
      },
      "hasta": {
        "shapeId": "forma-2",
        "propId": "prop-17",
        "side": "left"
      },
      "tipo": "simple",
      "estilo": "straight"
    }
  ]
}
```
**diagramaV0.3.json**
```json
{
  "formas": [
    {
      "id": "forma-1",
      "tipo": "entity",
      "left": "269.879px",
      "top": "23.5597px",
      "width": "",
      "height": "",
      "entityName": "USER",
      "properties": [
        {
          "id": "prop-1",
          "name": "id"
        },
        {
          "id": "prop-7",
          "name": "email(opcional)"
        },
        {
          "id": "prop-8",
          "name": "phone(opcional)"
        },
        {
          "id": "prop-9",
          "name": "username"
        },
        {
          "id": "prop-10",
          "name": "password"
        }
      ]
    },
    {
      "id": "forma-2",
      "tipo": "entity",
      "left": "640.103px",
      "top": "38.5556px",
      "width": "",
      "height": "",
      "entityName": "POST",
      "properties": [
        {
          "id": "prop-2",
          "name": "id"
        },
        {
          "id": "prop-16",
          "name": "id_recipe"
        },
        {
          "id": "prop-17",
          "name": "id_user"
        },
        {
          "id": "prop-26",
          "name": "created_at"
        },
        {
          "id": "prop-44",
          "name": "caption"
        },
        {
          "id": "prop-45",
          "name": "image_url"
        }
      ]
    },
    {
      "id": "forma-3",
      "tipo": "entity",
      "left": "1003.03px",
      "top": "47.4889px",
      "width": "",
      "height": "",
      "entityName": "MENU",
      "properties": [
        {
          "id": "prop-3",
          "name": "id"
        },
        {
          "id": "prop-11",
          "name": "plannes_date"
        },
        {
          "id": "prop-12",
          "name": "id_recipe"
        },
        {
          "id": "prop-27",
          "name": "id_user"
        },
        {
          "id": "prop-46",
          "name": "meal_type"
        }
      ]
    },
    {
      "id": "forma-5",
      "tipo": "entity",
      "left": "816.024px",
      "top": "43.6361px",
      "width": "",
      "height": "",
      "entityName": "REVIEWS",
      "properties": [
        {
          "id": "prop-5",
          "name": "id"
        },
        {
          "id": "prop-20",
          "name": "likes"
        },
        {
          "id": "prop-21",
          "name": "comment"
        },
        {
          "id": "prop-22",
          "name": "id_recipe"
        },
        {
          "id": "prop-25",
          "name": "id_user"
        },
        {
          "id": "prop-42",
          "name": "rating"
        }
      ]
    },
    {
      "id": "forma-6",
      "tipo": "entity",
      "left": "668.461px",
      "top": "417.267px",
      "width": "",
      "height": "",
      "entityName": "HISTORY",
      "properties": [
        {
          "id": "prop-6",
          "name": "id"
        },
        {
          "id": "prop-18",
          "name": "id_recipe"
        },
        {
          "id": "prop-19",
          "name": "date_time"
        },
        {
          "id": "prop-23",
          "name": "id_user"
        },
        {
          "id": "prop-28",
          "name": "action_type"
        }
      ]
    },
    {
      "id": "forma-7",
      "tipo": "entity",
      "left": "1186.09px",
      "top": "136.756px",
      "width": "",
      "height": "",
      "entityName": "INGREDIENT",
      "properties": [
        {
          "id": "prop-29",
          "name": "id"
        },
        {
          "id": "prop-30",
          "name": "name"
        },
        {
          "id": "prop-41",
          "name": "calories"
        },
        {
          "id": "prop-47",
          "name": "type"
        }
      ]
    },
    {
      "id": "forma-8",
      "tipo": "entity",
      "left": "1108.9px",
      "top": "406.051px",
      "width": "",
      "height": "",
      "entityName": "RECIPE_INGREDIENT",
      "properties": [
        {
          "id": "prop-31",
          "name": "id_recipe "
        },
        {
          "id": "prop-32",
          "name": "id_ingredient "
        },
        {
          "id": "prop-33",
          "name": "amount"
        },
        {
          "id": "prop-34",
          "name": "unit"
        },
        {
          "id": "prop-40",
          "name": ""
        }
      ]
    },
    {
      "id": "forma-9",
      "tipo": "entity",
      "left": "461.15px",
      "top": "24.0161px",
      "width": "",
      "height": "",
      "entityName": "RECIPE",
      "properties": [
        {
          "id": "prop-35",
          "name": "id"
        },
        {
          "id": "prop-36",
          "name": "id_user "
        },
        {
          "id": "prop-37",
          "name": "title "
        },
        {
          "id": "prop-38",
          "name": "prep_time"
        },
        {
          "id": "prop-39",
          "name": "description "
        },
        {
          "id": "prop-43",
          "name": "serving"
        }
      ]
    }
  ],
  "flechas": []
}
```
**diagramav0.1.json**
```json
{
  "formas": [
    {
      "id": "forma-1",
      "tipo": "entity",
      "left": "269.879px",
      "top": "23.5597px",
      "width": "",
      "height": "",
      "entityName": "USER",
      "properties": [
        {
          "id": "prop-1",
          "name": "id"
        },
        {
          "id": "prop-7",
          "name": "email(opcional)"
        },
        {
          "id": "prop-8",
          "name": "phone(opcional)"
        },
        {
          "id": "prop-9",
          "name": "username"
        },
        {
          "id": "prop-10",
          "name": "password"
        }
      ]
    },
    {
      "id": "forma-2",
      "tipo": "entity",
      "left": "1206.78px",
      "top": "36.3482px",
      "width": "",
      "height": "",
      "entityName": "POST",
      "properties": [
        {
          "id": "prop-2",
          "name": "id"
        },
        {
          "id": "prop-16",
          "name": "id_recipe"
        },
        {
          "id": "prop-17",
          "name": "id_user"
        },
        {
          "id": "prop-26",
          "name": "created_at"
        }
      ]
    },
    {
      "id": "forma-3",
      "tipo": "entity",
      "left": "474.139px",
      "top": "258.605px",
      "width": "",
      "height": "",
      "entityName": "MENU",
      "properties": [
        {
          "id": "prop-3",
          "name": "id"
        },
        {
          "id": "prop-11",
          "name": "date_time"
        },
        {
          "id": "prop-12",
          "name": "id_recipe"
        },
        {
          "id": "prop-27",
          "name": "id_user"
        }
      ]
    },
    {
      "id": "forma-5",
      "tipo": "entity",
      "left": "272.709px",
      "top": "251.432px",
      "width": "",
      "height": "",
      "entityName": "REVIEWS",
      "properties": [
        {
          "id": "prop-5",
          "name": "id"
        },
        {
          "id": "prop-20",
          "name": "likes"
        },
        {
          "id": "prop-21",
          "name": "comment"
        },
        {
          "id": "prop-22",
          "name": "id_recipe"
        },
        {
          "id": "prop-25",
          "name": "id_user"
        },
        {
          "id": "prop-42",
          "name": "rating"
        }
      ]
    },
    {
      "id": "forma-6",
      "tipo": "entity",
      "left": "1027.35px",
      "top": "40.6107px",
      "width": "",
      "height": "",
      "entityName": "HISTORY",
      "properties": [
        {
          "id": "prop-6",
          "name": "id"
        },
        {
          "id": "prop-18",
          "name": "id_recipe"
        },
        {
          "id": "prop-19",
          "name": "date_time"
        },
        {
          "id": "prop-23",
          "name": "id_user"
        },
        {
          "id": "prop-28",
          "name": "action_type"
        }
      ]
    },
    {
      "id": "forma-7",
      "tipo": "entity",
      "left": "847.213px",
      "top": "43.425px",
      "width": "",
      "height": "",
      "entityName": "INGREDIENT",
      "properties": [
        {
          "id": "prop-29",
          "name": "id"
        },
        {
          "id": "prop-30",
          "name": "name"
        },
        {
          "id": "prop-41",
          "name": "calories"
        }
      ]
    },
    {
      "id": "forma-8",
      "tipo": "entity",
      "left": "661.134px",
      "top": "37.1714px",
      "width": "",
      "height": "",
      "entityName": "RECIPE_INGREDIENT",
      "properties": [
        {
          "id": "prop-31",
          "name": "id_recipe "
        },
        {
          "id": "prop-32",
          "name": "id_ingredient "
        },
        {
          "id": "prop-33",
          "name": "quantity"
        },
        {
          "id": "prop-34",
          "name": "unit"
        },
        {
          "id": "prop-40",
          "name": "atributo"
        }
      ]
    },
    {
      "id": "forma-9",
      "tipo": "entity",
      "left": "461.15px",
      "top": "24.0161px",
      "width": "",
      "height": "",
      "entityName": "RECIPE",
      "properties": [
        {
          "id": "prop-35",
          "name": "id"
        },
        {
          "id": "prop-36",
          "name": "id_user "
        },
        {
          "id": "prop-37",
          "name": "title "
        },
        {
          "id": "prop-38",
          "name": "time_cooking"
        },
        {
          "id": "prop-39",
          "name": "description "
        }
      ]
    }
  ],
  "flechas": []
}
```
#### len
### What to Cook kit Generator
**password_hash.php**
```php
<?php
include "config.php";

$username = "alice";
$password = "mypassword123";

// Hash the password
$hashedPassword = password_hash($password, PASSWORD_DEFAULT);

// Save to database
$stmt = $conn->prepare("INSERT INTO users (username, password) VALUES (?, ?)");
$stmt->bind_param("ss", $username, $hashedPassword);
$stmt->execute();

echo "User saved safely!";
?>

```
### databases cod
#### v0.1
**databases.sql**
```sql
CREATE DATABASE IF NOT EXISTS recipe_app;
USE recipe_app;

-- 1. USER Table
CREATE TABLE USER (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255),
    phone VARCHAR(20),
    username VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL
);

-- 2. RECIPE Table
CREATE TABLE RECIPE (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_user INT,
    title VARCHAR(100) NOT NULL,
    prep_time VARCHAR(50),
    description TEXT,
    img VARCHAR(255),
    serving INT,
    FOREIGN KEY (id_user) REFERENCES USER(id) ON DELETE SET NULL
);

-- 3. INGREDIENT Table
CREATE TABLE INGREDIENT (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    calories INT,
    type VARCHAR(50)
);

-- 6. MENU Table
CREATE TABLE MENU (
    id INT AUTO_INCREMENT PRIMARY KEY,
    plannes_date DATE,
    id_recipe INT,
    id_user INT,
    meal_type VARCHAR(50),
    FOREIGN KEY (id_recipe) REFERENCES RECIPE(id) ON DELETE CASCADE,
    FOREIGN KEY (id_user) REFERENCES USER(id) ON DELETE CASCADE
);



-- 8. RECIPE_INGREDIENT (Many-to-Many Bridge Table)
CREATE TABLE RECIPE_INGREDIENT (
    id_recipe INT,
    id_ingredient INT,
    amount DECIMAL(10, 2),
    unit VARCHAR(20),
    atributo VARCHAR(50),
    PRIMARY KEY (id_recipe, id_ingredient),
    FOREIGN KEY (id_recipe) REFERENCES RECIPE(id) ON DELETE CASCADE,
    FOREIGN KEY (id_ingredient) REFERENCES INGREDIENT(id) ON DELETE CASCADE
);


-- 1. Create the user with the credentials from your PHP $user and $pass
CREATE USER 'admin_recipe_app'@'localhost' 
IDENTIFIED BY 'Login_system123$';

-- 2. Initial usage grant
GRANT USAGE ON *.* TO 'admin_recipe_app'@'localhost';

-- 3. Set resource limits (keeping your original requirements)
ALTER USER 'admin_recipe_app'@'localhost' 
REQUIRE NONE 
WITH MAX_QUERIES_PER_HOUR 0 
MAX_CONNECTIONS_PER_HOUR 0 
MAX_UPDATES_PER_HOUR 0 
MAX_USER_CONNECTIONS 0;

-- 4. Grant privileges specifically to the 'recipe_app' database
-- This matches your PHP $db variable
GRANT ALL PRIVILEGES ON recipe_app.* TO 'admin_recipe_app'@'localhost';

-- 5. Apply changes
FLUSH PRIVILEGES;
```
**insert for test.sql**
```sql
SET FOREIGN_KEY_CHECKS = 0;

-- 1. USER (IDs 21-30)
INSERT INTO USER (id, email, phone, username, password) VALUES 
(NULL, 'will@bakery.com', '555-3001', 'WillWheat', '$2b$12$W1i2l3l4B5a6k7e8r9y0H1a2s3h4V5a6'),
(NULL, 'xenia@food.com', '555-3002', 'XeniaXo', '$2b$12$X1e2n3i4a5F6o7o8d9H1a2s3h4V5a6l7u8'),
(NULL, 'yusef@spice.com', '555-3003', 'YusefCooks', '$2b$12$Y1u2s3e4f5S6p7i8c9e0H1a2s3h4V5a6'),
(NULL, 'zara@zero.com', '555-3004', 'ZaraZeroWaste', '$2b$12$Z1a2r3a4Z5e6r7o8W9a0s1t2e3H4a5s6'),
(NULL, 'art@culinary.com', '555-3005', 'ArtisanArt', '$2b$12$A1r2t3i4s5a6n7H8a9s0h1v2a3l4u5e6'),
(NULL, 'bella@ciao.com', '555-3006', 'BellaPasta', '$2b$12$B1e2l3l4a5C6i7a8o9H1a2s3h4V5a6l7'),
(NULL, 'cris@fire.com', '555-3007', 'CrispyCris', '$2b$12$C1r2i3s4p5y6F7i8r9e0H1a2s3h4V5a6'),
(NULL, 'dan@diet.com', '555-3008', 'DanDiets', '$2b$12$D1a2n3D4i5e6t7s8H1a2s3h4V5a6l7u8'),
(NULL, 'eva@eat.com', '555-3009', 'EvaEats', '$2b$12$E1v2a3E4a5t6s7H8a9s0h1v2a3l4u5e6'),
(NULL, 'finn@fish.com', '555-3010', 'FinnishFish', '$2b$12$F1i2n3n4i5s6h7F8i9s0h1H2a3s4h5V6');

-- 2. RECIPE (IDs 21-30)
INSERT INTO recipes (id_user, title, prep_time, description, serving, img) VALUES
(10, 'Spaghetti Carbonara', '20 mins', 'Authentic Roman pasta with egg and guanciale.', 2, 'assets/carbonara.jpg'),
(2, 'Chocolate Fondant', '15 mins', 'Molten lava cake with a gooey center.', 4, 'assets/fondant.jpg'),
(4, 'Quinoa Buddha Bowl', '25 mins', 'Healthy bowl with roasted chickpeas and kale.', 1, 'assets/quinoa.jpg'),
(3, 'Smoked BBQ Ribs', '4 hours', 'Slow-cooked ribs with a honey bourbon glaze.', 6, 'assets/ribs.jpg'),
(7, 'Strawberry Macarons', '1 hour', 'Delicate French almond cookies with jam filling.', 12, 'assets/macarons.jpg'),
(6, 'Pan-Seared Scallops', '10 mins', 'Scallops with lemon butter and pea puree.', 2, 'assets/scallops.jpg'),
(8, 'Avocado Toast', '5 mins', 'Sourdough with mashed avocado and chili flakes.', 1, 'assets/avocado_toast.jpg'),
(1, 'Chicken Tikka Masala', '45 mins', 'Creamy spiced tomato curry with tender chicken.', 4, 'assets/chicken_tikka.jpg'),
(5, 'Classic Smash Burger', '15 mins', 'Crispy beef patties with melted cheddar.', 2, 'assets/burger.jpg'),
(9, 'Green Smoothie', '5 mins', 'Spinach, banana, and almond milk blend.', 1, 'assets/smoothie.jpg'),
(21, 'Sourdough Bread', '24 hours', 'Traditional fermented crusty bread.', 1, 'assets/sourdough.jpg'),
(22, 'Greek Salad', '15 mins', 'Cucumber, olives, and feta cheese.', 2, 'assets/greek_salad.jpg'),
(23, 'Lentil Soup', '40 mins', 'Hearty spiced red lentil soup.', 4, 'assets/lentil_soup.jpg'),
(24, 'Vegetable Stirfry', '10 mins', 'Zero-waste broccoli and carrot fry.', 2, 'assets/stirfry.jpg'),
(25, 'Beef Wellington', '2 hours', 'Premium beef wrapped in pastry.', 4, 'assets/beef_wellington.jpg'),
(26, 'Penne Arrabiata', '20 mins', 'Spicy tomato sauce pasta.', 2, 'assets/arrabiata.jpg'),
(27, 'Fried Chicken', '30 mins', 'Extra crispy buttermilk chicken.', 4, 'assets/fried_chicken.jpg'),
(28, 'Keto Salad', '10 mins', 'High fat, low carb green salad.', 1, 'assets/keto_salad.jpg'),
(29, 'Apple Pie', '1.5 hours', 'Classic cinnamon apple filling.', 8, 'assets/apple_pie.jpg'),
(30, 'Fish Tacos', '25 mins', 'Cod tacos with lime slaw.', 3, 'assets/fish_tacos.jpg');


-- 3. INGREDIENT (IDs 11-20)
INSERT INTO INGREDIENT (id, name, calories, type) VALUES 
(NULL, 'Sourdough Starter', 50, 'Grains'),
(NULL, 'Feta Cheese', 264, 'Dairy'),
(NULL, 'Red Lentils', 116, 'Legumes'),
(NULL, 'Broccoli', 34, 'Vegetables'),
(NULL, 'Beef Fillet', 250, 'Meat'),
(NULL, 'Chili Flakes', 6, 'Spice'),
(NULL, 'Buttermilk', 40, 'Dairy'),
(NULL, 'Spinach', 23, 'Vegetables'),
(NULL, 'Apples', 52, 'Fruit'),
(NULL, 'Cod Fillet', 82, 'Seafood');

-- 4. POST
INSERT INTO POST (id, id_recipe, id_user, caption, image_url) VALUES 
(NULL, 21, 21, 'The crust on this bread!', 'img21.jpg'),
(NULL, 22, 22, 'Fresh summer lunch.', 'img22.jpg'),
(NULL, 25, 25, 'Special occasion dinner.', 'img25.jpg'),
(NULL, 26, 26, 'Spicy!!', 'img26.jpg'),
(NULL, 27, 27, 'Better than takeout.', 'img27.jpg'),
(NULL, 28, 28, 'Keeping it keto.', 'img28.jpg'),
(NULL, 29, 29, 'Grandmas recipe.', 'img29.jpg'),
(NULL, 30, 30, 'Taco Tuesday!', 'img30.jpg'),
(NULL, 23, 23, 'Warm soul food.', 'img23.jpg'),
(NULL, 24, 24, 'Fridge cleanout stirfry.', 'img24.jpg');

-- 5. REVIEWS
INSERT INTO REVIEWS (id, likes, comment, id_recipe, id_user, rating) VALUES 
(NULL, 100, 'Best bread ever!', 21, 25, 5),
(NULL, 12, 'So healthy.', 22, 28, 4),
(NULL, 45, 'Perfect spice level.', 26, 30, 5),
(NULL, 8, 'A bit difficult.', 25, 21, 3),
(NULL, 20, 'Crispy indeed!', 27, 26, 5),
(NULL, 5, 'Too much vinegar.', 28, 22, 2),
(NULL, 60, 'Perfect crust.', 29, 23, 5),
(NULL, 33, 'Delicious cod.', 30, 24, 4),
(NULL, 15, 'Very filling.', 23, 27, 5),
(NULL, 2, 'Simple but good.', 24, 29, 4);

-- 6. MENU
INSERT INTO MENU (id, plannes_date, id_recipe, id_user, meal_type) VALUES 
(NULL, '2025-02-01', 21, 21, 'Breakfast'),
(NULL, '2025-02-01', 25, 25, 'Dinner'),
(NULL, '2025-02-02', 22, 22, 'Lunch'),
(NULL, '2025-02-02', 26, 26, 'Dinner'),
(NULL, '2025-02-03', 23, 23, 'Lunch'),
(NULL, '2025-02-03', 27, 27, 'Dinner'),
(NULL, '2025-02-04', 28, 28, 'Lunch'),
(NULL, '2025-02-04', 24, 24, 'Dinner'),
(NULL, '2025-02-05', 30, 30, 'Lunch'),
(NULL, '2025-02-05', 29, 29, 'Dessert');

-- 7. HISTORY
INSERT INTO HISTORY (id, id_recipe, id_user, action_type) VALUES 
(NULL, 21, 25, 'Viewed'), (NULL, 22, 28, 'Saved'), (NULL, 25, 21, 'Cooked'),
(NULL, 26, 30, 'Liked'), (NULL, 27, 26, 'Viewed'), (NULL, 28, 22, 'Saved'),
(NULL, 29, 23, 'Cooked'), (NULL, 30, 24, 'Liked'), (NULL, 23, 27, 'Viewed'),
(NULL, 24, 29, 'Saved');

-- 8. RECIPE_INGREDIENT
-- Links Recipes 21-30 to Ingredients 11-20
INSERT INTO RECIPE_INGREDIENT (id_recipe, id_ingredient, amount, unit, atributo) VALUES 
(21, 11, 1.00, 'cup', 'Active'),
(22, 12, 50.00, 'g', 'Crumbled'),
(23, 13, 200.00, 'g', 'Dry'),
(24, 14, 1.00, 'head', 'Chopped'),
(25, 15, 600.00, 'g', 'Center cut'),
(26, 16, 1.00, 'tsp', 'Dried'),
(27, 17, 500.00, 'ml', 'Cold'),
(28, 18, 2.00, 'cups', 'Fresh'),
(29, 19, 4.00, 'pcs', 'Granny Smith'),
(30, 20, 300.00, 'g', 'Flaky');

SET FOREIGN_KEY_CHECKS = 1;

-- 1. USER (10 Users with NULL IDs to trigger AUTO_INCREMENT)
INSERT INTO USER (id, email, phone, username, password) VALUES 
(NULL, 'clara_b@demo.com', '555-1001', 'ClaraBakes', '$2b$12$C1l2a3r4a5B6a7k8e9s0H1a2s3h4V5a6l7u8'),
(NULL, 'david_dev@code.com', '555-1002', 'CodingCook', '$2b$12$D1a2v3i4d5D6e7v8P9a0s1s2w3o4r5d6H7a8'),
(NULL, 'elena_fit@gym.com', '555-1003', 'ElenaFit', '$2b$12$E1l2e3n4a5F6i7t8V9i0b1e2s3H4a5s6h7L8'),
(NULL, 'frankie_g@bbq.com', '555-1004', 'FrankieGrills', '$2b$12$F1r2a3n4k5i6e7G8r9i0l1l2s3H4a5s6h7I8'),
(NULL, 'gina_v@vegan.com', '555-1005', 'GinaVegan', '$2b$12$G1i2n3a4V5e6g7a8n9V1i0b1e2s3H4a5s6h7'),
(NULL, 'henry_h@home.com', '555-1006', 'HenryHomeChef', '$2b$12$H1e2n3r4y5H6o7m8e9C0h1e2f3H4a5s6h7J8'),
(NULL, 'iris_i@india.com', '555-1007', 'IrisSpices', '$2b$12$I1r2i3s4S5p6i7c8e9s0I1n2d3i4a5H6a7s8'),
(NULL, 'jack_j@burger.com', '555-1008', 'JackBurger', '$2b$12$J1a2c3k4B5u6r7g8e9r0K1i2n3g4H5a6s7h8'),
(NULL, 'kara_k@kitchen.com', '555-1009', 'KaraKitchen', '$2b$12$K1a2r3a4K5i6t7c8h9e0n1Q2u3e4e5n6H7a8'),
(NULL, 'leo_l@luxury.com', '555-1010', 'LeoLuxury', '$2b$12$L1e2o3L4u5x6u7r8y9C0h1e2f3H4a5s6h7P8');



-- 3. INGREDIENT (10 Ingredients)
INSERT INTO INGREDIENT (id, name, calories, type) VALUES 
(1, 'Spaghetti', 158, 'Grain'),
(2, 'Large Egg', 72, 'Dairy'),
(3, 'Guanciale', 655, 'Meat'),
(4, 'Dark Chocolate', 546, 'Sweet'),
(5, 'Quinoa', 120, 'Grain'),
(6, 'Pork Ribs', 242, 'Meat'),
(7, 'Almond Flour', 160, 'Nut'),
(8, 'Sea Scallops', 111, 'Seafood'),
(9, 'Avocado', 160, 'Fruit'),
(10, 'Chicken Breast', 165, 'Meat');

-- 5. REVIEWS (10 Reviews)
INSERT INTO REVIEWS (likes, comment, id_recipe, id_user, rating) VALUES 
(12, 'Perfect texture!', 1, 2, 5),
(5, 'A bit too sweet.', 2, 4, 3),
(20, 'Love this for lunch.', 3, 1, 5),
(8, 'The glaze is killer.', 4, 6, 5),
(3, 'Hard to make, but worth it.', 5, 9, 4),
(15, 'So fresh!', 6, 10, 5),
(2, 'Classic.', 7, 3, 4),
(10, 'Best curry recipe.', 8, 5, 5),
(7, 'Juicy!', 9, 8, 5),
(4, 'Very refreshing.', 10, 7, 4);



-- 7. HISTORY (10 History Logs)
INSERT INTO HISTORY (id_recipe, id_user, action_type) VALUES 
(1, 2, 'Viewed'), (2, 4, 'Liked'), (3, 1, 'Cooked'), (4, 6, 'Saved'),
(5, 9, 'Shared'), (6, 10, 'Cooked'), (7, 3, 'Viewed'), (8, 5, 'Liked'),
(9, 8, 'Saved'), (10, 7, 'Cooked');

-- 8. RECIPE_INGREDIENT (10 Links)
INSERT INTO recipe_ingredient (id_recipe, id_ingredient, amount, unit, atributo) VALUES
-- 1 Spaghetti Carbonara
(1, 1, 200, 'g', NULL),
(1, 2, 2, 'pcs', 'egg yolk'),
(1, 3, 100, 'g', 'diced'),
(1, 4, 50, 'g', 'grated'),

-- 2 Chocolate Fondant
(2, 5, 200, 'g', 'dark'),
(2, 6, 100, 'g', 'unsalted'),
(2, 7, 50, 'g', NULL),

-- 3 Quinoa Buddha Bowl
(3, 8, 150, 'g', 'cooked'),
(3, 9, 100, 'g', 'roasted'),
(3, 10, 50, 'g', 'fresh'),

-- 4 Smoked BBQ Ribs
(4, 11, 1.5, 'kg', NULL),
(4, 12, 200, 'ml', 'honey bourbon'),

-- 5 Strawberry Macarons
(5, 13, 120, 'g', 'fine'),
(5, 14, 100, 'g', 'powdered'),

-- 6 Pan-Seared Scallops
(6, 15, 300, 'g', NULL),
(6, 16, 1, 'pcs', 'zest'),

-- 7 Avocado Toast
(7, 17, 2, 'slices', 'sourdough'),
(7, 18, 1, 'pcs', 'mashed'),

-- 8 Chicken Tikka Masala
(8, 19, 500, 'g', 'diced'),
(8, 20, 300, 'ml', 'spiced'),
(8, 21, 150, 'g', 'greek'),

-- 9 Classic Smash Burger
(9, 22, 300, 'g', 'ground'),
(9, 23, 4, 'slices', 'melted'),

-- 10 Green Smoothie
(10, 24, 50, 'g', 'fresh'),
(10, 25, 1, 'pcs', 'ripe'),

-- 11 Sourdough Bread
(11, 7, 500, 'g', 'bread flour'),

-- 12 Greek Salad
(12, 29, 150, 'g', 'chopped'),
(12, 28, 100, 'g', 'crumbled'),

-- 13 Lentil Soup
(13, 30, 250, 'g', 'red'),
(13, 20, 500, 'ml', 'vegetable'),

-- 14 Vegetable Stirfry
(14, 10, 100, 'g', 'sliced'),
(14, 29, 100, 'g', 'julienne'),

-- 15 Beef Wellington
(15, 22, 1, 'kg', 'beef tenderloin'),
(15, 7, 500, 'g', 'puff pastry'),

-- 16 Penne Arrabiata
(16, 1, 200, 'g', 'penne'),
(16, 20, 300, 'ml', 'spicy'),

-- 17 Fried Chicken
(17, 19, 1, 'kg', 'buttermilk marinated'),
(17, 7, 200, 'g', 'coating'),

-- 18 Keto Salad
(18, 10, 80, 'g', 'leafy'),
(18, 18, 1, 'pcs', 'sliced'),

-- 19 Apple Pie
(19, 7, 300, 'g', 'pastry'),
(19, 14, 100, 'g', 'brown'),

-- 20 Fish Tacos
(20, 27, 400, 'g', 'cod'),
(20, 26, 6, 'pcs', 'corn');

INSERT INTO ingredientes (name, calories, type) VALUES
('Spaghetti', 158, 'pasta'),
('Egg', 155, 'protein'),
('Guanciale', 655, 'meat'),
('Parmesan Cheese', 431, 'dairy'),
('Black Pepper', 251, 'spice'),

('Dark Chocolate', 546, 'sweet'),
('Butter', 717, 'dairy'),
('Flour', 364, 'grain'),
('Sugar', 387, 'sweet'),

('Quinoa', 120, 'grain'),
('Chickpeas', 164, 'legume'),
('Kale', 49, 'vegetable'),
('Olive Oil', 884, 'fat'),

('Pork Ribs', 291, 'meat'),
('BBQ Sauce', 172, 'sauce'),
('Dry Rub Spices', 282, 'spice'),

('Almond Flour', 571, 'nut'),
('Strawberry Jam', 278, 'sweet'),

('Scallops', 111, 'seafood'),
('Lemon', 29, 'fruit'),

('Bread', 265, 'grain'),
('Avocado', 160, 'fruit'),
('Chili Flakes', 282, 'spice'),

('Chicken', 239, 'meat'),
('Tomato Sauce', 29, 'vegetable'),
('Yogurt', 59, 'dairy'),
('Garam Masala', 349, 'spice'),

('Ground Beef', 250, 'meat'),
('Cheddar Cheese', 403, 'dairy'),
('Burger Bun', 279, 'grain'),

('Spinach', 23, 'vegetable'),
('Banana', 89, 'fruit'),
('Almond Milk', 13, 'dairy alternative'),

('Salt', 0, 'seasoning'),
('Sourdough Starter', 150, 'fermented'),

('Cucumber', 16, 'vegetable'),
('Feta Cheese', 264, 'dairy'),
('Olives', 145, 'fat'),

('Red Lentils', 116, 'legume'),
('Onion', 40, 'vegetable'),
('Cumin', 375, 'spice'),

('Broccoli', 34, 'vegetable'),
('Carrot', 41, 'vegetable'),
('Soy Sauce', 53, 'sauce'),

('Mushroom Duxelles', 60, 'vegetable'),

('Nuts', 607, 'nut'),

('Apple', 52, 'fruit'),
('Cinnamon', 247, 'spice'),

('Cod', 82, 'seafood'),
('Tortilla', 218, 'grain'),
('Lime', 30, 'fruit');

SET FOREIGN_KEY_CHECKS = 1;
```
**login.sql**
```sql
CREATE DATABASE login_system;

USE login_system;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL
);



CREATE USER 
'login_system'@'localhost' 
IDENTIFIED  BY 'Login_system123$';

GRANT USAGE ON *.* TO 'login_system'@'localhost';

ALTER USER 'login_system'@'localhost' 
REQUIRE NONE 
WITH MAX_QUERIES_PER_HOUR 0 
MAX_CONNECTIONS_PER_HOUR 0 
MAX_UPDATES_PER_HOUR 0 
MAX_USER_CONNECTIONS 0;

GRANT ALL PRIVILEGES ON login_system.* 
TO 'login_system'@'localhost';

FLUSH PRIVILEGES;
```
**mysql databases.sql**
```sql
CREATE DATABASE IF NOT EXISTS recipe_app;
USE recipe_app;

-- 1. USER Table
CREATE TABLE USER (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255),
    phone VARCHAR(20),
    username VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL
);

-- 2. RECIPE Table
CREATE TABLE RECIPE (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_user INT,
    title VARCHAR(100) NOT NULL,
    prep_time VARCHAR(50),
    description TEXT,
    img VARCHAR(255),
    serving INT,
    FOREIGN KEY (id_user) REFERENCES USER(id) ON DELETE SET NULL
);

-- 3. INGREDIENT Table
CREATE TABLE INGREDIENT (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    calories INT,
    type VARCHAR(50)
);

-- 4. POST Table
CREATE TABLE POST (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_recipe INT,
    id_user INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    caption TEXT,
    image_url VARCHAR(255),
    FOREIGN KEY (id_recipe) REFERENCES RECIPE(id) ON DELETE CASCADE,
    FOREIGN KEY (id_user) REFERENCES USER(id) ON DELETE CASCADE
);

-- 5. REVIEWS Table
CREATE TABLE REVIEWS (
    id INT AUTO_INCREMENT PRIMARY KEY,
    likes INT DEFAULT 0,
    comment TEXT,
    id_recipe INT,
    id_user INT,
    rating INT,
    FOREIGN KEY (id_recipe) REFERENCES RECIPE(id) ON DELETE CASCADE,
    FOREIGN KEY (id_user) REFERENCES USER(id) ON DELETE CASCADE
);

-- 6. MENU Table
CREATE TABLE MENU (
    id INT AUTO_INCREMENT PRIMARY KEY,
    plannes_date DATE,
    id_recipe INT,
    id_user INT,
    meal_type VARCHAR(50),
    FOREIGN KEY (id_recipe) REFERENCES RECIPE(id) ON DELETE CASCADE,
    FOREIGN KEY (id_user) REFERENCES USER(id) ON DELETE CASCADE
);

-- 7. HISTORY Table
CREATE TABLE HISTORY (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_recipe INT,
    date_time DATETIME DEFAULT CURRENT_TIMESTAMP,
    id_user INT,
    action_type VARCHAR(50),
    FOREIGN KEY (id_recipe) REFERENCES RECIPE(id) ON DELETE SET NULL,
    FOREIGN KEY (id_user) REFERENCES USER(id) ON DELETE CASCADE
);

-- 8. RECIPE_INGREDIENT (Many-to-Many Bridge Table)
CREATE TABLE RECIPE_INGREDIENT (
    id_recipe INT,
    id_ingredient INT,
    amount DECIMAL(10, 2),
    unit VARCHAR(20),
    atributo VARCHAR(50),
    PRIMARY KEY (id_recipe, id_ingredient),
    FOREIGN KEY (id_recipe) REFERENCES RECIPE(id) ON DELETE CASCADE,
    FOREIGN KEY (id_ingredient) REFERENCES INGREDIENT(id) ON DELETE CASCADE
);


-- 1. Create the user with the credentials from your PHP $user and $pass
CREATE USER 'admin_recipe_app'@'localhost' 
IDENTIFIED BY 'Login_system123$';

-- 2. Initial usage grant
GRANT USAGE ON *.* TO 'admin_recipe_app'@'localhost';

-- 3. Set resource limits (keeping your original requirements)
ALTER USER 'admin_recipe_app'@'localhost' 
REQUIRE NONE 
WITH MAX_QUERIES_PER_HOUR 0 
MAX_CONNECTIONS_PER_HOUR 0 
MAX_UPDATES_PER_HOUR 0 
MAX_USER_CONNECTIONS 0;

-- 4. Grant privileges specifically to the 'recipe_app' database
-- This matches your PHP $db variable
GRANT ALL PRIVILEGES ON recipe_app.* TO 'admin_recipe_app'@'localhost';

-- 5. Apply changes
FLUSH PRIVILEGES;
```
#### v0.2
**Create_View.sql**
```sql
Planer.php
[I use this view](https://github.com/user/repo/blob/main/src/my_code.py#L42-L60)


CREATE VIEW user_meal_plans AS
SELECT 
    m.id_user,
    m.plannes_date, 
    m.meal_type, 
    r.title, 
    r.id AS rid 
FROM menus m 
JOIN recipes r ON m.id_recipe = r.id;

SELECT * FROM user_meal_plans;

Profile.php
CREATE VIEW view_upcoming_meals AS
SELECT 
    m.id_user,
    m.plannes_date, 
    m.meal_type, 
    r.title, 
    r.id AS rid 
FROM menus m 
JOIN recipes r ON m.id_recipe = r.id
WHERE m.plannes_date >= CURDATE();


Recipe_details.php
-- View for Ingredients
CREATE VIEW view_recipe_ingredients AS
SELECT 
    ri.id_recipe,
    i.name, 
    ri.amount, 
    ri.unit 
FROM ingredients i 
JOIN recipe_ingredientes ri ON i.id = ri.id_ingredient;

-- View for Instructions
CREATE VIEW view_recipe_steps AS
SELECT 
    rs.recipe_id,
    rs.step_number, 
    rs.step_description 
FROM recipe_steps rs;
```
**Create_database.sql**
```sql
CREATE DATABASE IF NOT EXISTS recipe_app;
USE recipe_app;

-- 1. USER Table
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255),
    phone VARCHAR(20),
    username VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL
);

-- 2. RECIPE Table
CREATE TABLE recipes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_user INT,
    title VARCHAR(100) NOT NULL,
    prep_time VARCHAR(50),
    description TEXT,
    img VARCHAR(255),
    serving INT,
    FOREIGN KEY (id_user) REFERENCES users(id) ON DELETE SET NULL
);

-- 3. INGREDIENT Table
CREATE TABLE  ingredients (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    calories INT,
    type VARCHAR(50)
);

-- 6. MENU Table
CREATE TABLE menus (
    id INT AUTO_INCREMENT PRIMARY KEY,
    plannes_date DATE,
    id_recipe INT,
    id_user INT,
    meal_type VARCHAR(50),
    FOREIGN KEY (id_recipe) REFERENCES recipes(id) ON DELETE CASCADE,
    FOREIGN KEY (id_user) REFERENCES users(id) ON DELETE CASCADE
);



-- 8. RECIPE_INGREDIENT (Many-to-Many Bridge Table)
CREATE TABLE recipe_ingredientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_recipe INT NOT NULL,
    id_ingredient INT NOT NULL,
    amount DECIMAL(10, 2),
    unit VARCHAR(20),
    atributo VARCHAR(50),
    FOREIGN KEY (id_recipe) REFERENCES recipes(id) ON DELETE CASCADE,
    FOREIGN KEY (id_ingredient) REFERENCES ingredients(id) ON DELETE CASCADE,
    UNIQUE KEY unique_recipe_ingredient (id_recipe, id_ingredient)
);
-- 8. RECIPErecipe_step (Many-to-Many Bridge Table)

CREATE TABLE recipe_steps (
         id INT AUTO_INCREMENT PRIMARY KEY,
         recipe_id INT,                  
         step_number INT,                
         step_description TEXT,          
         FOREIGN KEY (recipe_id) REFERENCES recipes (id) ON DELETE CASCADE
     );


ALTER TABLE recipe_ingredientes 
    ADD UNIQUE KEY (id_recipe, id_ingredient);



```
**Create_user.sql**
```sql
-- 1. Create the users with the credentials from your PHP $users and $pass
CREATE USER 'admin_recipe_app'@'localhost' 
IDENTIFIED BY 'Login_system123$';

-- 2. Initial usage grant
GRANT USAGE ON *.* TO 'admin_recipe_app'@'localhost';

-- 3. Set resource limits (keeping your original requirements)
ALTER USER 'admin_recipe_app'@'localhost' 
REQUIRE NONE 
WITH MAX_QUERIES_PER_HOUR 0 
MAX_CONNECTIONS_PER_HOUR 0 
MAX_UPDATES_PER_HOUR 0 
MAX_USER_CONNECTIONS 0;

-- 4. Grant privileges specifically to the 'recipe_app' database
-- This matches your PHP $db variable
GRANT ALL PRIVILEGES ON recipe_app.* TO 'admin_recipe_app'@'localhost';

-- 5. Apply changes
FLUSH PRIVILEGES;
```
**insert_for_test.sql**
```sql
SET FOREIGN_KEY_CHECKS = 0;
-- 1. USER (10 Users with NULL IDs to trigger AUTO_INCREMENT)
INSERT INTO users (id, email, phone, username, password) VALUES 
(NULL, 'clara_b@demo.com', '555-1001', 'ClaraBakes', '$2b$12$C1l2a3r4a5B6a7k8e9s0H1a2s3h4V5a6l7u8'),
(NULL, 'david_dev@code.com', '555-1002', 'CodingCook', '$2b$12$D1a2v3i4d5D6e7v8P9a0s1s2w3o4r5d6H7a8'),
(NULL, 'elena_fit@gym.com', '555-1003', 'ElenaFit', '$2b$12$E1l2e3n4a5F6i7t8V9i0b1e2s3H4a5s6h7L8'),
(NULL, 'frankie_g@bbq.com', '555-1004', 'FrankieGrills', '$2b$12$F1r2a3n4k5i6e7G8r9i0l1l2s3H4a5s6h7I8'),
(NULL, 'gina_v@vegan.com', '555-1005', 'GinaVegan', '$2b$12$G1i2n3a4V5e6g7a8n9V1i0b1e2s3H4a5s6h7'),
(NULL, 'henry_h@home.com', '555-1006', 'HenryHomeChef', '$2b$12$H1e2n3r4y5H6o7m8e9C0h1e2f3H4a5s6h7J8'),
(NULL, 'iris_i@india.com', '555-1007', 'IrisSpices', '$2b$12$I1r2i3s4S5p6i7c8e9s0I1n2d3i4a5H6a7s8'),
(NULL, 'jack_j@burger.com', '555-1008', 'JackBurger', '$2b$12$J1a2c3k4B5u6r7g8e9r0K1i2n3g4H5a6s7h8'),
(NULL, 'kara_k@kitchen.com', '555-1009', 'KaraKitchen', '$2b$12$K1a2r3a4K5i6t7c8h9e0n1Q2u3e4e5n6H7a8'),
(NULL, 'leo_l@luxury.com', '555-1010', 'LeoLuxury', '$2b$12$L1e2o3L4u5x6u7r8y9C0h1e2f3H4a5s6h7P8');
-- 1. USER (IDs 21-30)
INSERT INTO users (id, email, phone, username, password) VALUES 
(NULL, 'will@bakery.com', '555-3001', 'WillWheat', '$2b$12$W1i2l3l4B5a6k7e8r9y0H1a2s3h4V5a6'),
(NULL, 'xenia@food.com', '555-3002', 'XeniaXo', '$2b$12$X1e2n3i4a5F6o7o8d9H1a2s3h4V5a6l7u8'),
(NULL, 'yusef@spice.com', '555-3003', 'YusefCooks', '$2b$12$Y1u2s3e4f5S6p7i8c9e0H1a2s3h4V5a6'),
(NULL, 'zara@zero.com', '555-3004', 'ZaraZeroWaste', '$2b$12$Z1a2r3a4Z5e6r7o8W9a0s1t2e3H4a5s6'),
(NULL, 'art@culinary.com', '555-3005', 'ArtisanArt', '$2b$12$A1r2t3i4s5a6n7H8a9s0h1v2a3l4u5e6'),
(NULL, 'bella@ciao.com', '555-3006', 'BellaPasta', '$2b$12$B1e2l3l4a5C6i7a8o9H1a2s3h4V5a6l7'),
(NULL, 'cris@fire.com', '555-3007', 'CrispyCris', '$2b$12$C1r2i3s4p5y6F7i8r9e0H1a2s3h4V5a6'),
(NULL, 'dan@diet.com', '555-3008', 'DanDiets', '$2b$12$D1a2n3D4i5e6t7s8H1a2s3h4V5a6l7u8'),
(NULL, 'eva@eat.com', '555-3009', 'EvaEats', '$2b$12$E1v2a3E4a5t6s7H8a9s0h1v2a3l4u5e6'),
(NULL, 'finn@fish.com', '555-3010', 'FinnishFish', '$2b$12$F1i2n3n4i5s6h7F8i9s0h1H2a3s4h5V6');

INSERT INTO users (id, email, phone, username, password) VALUES 
(NULL, 'will@bakery.com', '555-3001', 'WillWheat', '$2b$12$W1i2l3l4B5a6k7e8r9y0H1a2s3h4V5a6'),
(NULL, 'xenia@food.com', '555-3002', 'XeniaXo', '$2b$12$X1e2n3i4a5F6o7o8d9H1a2s3h4V5a6l7u8'),
(NULL, 'yusef@spice.com', '555-3003', 'YusefCooks', '$2b$12$Y1u2s3e4f5S6p7i8c9e0H1a2s3h4V5a6'),
(NULL, 'zara@zero.com', '555-3004', 'ZaraZeroWaste', '$2b$12$Z1a2r3a4Z5e6r7o8W9a0s1t2e3H4a5s6'),
(NULL, 'art@culinary.com', '555-3005', 'ArtisanArt', '$2b$12$A1r2t3i4s5a6n7H8a9s0h1v2a3l4u5e6'),
(NULL, 'bella@ciao.com', '555-3006', 'BellaPasta', '$2b$12$B1e2l3l4a5C6i7a8o9H1a2s3h4V5a6l7'),
(NULL, 'cris@fire.com', '555-3007', 'CrispyCris', '$2b$12$C1r2i3s4p5y6F7i8r9e0H1a2s3h4V5a6'),
(NULL, 'dan@diet.com', '555-3008', 'DanDiets', '$2b$12$D1a2n3D4i5e6t7s8H1a2s3h4V5a6l7u8'),
(NULL, 'eva@eat.com', '555-3009', 'EvaEats', '$2b$12$E1v2a3E4a5t6s7H8a9s0h1v2a3l4u5e6'),
(NULL, 'finn@fish.com', '555-3010', 'FinnishFish', '$2b$12$F1i2n3n4i5s6h7F8i9s0h1H2a3s4h5V6');

-- 2. RECIPE (IDs 21-30)
INSERT INTO recipes (id_user, title, prep_time, description, serving, img) VALUES
(10, 'Spaghetti Carbonara', '20 mins', 'Authentic Roman pasta with egg and guanciale.', 2, 'assets/carbonara.jpg'),
(2, 'Chocolate Fondant', '15 mins', 'Molten lava cake with a gooey center.', 4, 'assets/fondant.jpg'),
(4, 'Quinoa Buddha Bowl', '25 mins', 'Healthy bowl with roasted chickpeas and kale.', 1, 'assets/quinoa.jpg'),
(3, 'Smoked BBQ Ribs', '4 hours', 'Slow-cooked ribs with a honey bourbon glaze.', 6, 'assets/ribs.jpg'),
(7, 'Strawberry Macarons', '1 hour', 'Delicate French almond cookies with jam filling.', 12, 'assets/macarons.jpg'),
(6, 'Pan-Seared Scallops', '10 mins', 'Scallops with lemon butter and pea puree.', 2, 'assets/scallops.jpg'),
(8, 'Avocado Toast', '5 mins', 'Sourdough with mashed avocado and chili flakes.', 1, 'assets/avocado_toast.jpg'),
(1, 'Chicken Tikka Masala', '45 mins', 'Creamy spiced tomato curry with tender chicken.', 4, 'assets/chicken_tikka.jpg'),
(5, 'Classic Smash Burger', '15 mins', 'Crispy beef patties with melted cheddar.', 2, 'assets/burger.jpg'),
(9, 'Green Smoothie', '5 mins', 'Spinach, banana, and almond milk blend.', 1, 'assets/smoothie.jpg'),
(21, 'Sourdough Bread', '24 hours', 'Traditional fermented crusty bread.', 1, 'assets/sourdough.jpg'),
(22, 'Greek Salad', '15 mins', 'Cucumber, olives, and feta cheese.', 2, 'assets/greek_salad.jpg'),
(23, 'Lentil Soup', '40 mins', 'Hearty spiced red lentil soup.', 4, 'assets/lentil_soup.jpg'),
(24, 'Vegetable Stirfry', '10 mins', 'Zero-waste broccoli and carrot fry.', 2, 'assets/stirfry.jpg'),
(25, 'Beef Wellington', '2 hours', 'Premium beef wrapped in pastry.', 4, 'assets/beef_wellington.jpg'),
(26, 'Penne Arrabiata', '20 mins', 'Spicy tomato sauce pasta.', 2, 'assets/arrabiata.jpg'),
(27, 'Fried Chicken', '30 mins', 'Extra crispy buttermilk chicken.', 4, 'assets/fried_chicken.jpg'),
(28, 'Keto Salad', '10 mins', 'High fat, low carb green salad.', 1, 'assets/keto_salad.jpg'),
(29, 'Apple Pie', '1.5 hours', 'Classic cinnamon apple filling.', 8, 'assets/apple_pie.jpg'),
(30, 'Fish Tacos', '25 mins', 'Cod tacos with lime slaw.', 3, 'assets/fish_tacos.jpg');







-- 6. MENU
INSERT INTO menus (id, plannes_date, id_recipe, id_user, meal_type) VALUES 
(NULL, '2025-02-01', 21, 21, 'Breakfast'),
(NULL, '2025-02-01', 25, 25, 'Dinner'),
(NULL, '2025-02-02', 22, 22, 'Lunch'),
(NULL, '2025-02-02', 26, 26, 'Dinner'),
(NULL, '2025-02-03', 23, 23, 'Lunch'),
(NULL, '2025-02-03', 27, 27, 'Dinner'),
(NULL, '2025-02-04', 28, 28, 'Lunch'),
(NULL, '2025-02-04', 24, 24, 'Dinner'),
(NULL, '2025-02-05', 30, 30, 'Lunch'),
(NULL, '2025-02-05', 29, 29, 'Dessert');









INSERT INTO ingredients (name, calories, type) VALUES
('Spaghetti', 158, 'pasta'),
('Egg', 155, 'protein'),
('Guanciale', 655, 'meat'),
('Parmesan Cheese', 431, 'dairy'),
('Black Pepper', 251, 'spice'),

('Dark Chocolate', 546, 'sweet'),
('Butter', 717, 'dairy'),
('Flour', 364, 'grain'),
('Sugar', 387, 'sweet'),

('Quinoa', 120, 'grain'),
('Chickpeas', 164, 'legume'),
('Kale', 49, 'vegetable'),
('Olive Oil', 884, 'fat'),

('Pork Ribs', 291, 'meat'),
('BBQ Sauce', 172, 'sauce'),
('Dry Rub Spices', 282, 'spice'),

('Almond Flour', 571, 'nut'),
('Strawberry Jam', 278, 'sweet'),

('Scallops', 111, 'seafood'),
('Lemon', 29, 'fruit'),

('Bread', 265, 'grain'),
('Avocado', 160, 'fruit'),
('Chili Flakes', 282, 'spice'),

('Chicken', 239, 'meat'),
('Tomato Sauce', 29, 'vegetable'),
('Yogurt', 59, 'dairy'),
('Garam Masala', 349, 'spice'),

('Ground Beef', 250, 'meat'),
('Cheddar Cheese', 403, 'dairy'),
('Burger Bun', 279, 'grain'),

('Spinach', 23, 'vegetable'),
('Banana', 89, 'fruit'),
('Almond Milk', 13, 'dairy alternative'),

('Salt', 0, 'seasoning'),
('Sourdough Starter', 150, 'fermented'),

('Cucumber', 16, 'vegetable'),
('Feta Cheese', 264, 'dairy'),
('Olives', 145, 'fat'),

('Red Lentils', 116, 'legume'),
('Onion', 40, 'vegetable'),
('Cumin', 375, 'spice'),

('Broccoli', 34, 'vegetable'),
('Carrot', 41, 'vegetable'),
('Soy Sauce', 53, 'sauce'),

('Mushroom Duxelles', 60, 'vegetable'),

('Nuts', 607, 'nut'),

('Apple', 52, 'fruit'),
('Cinnamon', 247, 'spice'),

('Cod', 82, 'seafood'),
('Tortilla', 218, 'grain'),
('Lime', 30, 'fruit');






SET FOREIGN_KEY_CHECKS=0;


-- 8. RECIPE_INGREDIENT (10 Links)
INSERT INTO recipe_ingredientes (id_recipe, id_ingredient, amount, unit, atributo) VALUES
-- 1 Spaghetti Carbonara
(1, 1, 200, 'g', NULL),
(1, 2, 2, 'pcs', 'egg yolk'),
(1, 3, 100, 'g', 'diced'),
(1, 4, 50, 'g', 'grated'),

-- 2 Chocolate Fondant
(2, 5, 200, 'g', 'dark'),
(2, 6, 100, 'g', 'unsalted'),
(2, 7, 50, 'g', NULL),

-- 3 Quinoa Buddha Bowl
(3, 8, 150, 'g', 'cooked'),
(3, 9, 100, 'g', 'roasted'),
(3, 10, 50, 'g', 'fresh'),

-- 4 Smoked BBQ Ribs
(4, 11, 1.5, 'kg', NULL),
(4, 12, 200, 'ml', 'honey bourbon'),

-- 5 Strawberry Macarons
(5, 13, 120, 'g', 'fine'),
(5, 14, 100, 'g', 'powdered'),

-- 6 Pan-Seared Scallops
(6, 15, 300, 'g', NULL),
(6, 16, 1, 'pcs', 'zest'),

-- 7 Avocado Toast
(7, 17, 2, 'slices', 'sourdough'),
(7, 18, 1, 'pcs', 'mashed'),

-- 8 Chicken Tikka Masala
(8, 19, 500, 'g', 'diced'),
(8, 20, 300, 'ml', 'spiced'),
(8, 21, 150, 'g', 'greek'),

-- 9 Classic Smash Burger
(9, 22, 300, 'g', 'ground'),
(9, 23, 4, 'slices', 'melted'),

-- 10 Green Smoothie
(10, 24, 50, 'g', 'fresh'),
(10, 25, 1, 'pcs', 'ripe'),

-- 11 Sourdough Bread
(11, 7, 500, 'g', 'bread flour'),

-- 12 Greek Salad
(12, 29, 150, 'g', 'chopped'),
(12, 28, 100, 'g', 'crumbled'),

-- 13 Lentil Soup
(13, 30, 250, 'g', 'red'),
(13, 20, 500, 'ml', 'vegetable'),

-- 14 Vegetable Stirfry
(14, 10, 100, 'g', 'sliced'),
(14, 29, 100, 'g', 'julienne'),

-- 15 Beef Wellington
(15, 22, 1, 'kg', 'beef tenderloin'),
(15, 7, 500, 'g', 'puff pastry'),

-- 16 Penne Arrabiata
(16, 1, 200, 'g', 'penne'),
(16, 20, 300, 'ml', 'spicy'),

-- 17 Fried Chicken
(17, 19, 1, 'kg', 'buttermilk marinated'),
(17, 7, 200, 'g', 'coating'),

-- 18 Keto Salad
(18, 10, 80, 'g', 'leafy'),
(18, 18, 1, 'pcs', 'sliced'),

-- 19 Apple Pie
(19, 7, 300, 'g', 'pastry'),
(19, 14, 100, 'g', 'brown'),

-- 20 Fish Tacos
(20, 27, 400, 'g', 'cod'),
(20, 26, 6, 'pcs', 'corn');


INSERT INTO recipe_steps (recipe_id, step_number, step_description) VALUES
     (1, 1, 'Cook the pasta until al dente.'),
     (1, 2, 'In a pan, render guanciale until crispy.'),
     (1, 3, 'Mix egg and cheese, then combine with the pasta and guanciale.'); 



INSERT INTO recipe_steps (recipe_id, step_number, step_description) VALUES
     (2, 1, 'Preheat the oven to 200°C.'),
     (2, 2, 'Melt the chocolate and butter.'),
     (2, 3, 'Pour the batter into molds and bake for 12 minutes.');


INSERT INTO recipe_steps (recipe_id, step_number, step_description) VALUES
     (3, 1, 'Cook quinoa and prepare chickpeas.'),
     (3, 2, 'Chop and roast the vegetables.'),
     (3, 3, 'Assemble the bowl with all ingredients.');

SET FOREIGN_KEY_CHECKS = 1;
```
**recipe_seteps.sql**
```sql
CREATE TABLE recipe_steps (
         id INT AUTO_INCREMENT PRIMARY KEY,
         recipe_id INT,                  -- Foreign key linking to the recipe table
         step_number INT,                -- Step number (1, 2, 3, etc.)
         step_description TEXT,          -- Description of the step
         FOREIGN KEY (recipe_id) REFERENCES recipes (id) ON DELETE CASCADE
     );

INSERT INTO recipe_steps (recipe_id, step_number, step_description) VALUES
     (1, 1, 'Cook the pasta until al dente.'),
     (1, 2, 'In a pan, render guanciale until crispy.'),
     (1, 3, 'Mix egg and cheese, then combine with the pasta and guanciale.'); 



INSERT INTO recipe_steps (recipe_id, step_number, step_description) VALUES
     (2, 1, 'Preheat the oven to 200°C.'),
     (2, 2, 'Melt the chocolate and butter.'),
     (2, 3, 'Pour the batter into molds and bake for 12 minutes.');


INSERT INTO recipe_steps (recipe_id, step_number, step_description) VALUES
     (3, 1, 'Cook quinoa and prepare chickpeas.'),
     (3, 2, 'Chop and roast the vegetables.'),
     (3, 3, 'Assemble the bowl with all ingredients.');


```
### prepare_for_examen
**Lenguajes de marcas.md**
```markdown
# 1.-Indroduccion brece y contexalizacion
mi aplicación web dinámica diseñada para la gestión y planificación de comida semanales
En este parte voy a exlicar mi estilo de la mi proyecto App de Recetas y Planificador de Comidas. Explcacion de ste parte es crasion de laa  Front uso HTML CSS 
La aplicación permite a los usuarios registrarse, iniciar sesión, hace plane de la comida por semana (o mas). En este parte voy a explicar HTML (que contiene el php) Css 



# 2.-Desarrollo técnico correcto y preciso



![diagrama](https://raw.githubusercontent.com/Sagmanua/Proyecto-Entornos-de-Desarrollo/main/dosc/prepare_for_examen/images/diagramas/diagrama_paginas.png)


![diagrama](https://raw.githubusercontent.com/Sagmanua/Proyecto-Entornos-de-Desarrollo/main/dosc/prepare_for_examen/images/diagramas/diagrama_paginas.svg)

este Diagram mustra infomacion de como coenctas la paginas de en mi pagina 
* Index es la main pagina y conectaaa todo 
* Profle es la pagina que contiene informacion de la user 
* Update login y register usa para trabajar con uasrio
* recipe_details contiene informcaion mas clara de losraipes
* planner es creado para que usario puede crear comida a la semana (o mas )


## head.php
En este documente guado en encio de la HTml que conecta a la todos de la archivos (exepto admin panel) aqui conecta la CSS. Agui tanbian esta la `nav` panel de la pagina 
```
<?php
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}
require_once __DIR__ . '/connect_bd.php'; 
?>
<!doctype html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css?v=2">
    <title>Recipe App</title>
</head>
<body>
<div class="container">
    <nav>
        <div class="nav-links">
            <a href="index.php">Home</a>
            <?php if(isset($_SESSION['user_id'])): ?>
                <a href="profile.php">My Account</a>
                <a href="inc/logout.php" style="color: #666;">Logout</a>
            <?php else: ?>
                <a href="login.php">Login</a>
                <a href="register.php">Register</a>
            <?php endif; ?>
        </div>
    </nav>
    <main>
```
## food.php
En este archivo similar de la `head.php` pero contiene la cierro de todos los archivos
```
		</main>
  	<footer>
    </footer>
  </body>
</html>
```
## index.php
Es la archivo que es la pagina mian de la mi pagina. Agui mustra la informacion corto de la recipes 
```
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
            echo '<div class="recipe-card">'; 
            echo '<div class="image-wrapper">'; 
            echo '<img src="' . $row['img'] . '" class="recipe-image">';
            echo '</div>';
            echo '<h3>' . $row['title'] . '</h3>';
            echo '<a href="recipe_details.php?id=' . $row['id'] . '" class="btn">View Full Recipe</a>';
```
## login.php
En este pagina puede hace login. Usa facil structura de la `form` con `input` para gurda informacion de la usario y luego envio a la php para procesar 
```
<?php require_once __DIR__ . '/inc/login_user.php'; ?>  
<form method="POST">
    <h2>login_system</h2>
    <input type="text" name="username" required placeholder="Username"><br><br>
    <input type="password" name="password" required placeholder="Password"><br>
    <small>Min. 8 characters + 1 number</small><br><br>
    <button name="login">Login</button>
</form>
```
## register.php
En este pagina puede hace registra la usario para gurda informacion como em `login.php` usa facil structura de la `form` ycon `input ` para gurda informacion de la usario y luego envio a la php para procesar 
```
<?php require_once __DIR__ . '/inc/create_user.php'; ?>  
<form method="POST">
    <h2>Create user</h2>
    <input type="text" name="username" required placeholder="Username"><br><br>
        <input type="text" name="email" required placeholder="email"><br><br>
    <input type="text" name="phone" required placeholder="phine"><br><br>
    <input type="password" name="password" required placeholder="Password"><br>


    <small>Min. 8 characters + 1 number</small><br><br>
    <button name="login">Create</button>
</form>
```
## update.php
En este pagina puede hace Upadate la usario para gurda informacion como em `login.php` usa facil structura de la `form` con `input` para gurda informacion de la usario y luego envio a la php para procesar 
```

<?php


require_once __DIR__ . '/inc/update_informacio.php';
(conect user de DB)

?>
<form method="POST">
    <h2>Update user</h2>

    <input type="text" name="username" required
        value="<?php echo htmlspecialchars($user['username']); ?>"
        placeholder="Username"><br><br>

    <input type="email" name="email" required
        value="<?php echo htmlspecialchars($user['email']); ?>"
        placeholder="Email"><br><br>

    <input type="text" name="phone" required
        value="<?php echo htmlspecialchars($user['phone']); ?>"
        placeholder="Phone"><br><br>

    <input type="password" name="password" placeholder="New Password"><br>
    <small>Leave empty to keep current password</small><br><br>

    <input type="hidden" name="user_id" value="<?php echo (int)$user_id; ?>">

    <button name="update">Update</button>
</form>
```
## index.php 
En este codigo mustra informacion del la todos la recipe contiene 
* Title
* img
* link a recipe_details 


```
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
            echo '<div class="recipe-card">'; 
            echo '<div class="image-wrapper">'; 
            echo '<img src="' . $row['img'] . '" class="recipe-image">';
            echo '</div>';
            echo '<h3>' . $row['title'] . '</h3>';
            echo '<a href="recipe_details.php?id=' . $row['id'] . '" class="btn">View Full Recipe</a>';
```
## planner.php

### Inicio
En este parte de la pagina usario puede crear su propia planner 
Contiene 3 partes de elgion :
* date
* type
* Recipe

```
<div class="container">
    <div class="menu-header">
        <h1>Weekly Meal Planner</h1>
        <p>Plan your meals for the upcoming days</p>
    </div>

    <div class="recipe-card" style="margin-bottom: 30px;">
        <form method="POST" style="box-shadow: none; margin: 0; max-width: 100%;">
```
### Parte 1
#### opcion 1
En este parte puede eligr la date
crea columnas automáticas que:
* tienen mínimo 200px
* se expanden hasta ocupar el espacio disponible (1fr)
* se ajustan solas según el ancho de la pantalla.
```
<div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(200px, 1fr)); gap: 15px;">
    <div>
        <label>Date</label>
        <input type="date" name="planned_date" required value="<?php echo date('Y-m-d'); ?>">
    </div>

```
#### opcion 2
En 2 `select` creo una lista en que puede elige opcion:
* Breakfast
* Lunch
* Dinner
* Snack
```
<div>
    <label>Meal Type</label>
    <select name="meal_type" required style="width:100%; padding:12px; border-radius:6px; border:1px solid #ddd;">
        <option value="Breakfast">Breakfast</option>
        <option value="Lunch">Lunch</option>
        <option value="Dinner">Dinner</option>
        <option value="Snack">Snack</option>
    </select>
</div>
```
#### opcion 3
En este parte elige recipe creo una lista que gurda en la bases de datos 
```
<div>
<label>Select Recipe</label>
<select name="id_recipe" required style="width:100%; padding:12px; border-radius:6px; border:1px solid #ddd;">
    <?php
    $recipes = $conn->query("SELECT id, title FROM recipes");
    while($r = $recipes->fetch_assoc()) {
        echo "<option value='{$r['id']}'>".htmlspecialchars($r['title'])."</option>";
}
?>
</select>
</div>
```
#### Creasion de booton
Creo una botton para gurda en style declara que esta ultima 
```
<div style="display: flex; align-items: flex-end;">
    <button name="save_menu">Add to Plan</button>
</div>
</div>
</form>
</div>
```

## profile.php
### Parte 1 
Agui de muestra todo informacio de la usarioque contiene en la Base de Datos en una lista simple 

```
<div class="profile-info">
    <div class="info-group">
        <div class="info-item">
            <label>Username:</label>
            <span><?php echo isset($_SESSION['username']) ? htmlspecialchars($_SESSION['username']) : "-"; ?></span>
        </div>
        <div class="info-item">
            <label>Email:</label>
            <span><?php echo isset($_SESSION['email']) ? htmlspecialchars($_SESSION['email']) : "-"; ?></span>
        </div>
        <div class="info-item">
            <label>Phone:</label>
            <span><?php echo isset($_SESSION['phone']) ? htmlspecialchars($_SESSION['phone']) : "-"; ?></span>
        </div>
    </div>
</div>
```
### Parte 2
creo unas botones para mover de la pagina otros paginas 
```
<div class="profile-actions">
    <a href="planner.php" class="btn-secondary">Open Full Planner</a>
    <a href="update_user.php?user_id=<?php echo $user_id; ?>" class="btn-secondary">Update</a>
    <a href="inc/logout.php" class="btn-danger">Logout</a>
</div>
</div>
</div>
```
## Parte 3
En este parte creo los facil de muestra la informmacion de la Plannes de la comida en la pagina usario 
Uso style que uso en la todos da la mi pagina 
Si no tiene nado en la plane mustra una link a `planner.php` y mustra mensage que no tiene nado 
```
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $date = date("D, M j", strtotime($row['plannes_date']));
        ?>
        <div class="recipe-card day-column">
            <span class="badge"><?php echo htmlspecialchars($row['meal_type']); ?></span>
            <h4><?php echo $date; ?></h4>
            <p style="font-weight: bold; color: #ff6b6b;"><?php echo htmlspecialchars($row['title']); ?></p>
            <a href="recipe_details.php?id=<?php echo $row['rid']; ?>" class="small-link">View Recipe</a>
        </div>
        <?php
    }
} else {
    echo "<div class='recipe-card'><p>No meals planned. <a href='planner.php'>Plan now!</a></p></div>";
```
## planner.php
Agui muestra informacion de la Recipe u como hago `instructions-box`
(borro la php para leer mas bueno puedes encontrar en la Codigo completo )
```
 echo "<h3>Ingredients:</h3>";
    echo "<ul>";
    
    $sql_ing = "SELECT name, amount, unit FROM view_recipe_ingredients WHERE 

    while ($row = $ingredients->fetch_assoc()) {
        echo "<li>" . htmlspecialchars($row['amount'] . " " . $row['unit'] . " " . $row['name']) . "</li>";
    }
    echo "</ul>";
    
    echo "<h3>Instructions:</h3>";
    


    echo "<div class='instructions-box'>";

            echo "<p><strong>Step " . $step['step_number'] . ":</strong> " . nl2br(htmlspecialchars($step['step_description'])) . "</p>";
```
## CRUD 
### Parte 1
Este `form` con `opcion` a credo para seleciona qeu tabla va seleciona en para mustra en la table y envio este informacion a php parte que proceca y vuelve informacion en la tabla  
```
<form method="get">
    <select name="table_name" onchange="this.form.submit()">
        <option value="users" <?= $table=='user'?'selected':'' ?>>Users</option>
        <option value="ingredients" <?= $table=='ingredients'?'selected':'' ?>>Ingredients</option>
        <option value="menus" <?= $table=='menus'?'selected':'' ?>>Menu</option>
        <option value="recipes" <?= $table=='recipes'?'selected':'' ?>>recipe</option>
        <option value="recipe_ingredientes" <?= $table=='recipe_ingredientes'?'selected':'' ?>>recipe_ingredient</option>
        <option value="recipe_steps" <?= $table=='recipe_steps'?'selected':'' ?>>recipe_steps</option>      
    </select>
</form>
```
### Parte 2
Este parte `from` creo una fomularion con `input` en que admin puede editar Update 
```
<form method="post">
    <input type="hidden" name="table_name" value="<?= $table ?>">
    <?php if($edit_id): ?> <input type="hidden" name="id" value="<?= $edit_id ?>"> <?php endif; ?>
    
    <?php
    $res = $conn->query("DESCRIBE $table");
    while($col = $res->fetch_assoc()): 
        if($col['Extra'] == 'auto_increment') continue;
        $name = $col['Field'];
    ?>
        <label><?= $name ?>:</label>
        <input type="text" name="f[<?= $name ?>]" value="<?= $row_to_edit[$name] ?? '' ?>" required><br>
    <?php endwhile; ?>
    <button type="submit" name="save">SAVE RECORD</button>
</form>
```
### Parte 3
En este parte creo tabla que muestra informacion delas tablas  tambien tiene buttons qequ creo con `a` para procesar la informacion 
```
<table class="crud-table">
    <?php $data = $conn->query("SELECT * FROM $table"); while($row = $data->fetch_assoc()): ?>
    <tr>
        <?php foreach($row as $v) echo "<td>$v</td>"; ?>
        <td class="actions">
            <a class="btn-edit" href="?table_name=<?= $table ?>&edit=<?= $row['id'] ?>">Edit</a>
            <a class="btn-delete" href="?table_name=<?= $table ?>&delete=<?= $row['id'] ?>" onclick="return confirm('Delete?')">Del</a>
        </td>
    </tr>
    <?php endwhile; ?>
</table>
```
## CSS style.css
### 1. Reset General y Estilos Base
* Elimina márgenes y rellenos por defecto
* Define una fuente común para todo el sitio
* Establece colores base y espaciado legible
```
{
    box-sizing: border-box;
    margin: 0;
    padding: 0;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

body {
    background-color: #f9fbf9;
    color: #333;
    line-height: 1.6;
    padding: 20px;
}

.container {
    max-width: 900px;
    margin: 0 auto;
}

```

### 2. Barra de Navegación
* Creo una barra horizontal 
* Uso flexbox para hago una elemntos a lina  y separo elementos
* Añado bordes 
```
nav {
    background: #fff;
    padding: 1rem;
    border-radius: 8px;
    box-shadow: 0 2px 5px rgba(0,0,0,0.05);
    margin-bottom: 20px;
    display: flex;
    justify-content: space-between;
    align-items: center;
}

nav a {
    text-decoration: none;
    color: #ff6b6b;
    font-weight: bold;
    margin-right: 15px;
}
```
### 3. Cuadrícula y Tarjetas de Recetas

* Muestro las recetas en una cuadrícula adaptable
* Las tarjetas tienen sombra, bordes  y animación
* Las imágenes que adaptptado bor el box `div` de la pagina  
```

.recipe-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
    gap: 20px;
}

.recipe-card {
    background: #fff;
    border-radius: 12px;
    padding: 20px;
    box-shadow: 0 4px 6px rgba(0,0,0,0.1);
    display: flex;
    flex-direction: column;
    height: 100%;
    min-width: 0; 
    width: 100%;
    transition: transform 0.2s ease;
}

.recipe-card:hover {
    transform: translateY(-5px);
}

.recipe-image {
    width: 100%; 
    height: 200px;         
    object-fit: cover;     
    border-radius: 10px;
    margin-bottom: 15px;
    display: block;
    flex-shrink: 0;
}

.recipe-card h3 {
    margin-top: 15px;
    margin-bottom: 10px;
    color: #2d3436;
    word-wrap: break-word;
}

.recipe-card a.btn {
    margin-top: auto;
    align-self: flex-start;
    color: #fff;
    background: #ff6b6b;
    padding: 8px 16px;
    border-radius: 20px;
    text-decoration: none;
    font-size: 0.9rem;
}
```
### 4. Formularios (Login, Registro, Actualizar)

* Centro los formularios en tarjetas
* Estilizo campos y botones para mejor entendible que es esto  
* Incluye efecto hover en botones para hago mas mejor estilo de la pagina  
```
form {
    background: #fff;
    max-width: 400px;
    margin: 50px auto;
    padding: 30px;
    border-radius: 12px;
    box-shadow: 0 10px 25px rgba(0,0,0,0.1);
}

form h2 {
    margin-bottom: 20px;
    text-align: center;
    color: #ff6b6b;
}

input[type="text"], 
input[type="password"],
input[type="email"],
input[type="date"],
select {
    width: 100%;
    padding: 12px;
    margin-bottom: 15px;
    border: 1px solid #ddd;
    border-radius: 6px;
}

button {
    width: 100%;
    padding: 12px;
    background: #ff6b6b;
    border: none;
    color: white;
    font-size: 1rem;
    border-radius: 6px;
    cursor: pointer;
    font-weight: bold;
}

button:hover {
    background: #ee5253;
}
```
### 5. Página de Detalles de Receta

* Resalta el título con una línea de color
* Da estilo a listas e instrucciones 
* Facilita la lectura del contenido 
```
.recipe-detail-header {
    border-bottom: 3px solid #ff6b6b;
    padding-bottom: 10px;
    margin-bottom: 20px;
}

ul {
    list-style-position: inside;
    background: #fff;
    padding: 15px;
    border-radius: 8px;
    margin-bottom: 20px;
}

.instructions-box {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    border-left: 5px solid #ff6b6b;
}


```
### 6. Perfil de Usuario

* Diseño en dos columnas (perfil y planificador)
* Tarjeta de perfil con avatar que adaptado por primero letra de `username` y botones de acción
```
/* Container as flex row */
.profile-container {
    display: flex;
    gap: 30px;
    justify-content: center;
    align-items: flex-start;
    padding: 50px 20px;
    background-color: #f5f5f5;
}

/* Left column */
.profile-left {
    flex: 1 1 300px; /* grow, shrink, base width */
    max-width: 400px;
}

/* Right column */
.profile-right {
    flex: 2 1 400px; /* bigger column */
    max-width: 800px;
}

/* Profile card */
.profile-card {
    background: #fff;
    border-radius: 12px;
    padding: 30px 20px;
    box-shadow: 0 4px 15px rgba(0,0,0,0.1);
}

/* Avatar circle */
.avatar-circle {
    width: 70px;
    height: 70px;
    background-color: #ff6b6b;
    color: white;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 1.8rem;
    font-weight: bold;
    margin: 0 auto 15px;
}

/* Profile actions */
.profile-actions {
   display: flex;
    gap: 10px;
    flex-wrap: wrap;
    justify-content: center;
    margin-top: 20px;
}

.profile-actions a {
    padding: 10px 20px;
    border-radius: 8px;
    text-align: center;
    font-weight: 600;
    text-decoration: none;
}

.btn-secondary { background-color: #6c757d; color: #fff; }
.btn-secondary:hover { background-color: #5a6268; }
.btn-danger { background-color: #ff6b6b; color: #fff; }
.btn-danger:hover { background-color: #e55b5b; }

/* Planner grid (right column) */
.planner-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
    gap: 20px;
}

.recipe-card.day-column {
    background: #fff;
    border-radius: 12px;
    padding: 15px;
    box-shadow: 0 4px 10px rgba(0,0,0,0.05);
}

.recipe-card .badge {
    background-color: #ff6b6b;
    color: #fff;
    font-size: 0.75rem;
    padding: 2px 8px;
    border-radius: 6px;
}
```

###  7. Estilos del Planificador de Comidas 

* Diseño en cuadrícula para organizar días/comidas
* Usao etiquetas (badges) para identificar elementos 
* Enlaces pequeños para acciones secundarias
```
.planner-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
    gap: 15px;
    width: 100%;
}

.badge {
    display: inline-block;
    background: #ffeaa7;
    color: #d35400;
    padding: 2px 8px;
    border-radius: 4px;
    font-size: 0.75rem;
    font-weight: bold;
    margin-bottom: 8px;
    width: fit-content;
}

.small-link {
    font-size: 0.8rem;
    color: #ff6b6b;
    text-decoration: none;
    font-weight: bold;
}
```

### 8. Tabla CRUD y Administración
* Tabla estilizada con filas alternadas 
* Resalta filas al pasar el cursor
* Botones de acción agrupados
```
.crud-table {
    width: 100%;
    border-collapse: collapse;
    background: #fff;
    border-radius: 12px;
    overflow: hidden;
    box-shadow: 0 10px 25px rgba(0,0,0,0.08);
    margin: 30px auto;
}

.crud-table th {
    background: #ff6b6b;
    color: #fff;
    text-align: left;
    padding: 14px;
    font-weight: bold;
}

.crud-table td {
    padding: 14px;
    border-bottom: 1px solid #f0f0f0;
    font-size: 0.9rem;
    vertical-align: middle;
}

.crud-table tr:nth-child(even) { background-color: #fafafa; }
.crud-table tr:hover { background-color: #fff1f1; }

.crud-table .actions {
    display: flex;
    gap: 8px;
}
```
### 9. Variantes de Botones Compartidos
* Estilos reutilizables para botones comunes.
* Colores consistentes para acciones.
* Efectos hover uniformes..
```
.btn-secondary { background: #eee; color: #333; text-align: center; }
.btn-danger { background: #ff6b6b; color: white; text-align: center; }

.btn-edit { background: #eee; color: #333; }
.btn-delete { background: #ff6b6b; color: #fff; }

.btn-secondary:hover, .btn-edit:hover { background: #ddd; }
.btn-danger:hover, .btn-delete:hover { background: #ee5253; }
```
# 4.-Cierre/Conclusión enlazando con la unidad
En este parte de la paracita uso mis conocimientos de HTML y CSS para crear Front de la mi aplicaion web dinamica diseña para gestin y planificacion de comida

Con HTML que guarda en la Php hago una estructura toda la información que contiende mi pagina
* index que es la pagina raiz que contine patallitas de la ricepe 
* profile informacion de usario con una pantallitas 
* Update delete crear que uso trabajar con datos de usario formularios 
* recipe detallas que tiene imagenes y listas 
* Admin panel que contiene tabla 
* Planer que contiene pantallitas y opcion de selecion 

Con CSS se mejora la apariencia:
* uso para cambia colores y botones para que todo sea visualmente atractivo.
* creo tarjetas para las recetas y planificaciones que organizan la información de manera clara.
* aplico Flexbox y Grid para que la web sea responsiva 
* estilizo formularios y botones para que sean fáciles de usar y consistentes en toda la web.




# Codigo Completo

## head.php
```
<?php
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}
require_once __DIR__ . '/connect_bd.php'; 
?>
<!doctype html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css?v=2">
    <title>Recipe App</title>
</head>
<body>
<div class="container">
    <nav>
        <div class="nav-links">
            <a href="index.php">Home</a>
            <?php if(isset($_SESSION['user_id'])): ?>
                <a href="profile.php">My Account</a>
                <a href="inc/logout.php" style="color: #666;">Logout</a>
            <?php else: ?>
                <a href="login.php">Login</a>
                <a href="register.php">Register</a>
            <?php endif; ?>
        </div>
    </nav>
    <main>
```
## food.php
```
		</main>
  	<footer>
    </footer>
  </body>
</html>
```
## index.php
```
<?php include "actions/head.php"; ?>


<div class="recipe-grid"> <?php 
(Select de bases de datos )

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
            echo '<div class="recipe-card">'; 
            echo '<div class="image-wrapper">'; 
            echo '<img src="' . $row['img'] . '" class="recipe-image">';
            echo '</div>';
            echo '<h3>' . $row['title'] . '</h3>';
            echo '<a href="recipe_details.php?id=' . $row['id'] . '" class="btn">View Full Recipe</a>';

echo '</div>';
    }
} else {
    echo "The table is empty.";
}
?>
</div>

<?php include "actions/foot.php"; ?>
```
### login.php
```
<?php require_once __DIR__ . '/inc/login_user.php'; ?>  
<form method="POST">
    <h2>login_system</h2>
    <input type="text" name="username" required placeholder="Username"><br><br>
    <input type="password" name="password" required placeholder="Password"><br>
    <small>Min. 8 characters + 1 number</small><br><br>
    <button name="login">Login</button>
</form>
```
## register.php
```
<?php require_once __DIR__ . '/inc/create_user.php'; ?>  
<form method="POST">
    <h2>Create user</h2>
    <input type="text" name="username" required placeholder="Username"><br><br>
        <input type="text" name="email" required placeholder="email"><br><br>
    <input type="text" name="phone" required placeholder="phine"><br><br>
    <input type="password" name="password" required placeholder="Password"><br>


    <small>Min. 8 characters + 1 number</small><br><br>
    <button name="login">Create</button>
</form>
```
## update.php
```

<?php


require_once __DIR__ . '/inc/update_informacio.php';
(conect user de DB)

?>
<form method="POST">
    <h2>Update user</h2>

    <input type="text" name="username" required
        value="<?php echo htmlspecialchars($user['username']); ?>"
        placeholder="Username"><br><br>

    <input type="email" name="email" required
        value="<?php echo htmlspecialchars($user['email']); ?>"
        placeholder="Email"><br><br>

    <input type="text" name="phone" required
        value="<?php echo htmlspecialchars($user['phone']); ?>"
        placeholder="Phone"><br><br>

    <input type="password" name="password" placeholder="New Password"><br>
    <small>Leave empty to keep current password</small><br><br>

    <input type="hidden" name="user_id" value="<?php echo (int)$user_id; ?>">

    <button name="update">Update</button>
</form>
```
## planner.php
```
<?php 
include "actions/head.php"; 

if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit();
}

$user_id = $_SESSION['user_id'];

// 1. Handle form submission to save to the menu table
if (isset($_POST['save_menu'])) {
    $date = $_POST['planned_date'];
    $recipe_id = $_POST['id_recipe'];
    $type = $_POST['meal_type'];
    
    $stmt = $conn->prepare("INSERT INTO menus (plannes_date, id_recipe, id_user, meal_type) VALUES (?, ?, ?, ?)");
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
                        $recipes = $conn->query("SELECT id, title FROM recipes");
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
    $sql = "SELECT plannes_date, meal_type, title, rid 
            FROM user_meal_plans 
            WHERE id_user = ? 
            ORDER BY plannes_date ASC";
            
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("i", $user_id);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            $formatted_date = date("l, M j", strtotime($row['plannes_date']));
            ?>
            <div class="recipe-card day-column">
                <span class="badge"><?php echo htmlspecialchars($row['meal_type']); ?></span>
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
```

## profile.php

```
<?php 
<?php 
include "actions/head.php"; 

if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit();
}

$user_id = $_SESSION['user_id'];
?>

<div class="profile-container">
    <div class="profile-left">
        <div class="profile-card">
            <div class="profile-header">
                <div class="avatar-circle">
                    <?php 
                    echo isset($_SESSION['phone']) ? strtoupper(substr($_SESSION['phone'], 0, 1)) : "?"; 
                    ?>
                </div>
                <h2>User Profile</h2>
            </div>

            <div class="profile-info">
                <div class="info-group">
                    <div class="info-item">
                        <label>Username:</label>
                        <span><?php echo isset($_SESSION['username']) ? htmlspecialchars($_SESSION['username']) : "-"; ?></span>
                    </div>
                    <div class="info-item">
                        <label>Email:</label>
                        <span><?php echo isset($_SESSION['email']) ? htmlspecialchars($_SESSION['email']) : "-"; ?></span>
                    </div>
                    <div class="info-item">
                        <label>Phone:</label>
                        <span><?php echo isset($_SESSION['phone']) ? htmlspecialchars($_SESSION['phone']) : "-"; ?></span>
                    </div>
                </div>
            </div>

            <div class="profile-actions">
                <a href="planner.php" class="btn-secondary">Open Full Planner</a>
                <a href="update_user.php?user_id=<?php echo $user_id; ?>" class="btn-secondary">Update</a>
                <a href="inc/logout.php" class="btn-danger">Logout</a>
            </div>
        </div>
    </div>

    <div class="profile-right">
        <h3>My Upcoming Meals</h3>
        <div class="planner-grid">
            <?php
            $sql = "SELECT plannes_date, meal_type, title, rid 
                    FROM view_upcoming_meals 
                    WHERE id_user = ? 
                    ORDER BY plannes_date ASC 
                    LIMIT 3"; 
            
            $stmt = $conn->prepare($sql);
            $stmt->bind_param("i", $user_id);
            $stmt->execute();
            $result = $stmt->get_result();

            if ($result->num_rows > 0) {
                while($row = $result->fetch_assoc()) {
                    $date = date("D, M j", strtotime($row['plannes_date']));
                    ?>
                    <div class="recipe-card day-column">
                        <span class="badge"><?php echo htmlspecialchars($row['meal_type']); ?></span>
                        <h4><?php echo $date; ?></h4>
                        <p style="font-weight: bold; color: #ff6b6b;"><?php echo htmlspecialchars($row['title']); ?></p>
                        <a href="recipe_details.php?id=<?php echo $row['rid']; ?>" class="small-link">View Recipe</a>
                    </div>
                    <?php
                }
            } else {
                echo "<div class='recipe-card'><p>No meals planned. <a href='planner.php'>Plan now!</a></p></div>";
            }
            ?>
        </div>
    </div>
</div>

<?php include "actions/foot.php"; ?>
```
## recipe_details.php
```
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
```
## CRUD.php
```
<link rel="stylesheet" href="../css/style.css">

<?php
require_once __DIR__ . '/../actions/connect_bd.php';

$table = $_REQUEST['table_name'] ?? 'USER';
$edit_id = $_GET['edit'] ?? null;
$row_to_edit = $edit_id ? $conn->query("SELECT * FROM $table WHERE id=$edit_id")->fetch_assoc() : null;

// Save Logic (Insert and Update)
if (isset($_POST['save'])) {
    $fields = $_POST['f'];
    $id = $_POST['id'] ?? null;

    if ($id) { // Update existing
        foreach ($fields as $col => $val) { $set[] = "$col='" . $conn->real_escape_string($val) . "'"; }
        $sql = "UPDATE $table SET " . implode(',', $set) . " WHERE id=$id";
    } else { // Insert new
        $cols = implode(",", array_keys($fields));
        $vals = "'" . implode("','", array_map([$conn, 'real_escape_string'], $fields)) . "'";
        $sql = "INSERT INTO $table ($cols) VALUES ($vals)";
    }
    $conn->query($sql);
    header("Location: ?table_name=$table"); 
}

//  Delete Logic
if (isset($_GET['delete'])) {
    $id = (int)$_GET['delete'];

    // Delete child records first
    $conn->query("DELETE FROM recipe_ingredient WHERE id_ingredient = $id");

    // Then delete parent record
    $conn->query("DELETE FROM ingredient WHERE id = $id");

    header("Location: ?table_name=$table");
}

?>

<form method="get">
    <select name="table_name" onchange="this.form.submit()">
        <option value="users" <?= $table=='user'?'selected':'' ?>>Users</option>
        <option value="ingredients" <?= $table=='ingredients'?'selected':'' ?>>Ingredients</option>
        <option value="menus" <?= $table=='menus'?'selected':'' ?>>Menu</option>
        <option value="recipes" <?= $table=='recipes'?'selected':'' ?>>recipe</option>
        <option value="recipe_ingredientes" <?= $table=='recipe_ingredientes'?'selected':'' ?>>recipe_ingredient</option>
        <option value="recipe_steps" <?= $table=='recipe_steps'?'selected':'' ?>>recipe_steps</option>      
    </select>
</form>

<hr>

<form method="post">
    <input type="hidden" name="table_name" value="<?= $table ?>">
    <?php if($edit_id): ?> <input type="hidden" name="id" value="<?= $edit_id ?>"> <?php endif; ?>
    
    <?php
    $res = $conn->query("DESCRIBE $table");
    while($col = $res->fetch_assoc()): 
        if($col['Extra'] == 'auto_increment') continue;
        $name = $col['Field'];
    ?>
        <label><?= $name ?>:</label>
        <input type="text" name="f[<?= $name ?>]" value="<?= $row_to_edit[$name] ?? '' ?>" required><br>
    <?php endwhile; ?>
    <button type="submit" name="save">SAVE RECORD</button>
</form>

<hr>

<table class="crud-table">
    <?php $data = $conn->query("SELECT * FROM $table"); while($row = $data->fetch_assoc()): ?>
    <tr>
        <?php foreach($row as $v) echo "<td>$v</td>"; ?>
        <td class="actions">
            <a class="btn-edit" href="?table_name=<?= $table ?>&edit=<?= $row['id'] ?>">Edit</a>
            <a class="btn-delete" href="?table_name=<?= $table ?>&delete=<?= $row['id'] ?>" onclick="return confirm('Delete?')">Del</a>
        </td>
    </tr>
    <?php endwhile; ?>
</table>


```
### style.css
```
/* =========================================
   1. GENERAL RESET & BASE STYLES
   ========================================= */
* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

body {
    background-color: #f9fbf9;
    color: #333;
    line-height: 1.6;
    padding: 20px;
}

.container {
    max-width: 900px;
    margin: 0 auto;
}

/* =========================================
   2. NAVIGATION BAR
   ========================================= */
nav {
    background: #fff;
    padding: 1rem;
    border-radius: 8px;
    box-shadow: 0 2px 5px rgba(0,0,0,0.05);
    margin-bottom: 20px;
    display: flex;
    justify-content: space-between;
    align-items: center;
}

nav a {
    text-decoration: none;
    color: #ff6b6b;
    font-weight: bold;
    margin-right: 15px;
}

/* =========================================
   3. RECIPE GRID & CARDS (Home Page)
   ========================================= */
.recipe-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
    gap: 20px;
}

.recipe-card {
    background: #fff;
    border-radius: 12px;
    padding: 20px;
    box-shadow: 0 4px 6px rgba(0,0,0,0.1);
    display: flex;
    flex-direction: column;
    height: 100%;
    min-width: 0; 
    width: 100%;
    transition: transform 0.2s ease;
}

.recipe-card:hover {
    transform: translateY(-5px);
}

.recipe-image {
    width: 100%; 
    height: 200px;         
    object-fit: cover;     
    border-radius: 10px;
    margin-bottom: 15px;
    display: block;
    flex-shrink: 0;
}

.recipe-card h3 {
    margin-top: 15px;
    margin-bottom: 10px;
    color: #2d3436;
    word-wrap: break-word;
}

.recipe-card a.btn {
    margin-top: auto;
    align-self: flex-start;
    color: #fff;
    background: #ff6b6b;
    padding: 8px 16px;
    border-radius: 20px;
    text-decoration: none;
    font-size: 0.9rem;
}

/* =========================================
   4. FORMS (Login, Register, Update)
   ========================================= */
form {
    background: #fff;
    max-width: 400px;
    margin: 50px auto;
    padding: 30px;
    border-radius: 12px;
    box-shadow: 0 10px 25px rgba(0,0,0,0.1);
}

form h2 {
    margin-bottom: 20px;
    text-align: center;
    color: #ff6b6b;
}

input[type="text"], 
input[type="password"],
input[type="email"],
input[type="date"],
select {
    width: 100%;
    padding: 12px;
    margin-bottom: 15px;
    border: 1px solid #ddd;
    border-radius: 6px;
}

button {
    width: 100%;
    padding: 12px;
    background: #ff6b6b;
    border: none;
    color: white;
    font-size: 1rem;
    border-radius: 6px;
    cursor: pointer;
    font-weight: bold;
}

button:hover {
    background: #ee5253;
}

/* =========================================
   5. RECIPE DETAILS PAGE
   ========================================= */
.recipe-detail-header {
    border-bottom: 3px solid #ff6b6b;
    padding-bottom: 10px;
    margin-bottom: 20px;
}

ul {
    list-style-position: inside;
    background: #fff;
    padding: 15px;
    border-radius: 8px;
    margin-bottom: 20px;
}

.instructions-box {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    border-left: 5px solid #ff6b6b;
}

/* =========================================
   6. USER PROFILE
   ========================================= */
/* Container as flex row */
.profile-container {
    display: flex;
    gap: 30px;
    justify-content: center;
    align-items: flex-start;
    padding: 50px 20px;
    background-color: #f5f5f5;
}

/* Left column */
.profile-left {
    flex: 1 1 300px; /* grow, shrink, base width */
    max-width: 400px;
}

/* Right column */
.profile-right {
    flex: 2 1 400px; /* bigger column */
    max-width: 800px;
}

/* Profile card */
.profile-card {
    background: #fff;
    border-radius: 12px;
    padding: 30px 20px;
    box-shadow: 0 4px 15px rgba(0,0,0,0.1);
}

/* Avatar circle */
.avatar-circle {
    width: 70px;
    height: 70px;
    background-color: #ff6b6b;
    color: white;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 1.8rem;
    font-weight: bold;
    margin: 0 auto 15px;
}

/* Profile actions */
.profile-actions {
    display: flex;
    gap: 10px;
    flex-wrap: wrap;
    justify-content: center;
    margin-top: 20px;
}

.profile-actions a {
    padding: 10px 20px;
    border-radius: 8px;
    text-align: center;
    font-weight: 600;
    text-decoration: none;
}

.btn-secondary { background-color: #6c757d; color: #fff; }
.btn-secondary:hover { background-color: #5a6268; }
.btn-danger { background-color: #ff6b6b; color: #fff; }
.btn-danger:hover { background-color: #e55b5b; }

/* Planner grid (right column) */
.planner-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
    gap: 20px;
}

.recipe-card.day-column {
    background: #fff;
    border-radius: 12px;
    padding: 15px;
    box-shadow: 0 4px 10px rgba(0,0,0,0.05);
}

.recipe-card .badge {
    background-color: #ff6b6b;
    color: #fff;
    font-size: 0.75rem;
    padding: 2px 8px;
    border-radius: 6px;
}

/* =========================================
   7. MEAL PLANNER STYLES
   ========================================= */
.planner-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
    gap: 15px;
    width: 100%;
}

.badge {
    display: inline-block;
    background: #ffeaa7;
    color: #d35400;
    padding: 2px 8px;
    border-radius: 4px;
    font-size: 0.75rem;
    font-weight: bold;
    margin-bottom: 8px;
    width: fit-content;
}

.small-link {
    font-size: 0.8rem;
    color: #ff6b6b;
    text-decoration: none;
    font-weight: bold;
}

/* =========================================
   8. CRUD TABLE & ADMIN
   ========================================= */
.crud-table {
    width: 100%;
    border-collapse: collapse;
    background: #fff;
    border-radius: 12px;
    overflow: hidden;
    box-shadow: 0 10px 25px rgba(0,0,0,0.08);
    margin: 30px auto;
}

.crud-table th {
    background: #ff6b6b;
    color: #fff;
    text-align: left;
    padding: 14px;
    font-weight: bold;
}

.crud-table td {
    padding: 14px;
    border-bottom: 1px solid #f0f0f0;
    font-size: 0.9rem;
    vertical-align: middle;
}

.crud-table tr:nth-child(even) { background-color: #fafafa; }
.crud-table tr:hover { background-color: #fff1f1; }

.crud-table .actions {
    display: flex;
    gap: 8px;
}

/* =========================================
   9. SHARED BUTTON VARIANTS
   ========================================= */
.btn-secondary { background: #eee; color: #333; text-align: center; }
.btn-danger { background: #ff6b6b; color: white; text-align: center; }

.btn-edit { background: #eee; color: #333; }
.btn-delete { background: #ff6b6b; color: #fff; }

.btn-secondary:hover, .btn-edit:hover { background: #ddd; }
.btn-danger:hover, .btn-delete:hover { background: #ee5253; }
```
```
**all_in_1.md**
```markdown
# 1.-Indroduccion brece y contexalizacion





# 2.-Desarrollo técnico correcto y preciso





# Codigo Completo
Project\  
├─ explicacion.md   
├─ Crete Vies.sql  
├─ datebase.sql  
├─ insert_datos.sql  
└─ 
##
```

```

# 4.-Cierre/Conclusión enlazando con la unidad





```
**base_de_daros.md**
```markdown
# 1.-Indroduccion brece y contexalizacion
En este exame voy a exlicar mi base de datos de la mi proyecto App de Recetas y Planificador de Comidas. Explcacion 
* Por que yo hago este bases de datos
* Creo base de datos
* Creo Tablas
* Creo insert de la tabla 
* Creo view 
* CRUD en las codigo


# 2.-Desarrollo técnico correcto y preciso
## images of data bases (2 diferte formas de muestra de la ER `svg` y `png`)
![diagrama](https://raw.githubusercontent.com/Sagmanua/Proyecto-Entornos-de-Desarrollo/main/dosc/prepare_for_examen/images/diagramas/recipe_app.png)

![diagrama](https://raw.githubusercontent.com/Sagmanua/Proyecto-Entornos-de-Desarrollo/main/dosc/prepare_for_examen/images/diagramas/diagrama.svg)

### Creo tablas 
* users con columnas `id`  `email` `phone` `username` 
* menus con columnas `id` `planes_date` `id_recipe` `id_user` `meal_type`
* recipe con columnas `id` `id_users` `title` `prep_time` `description` `img` `serving`
* recipe_ingredientes con coumnas  `id` `id_ingredient` `amount` `unit` `atributo`
* ingredientes con columanas `id` `name` `calories` `type`
* recipe con columnas `id` `name` `calores` `type` 
* recipe_steps con columnas `id` `recipe_id` `step_number`  `step_description`


### Explacacion tablas 
* User tabla es creado para guardar informacion de la usario 
```
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255),
    phone VARCHAR(20),
    username VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL
);

```
* Recipes este tabla en que gurda informacion de la recipes `img` es gurdado en la carpeta de la `assets` 
```
CREATE TABLE recipes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_user INT,
    title VARCHAR(100) NOT NULL,
    prep_time VARCHAR(50),
    description TEXT,
    img VARCHAR(255),
    serving INT,
    FOREIGN KEY (id_user) REFERENCES users(id) ON DELETE SET NULL
);


```
* Recipe_ingredientes creado para conectar  recipes con ingredientes tiene su propia valores para puede duemestra en la pantalla mas calaro
```
CREATE TABLE recipe_ingredientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_recipe INT NOT NULL,
    id_ingredient INT NOT NULL,
    amount DECIMAL(10, 2),
    unit VARCHAR(20),
    atributo VARCHAR(50),
    FOREIGN KEY (id_recipe) REFERENCES recipes(id) ON DELETE CASCADE,
    FOREIGN KEY (id_ingredient) REFERENCES ingredients(id) ON DELETE CASCADE,
    UNIQUE KEY unique_recipe_ingredient (id_recipe, id_ingredient)
);
```
* ingrediente esta tabla gurdado ingredientes que puede que conecta con la tabla Recipes usa tabla Recipe_ingredientes 
```
CREATE TABLE  ingredients (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    calories INT,
    type VARCHAR(50)
);
```
* recipe_steps esta tabla creado solo para muestara como cosina la comida y muestra en la tabla 
```
CREATE TABLE recipe_steps (
         id INT AUTO_INCREMENT PRIMARY KEY,
         recipe_id INT,                  
         step_number INT,                
         step_description TEXT,          
         FOREIGN KEY (recipe_id) REFERENCES recipes (id) ON DELETE CASCADE
     );
```
* menus es la tabla que gurda las planner de la usario. Usar elige una comida elige `meal_type` y elige (brekfast , dinner , snack) y este todo gurda en este tabla y tiene relacion de la tabla users 
```
CREATE TABLE menus (
    id INT AUTO_INCREMENT PRIMARY KEY,
    plannes_date DATE,
    id_recipe INT,
    id_user INT,
    meal_type VARCHAR(50),
    FOREIGN KEY (id_recipe) REFERENCES recipes(id) ON DELETE CASCADE,
    FOREIGN KEY (id_user) REFERENCES users(id) ON DELETE CASCADE
);
``` 
### hago insert basico de la este tablas 
#### uso `SET FOREIGN_KEY_CHECKS = 0;` para puede facil hago una `insert ` en la base de datos 
#### creo insert en la `users`
```
INSERT INTO users (id, email, phone, username, password) VALUES 
(NULL, 'clara_b@demo.com', '555-1001', 'ClaraBakes', '$2b$12$C1l2a3r4a5B6a7k8e9s0H1a2s3h4V5a6l7u8'),
(NULL, 'david_dev@code.com', '555-1002', 'CodingCook', '$2b$12$D1a2v3i4d5D6e7v8P9a0s1s2w3o4r5d6H7a8'),
(NULL, 'elena_fit@gym.com', '555-1003', 'ElenaFit', '$2b$12$E1l2e3n4a5F6i7t8V9i0b1e2s3H4a5s6h7L8'),
```
#### creo insert en la `recipe`
 ```
INSERT INTO recipes (id_user, title, prep_time, description, serving, img) VALUES
(10, 'Spaghetti Carbonara', '20 mins', 'Authentic Roman pasta with egg and guanciale.', 2, 'assets/carbonara.jpg'),
(2, 'Chocolate Fondant', '15 mins', 'Molten lava cake with a gooey center.', 4, 'assets/fondant.jpg'),
(4, 'Quinoa Buddha Bowl', '25 mins', 'Healthy bowl with roasted chickpeas and kale.', 1, 'assets/quinoa.jpg'),
 ```
 #### creo insert en la `menu`
 ```
INSERT INTO menus (id, plannes_date, id_recipe, id_user, meal_type) VALUES 
(NULL, '2025-02-01', 21, 21, 'Breakfast'),
(NULL, '2025-02-01', 25, 25, 'Dinner'),
(NULL, '2025-02-02', 22, 22, 'Lunch'),
(NULL, '2025-02-02', 26, 26, 'Dinner'),
(NULL, '2025-02-03', 23, 23, 'Lunch'),
(NULL, '2025-02-03', 27, 27, 'Dinner'),
(NULL, '2025-02-04', 28, 28, 'Lunch'),
(NULL, '2025-02-04', 24, 24, 'Dinner'),
(NULL, '2025-02-05', 30, 30, 'Lunch'),
(NULL, '2025-02-05', 29, 29, 'Dessert');
 ```
  #### creo insert en la `ingredients`
 ```
INSERT INTO ingredients (name, calories, type) VALUES
('Spaghetti', 158, 'pasta'),
('Egg', 155, 'protein'),
('Guanciale', 655, 'meat'),
('Parmesan Cheese', 431, 'dairy'),
('Black Pepper', 251, 'spice'),

('Dark Chocolate', 546, 'sweet'),
('Butter', 717, 'dairy'),
('Flour', 364, 'grain'),
('Sugar', 387, 'sweet'),

('Quinoa', 120, 'grain'),
('Chickpeas', 164, 'legume'),
('Kale', 49, 'vegetable'),
('Olive Oil', 884, 'fat'),
 ```
#### creo insert en la `recipe_ingredientes`
```
INSERT INTO recipe_ingredientes (id_recipe, id_ingredient, amount, unit, atributo) VALUES
-- 1 Spaghetti Carbonara
(1, 1, 200, 'g', NULL),
(1, 2, 2, 'pcs', 'egg yolk'),
(1, 3, 100, 'g', 'diced'),
(1, 4, 50, 'g', 'grated'),

-- 2 Chocolate Fondant
(2, 5, 200, 'g', 'dark'),
(2, 6, 100, 'g', 'unsalted'),
(2, 7, 50, 'g', NULL),

-- 3 Quinoa Buddha Bowl
(3, 8, 150, 'g', 'cooked'),
(3, 9, 100, 'g', 'roasted'),
(3, 10, 50, 'g', 'fresh'),
```
#### creo insert en la `recipe_steps`

```
INSERT INTO recipe_steps (recipe_id, step_number, step_description) VALUES
     (1, 1, 'Cook the pasta until al dente.'),
     (1, 2, 'In a pan, render guanciale until crispy.'),
     (1, 3, 'Mix egg and cheese, then combine with the pasta and guanciale.'); 
```
###  reset este config `SET FOREIGN_KEY_CHECKS = 1;`



### creo una usaro de la mySQl 
```
-- 1. Create the users 
CREATE USER 'admin_recipe_app'@'localhost' 
IDENTIFIED BY 'Login_system123$';

-- 2. Initial usage grant
GRANT USAGE ON *.* TO 'admin_recipe_app'@'localhost';

-- 3. Set resource limits (keeping your original requirements)
ALTER USER 'admin_recipe_app'@'localhost' 
REQUIRE NONE 
WITH MAX_QUERIES_PER_HOUR 0 
MAX_CONNECTIONS_PER_HOUR 0 
MAX_UPDATES_PER_HOUR 0 
MAX_USER_CONNECTIONS 0;

-- 4. Grant privileges specifically to the 'recipe_app' database
-- This matches your PHP $db variable
GRANT ALL PRIVILEGES ON recipe_app.* TO 'admin_recipe_app'@'localhost';

-- 5. Apply changes
FLUSH PRIVILEGES;
```
### conecta base de detos con la mi pagina 
```
<?php
$host = "localhost";
$user = "admin_recipe_app";
$pass = "Login_system123$";
$db   = "recipe_app";

$conn = mysqli_connect($host, $user, $pass, $db);

if (!$conn) {
    die("Database connection failed: " . mysqli_connect_error());
}
?>
```
### creo view que uso para mas facil demuetra informcion
#### el primero creo una `user_meal_plans` que es `LEFT JOIN` [donde usa  user_meal_plans ](https://github.com/Sagmanua/Proyecto-Entornos-de-Desarrollo/blob/main/planner.php#L66-L69)
```
CREATE VIEW user_meal_plans AS
SELECT 
    m.id_user,
    m.plannes_date, 
    m.meal_type, 
    r.title, 
    r.id AS rid 
FROM menus m 
JOIN recipes r ON m.id_recipe = r.id;
```
#### que contiene infromacion de las tablas  recipes y conecta con la menus para deumestra informacion en la pagina
#### como usa tiene este codigo hago un select `user_meal_plans` donde coje informacion qeu lueego muestra en la div 
```
$sql = "SELECT plannes_date, meal_type, title, rid 
        FROM user_meal_plans 
        WHERE id_user = ? 
        ORDER BY plannes_date ASC";
... 

<div class="recipe-card day-column">
    <span class="badge"><?php echo htmlspecialchars($row['meal_type']); ?></span>
    <h4><?php echo $formatted_date; ?></h4>
    <p><strong><?php echo htmlspecialchars($row['title']); ?></strong></p>
    <a href="recipe_details.php?id=<?php echo $row['rid']; ?>" style="font-size: 0.8rem; color: #ff6b6b;">View Recipe</a>
</div>

```
### creo view que uso para mas facil demuetra informcion
#### el primero creo una `view_upcoming_meals` que es [deonde usa  view_upcoming_meals  is used](hhttps://github.com/Sagmanua/Proyecto-Entornos-de-Desarrollo/blob/main/profile.php#L53-L57)
```
CREATE VIEW view_upcoming_meals AS
SELECT 
    m.id_user,
    m.plannes_date, 
    m.meal_type, 
    r.title, 
    r.id AS rid 
FROM menus m 
JOIN recipes r ON m.id_recipe = r.id
WHERE m.plannes_date >= CURDATE();
```
#### que contiene infromacion de las tablas  recipes y conecta con la menus para deumestra informacion en la pagina
#### como usa tiene este codigo hago un select `user_meal_plans` donde coje informacion qeu lueego muestra en la div +- que hace antes pero agui tiene limit de la 3 
[Where VIEW view_recipe_ingredients  is used](https://github.com/Sagmanua/Proyecto-Entornos-de-Desarrollo/blob/main/recipe_details.php#L17)


```
$sql = "SELECT plannes_date, meal_type, title, rid 
        FROM view_upcoming_meals 
        WHERE id_user = ? 
        ORDER BY plannes_date ASC 
        LIMIT 3"; 
... 

<div class="recipe-card day-column">
    <span class="badge"><?php echo htmlspecialchars($row['meal_type']); ?></span>
    <h4><?php echo $date; ?></h4>
    <p style="font-weight: bold; color: #ff6b6b;"><?php echo htmlspecialchars($row['title']); ?></p>
    <a href="recipe_details.php?id=<?php echo $row['rid']; ?>" class="small-link">View Recipe</a>
</div>
```

#### que contiene infromacion de las tablas  ingregdientes  y conecta con la recipe_ingredientes para deumestra informacion en la pagina
```
CREATE VIEW view_recipe_ingredients AS
SELECT 
    ri.id_recipe,
    i.name, 
    ri.amount, 
    ri.unit 
FROM ingredients i 
JOIN recipe_ingredientes ri ON i.id = ri.id_ingredient;
```
#### como usa tiene este codigo hago un select `view_recipe_ingredients` donde coje informacion qeu lueego muestra infromacion  en la `div` 
[Where VIEW view_recipe_steps  is used](https://github.com/Sagmanua/Proyecto-Entornos-de-Desarrollo/blob/main/recipe_details.phpL29)

```
$sql_ing = "SELECT name, amount, unit FROM view_recipe_ingredients WHERE id_recipe = ?";
```

#### que contiene infromacion de las tabla `recipe_steps` que luqgo demestra en la pagina en la forma ordenada 
```
CREATE VIEW view_recipe_steps AS
SELECT 
    rs.recipe_id,
    rs.step_number, 
    rs.step_description 
FROM recipe_steps rs;
```
## Usa CRUD dentro de la pagina  
### Crear usa cuand usario creo su cuenta 
```
"INSERT INTO `users` (username, password, email, phone) VALUES (?, ?, ?, ?)"
```

### En `login.php` tengo probar de la contrasena es hace una request de la base de datos y dame respuesta 
```
$stmt = $conn->prepare("SELECT id, password FROM users WHERE username = ?");
``` 
### En la `update.php` tengo una `Update` funcion 
```
$sql = "UPDATE USER 
        SET username = ?, email = ?, phone = ?
        WHERE id = ?";
```
### En la `index.php` tengo `SELECT` que coge todo informacion de la tabla `recipe` y luego procesa
```
$sql = "SELECT * FROM recipes;";
```
## Admin panel `CRUD.php` (para endnder facil este codifo contiene en la #Cofigo completo )
### Este codigo coje todo la informacio de  la tabla  
```
$row_to_edit = $edit_id ? $conn->query("SELECT * FROM $table WHERE id=$edit_id")->fetch_assoc() : null;
```
### Este codigo hago que en la formalirio tiene la `id` es uso la funcion de la `UPDATE` en otro caso es `INSERT` en la tabla de coge admin en la `table_name` 
```
if ($id) { // Update existing
    foreach ($fields as $col => $val) { $set[] = "$col='" . $conn->real_escape_string($val) . "'"; }
    $sql = "UPDATE $table SET " . implode(',', $set) . " WHERE id=$id";
} else { // Insert new
    $cols = implode(",", array_keys($fields));
    $vals = "'" . implode("','", array_map([$conn, 'real_escape_string'], $fields)) . "'";
    $sql = "INSERT INTO $table ($cols) VALUES ($vals)";
    }
```
### hago una `DESCRIBE` de la tabla cuando admin elige opcion de los tablas hago este cofigo que describe la tabla que elige y luego mustra en la tabla  
```
$res = $conn->query("DESCRIBE $table");
while($col = $res->fetch_assoc()): 
    if($col['Extra'] == 'auto_increment') continue;
    $name = $col['Field'];
?>
```
### En este codigo hago una tabla que muestra todo informacion de datos tambien en que puede eligir si yo qiero `UPDATE` or `DELETE` informacion 
```
<table class="crud-table">
    <?php $data = $conn->query("SELECT * FROM $table"); while($row = $data->fetch_assoc()): ?>
    <tr>
        <?php foreach($row as $v) echo "<td>$v</td>"; ?>
        <td class="actions">
            <a class="btn-edit" href="?table_name=<?= $table ?>&edit=<?= $row['id'] ?>">Edit</a>
            <a class="btn-delete" href="?table_name=<?= $table ?>&delete=<?= $row['id'] ?>" onclick="return confirm('Delete?')">Del</a>
        </td>
    </tr>
    <?php endwhile; ?>
</table>
```




# Cierre/Conclusión enlazando con la unidad
En conclusión, este proyecto de App de Recetas y Planificador de Comidas demuestra usas de la base de dedos .He creado una base de datos que guarda la información de los usuarios, las recetas, los ingredientes y los planes de comidas de forma ordenada y relacionada.

También he usado las operaciones CRUD, que permiten crear, leer, actualizar y borrar datos desde la página web. Gracias a esto, los usuarios pueden registrarse, ver recetas, cambiar sus datos y organizar sus comidas. Además, el administrador puede gestionar las tablas fácilmente.

El uso de vistas me ha ayudado a mostrar la información de una forma más clara y sencilla sin hacer consultas muy complicadas. Por último, he conectado la base de datos con PHP para que la aplicación funcione correctamente.

# Codigo Completo

Project\  
├─ explicacion.md   
├─ [Create_database.sql](https://github.com/Sagmanua/Proyecto-Entornos-de-Desarrollo/tree/main/dosc/databases%20cod/v0.2/Create_database.sql)   
├─ [insert for test.sql](https://github.com/Sagmanua/Proyecto-Entornos-de-Desarrollo/tree/main/dosc/databases%20cod/v0.2/insert_for_test.sql)  
├─ [Create_user.sql ](https://github.com/Sagmanua/Proyecto-Entornos-de-Desarrollo/tree/main/dosc/databases%20cod/v0.2/Create_user)     
└─ [Ceate_View.sql](https://github.com/Sagmanua/Proyecto-Entornos-de-Desarrollo/tree/main/dosc/databases%20cod/v0.2/Create_View.sql)   

## Create_database.sql
```
CREATE DATABASE IF NOT EXISTS recipe_app;
USE recipe_app;

-- 1. USER Table

-- 2. RECIPE Table
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255),
    phone VARCHAR(20),
    username VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL
);


-- 3. INGREDIENT Table
CREATE TABLE  ingredients (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    calories INT,
    type VARCHAR(50)
);

-- 6. MENU Table
CREATE TABLE menus (
    id INT AUTO_INCREMENT PRIMARY KEY,
    plannes_date DATE,
    id_recipe INT,
    id_user INT,
    meal_type VARCHAR(50),
    FOREIGN KEY (id_recipe) REFERENCES recipes(id) ON DELETE CASCADE,
    FOREIGN KEY (id_user) REFERENCES users(id) ON DELETE CASCADE
);



-- 8. RECIPE_INGREDIENT (Many-to-Many Bridge Table)
CREATE TABLE recipe_ingredientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_recipe INT NOT NULL,
    id_ingredient INT NOT NULL,
    amount DECIMAL(10, 2),
    unit VARCHAR(20),
    atributo VARCHAR(50),
    FOREIGN KEY (id_recipe) REFERENCES recipes(id) ON DELETE CASCADE,
    FOREIGN KEY (id_ingredient) REFERENCES ingredients(id) ON DELETE CASCADE,
    UNIQUE KEY unique_recipe_ingredient (id_recipe, id_ingredient)
);
-- 8. RECIPErecipe_step (Many-to-Many Bridge Table)

CREATE TABLE recipe_steps (
         id INT AUTO_INCREMENT PRIMARY KEY,
         recipe_id INT,                  
         step_number INT,                
         step_description TEXT,          
         FOREIGN KEY (recipe_id) REFERENCES recipes (id) ON DELETE CASCADE
     );



```
## insert for test.sql
```
SET FOREIGN_KEY_CHECKS = 0;
-- 1.  
INSERT INTO users (id, email, phone, username, password) VALUES 
(NULL, 'clara_b@demo.com', '555-1001', 'ClaraBakes', '$2b$12$C1l2a3r4a5B6a7k8e9s0H1a2s3h4V5a6l7u8'),
(NULL, 'david_dev@code.com', '555-1002', 'CodingCook', '$2b$12$D1a2v3i4d5D6e7v8P9a0s1s2w3o4r5d6H7a8'),
(NULL, 'elena_fit@gym.com', '555-1003', 'ElenaFit', '$2b$12$E1l2e3n4a5F6i7t8V9i0b1e2s3H4a5s6h7L8'),
...

-- 2. RECIPE 
INSERT INTO recipes (id_user, title, prep_time, description, serving, img) VALUES
(10, 'Spaghetti Carbonara', '20 mins', 'Authentic Roman pasta with egg and guanciale.', 2, 'assets/carbonara.jpg'),
(2, 'Chocolate Fondant', '15 mins', 'Molten lava cake with a gooey center.', 4, 'assets/fondant.jpg'),
(4, 'Quinoa Buddha Bowl', '25 mins', 'Healthy bowl with roasted chickpeas and kale.', 1, 'assets/quinoa.jpg'),
...

-- 6. MENU
INSERT INTO menus (id, plannes_date, id_recipe, id_user, meal_type) VALUES 
(NULL, '2025-02-01', 21, 21, 'Breakfast'),
(NULL, '2025-02-01', 25, 25, 'Dinner'),
(NULL, '2025-02-02', 22, 22, 'Lunch'),
(NULL, '2025-02-02', 26, 26, 'Dinner'),
(NULL, '2025-02-03', 23, 23, 'Lunch'),
(NULL, '2025-02-03', 27, 27, 'Dinner'),
(NULL, '2025-02-04', 28, 28, 'Lunch'),
(NULL, '2025-02-04', 24, 24, 'Dinner'),
(NULL, '2025-02-05', 30, 30, 'Lunch'),
(NULL, '2025-02-05', 29, 29, 'Dessert');

INSERT INTO ingredients (name, calories, type) VALUES
('Spaghetti', 158, 'pasta'),
('Egg', 155, 'protein'),
('Guanciale', 655, 'meat'),
('Parmesan Cheese', 431, 'dairy'),
('Black Pepper', 251, 'spice'),

('Dark Chocolate', 546, 'sweet'),
('Butter', 717, 'dairy'),
('Flour', 364, 'grain'),
('Sugar', 387, 'sweet'),

('Quinoa', 120, 'grain'),
('Chickpeas', 164, 'legume'),
('Kale', 49, 'vegetable'),
('Olive Oil', 884, 'fat'),

...

-- 8. RECIPE_INGREDIENT 
INSERT INTO recipe_ingredientes (id_recipe, id_ingredient, amount, unit, atributo) VALUES
-- 1 Spaghetti Carbonara
(1, 1, 200, 'g', NULL),
(1, 2, 2, 'pcs', 'egg yolk'),
(1, 3, 100, 'g', 'diced'),
(1, 4, 50, 'g', 'grated'),

-- 2 Chocolate Fondant
(2, 5, 200, 'g', 'dark'),
(2, 6, 100, 'g', 'unsalted'),
(2, 7, 50, 'g', NULL),

-- 3 Quinoa Buddha Bowl
(3, 8, 150, 'g', 'cooked'),
(3, 9, 100, 'g', 'roasted'),
(3, 10, 50, 'g', 'fresh'),

...


INSERT INTO recipe_steps (recipe_id, step_number, step_description) VALUES
     (1, 1, 'Cook the pasta until al dente.'),
     (1, 2, 'In a pan, render guanciale until crispy.'),
     (1, 3, 'Mix egg and cheese, then combine with the pasta and guanciale.'); 



SET FOREIGN_KEY_CHECKS = 1;
```
## Create_user.sql 
```
-- 1. Create the users with the credentials from your PHP $users and $pass
CREATE USER 'admin_recipe_app'@'localhost' 
IDENTIFIED BY 'Login_system123$';

-- 2. Initial usage grant
GRANT USAGE ON *.* TO 'admin_recipe_app'@'localhost';

-- 3. Set resource limits (keeping your original requirements)
ALTER USER 'admin_recipe_app'@'localhost' 
REQUIRE NONE 
WITH MAX_QUERIES_PER_HOUR 0 
MAX_CONNECTIONS_PER_HOUR 0 
MAX_UPDATES_PER_HOUR 0 
MAX_USER_CONNECTIONS 0;

-- 4. Grant privileges specifically to the 'recipe_app' database
-- This matches your PHP $db variable
GRANT ALL PRIVILEGES ON recipe_app.* TO 'admin_recipe_app'@'localhost';

-- 5. Apply changes
FLUSH PRIVILEGES;
``` 
## Ceate_View.sql

```
CREATE VIEW user_meal_plans AS
SELECT 
    m.id_user,
    m.plannes_date, 
    m.meal_type, 
    r.title, 
    r.id AS rid 
FROM menus m 
JOIN recipes r ON m.id_recipe = r.id;

CREATE VIEW view_upcoming_meals AS
SELECT 
    m.id_user,
    m.plannes_date, 
    m.meal_type, 
    r.title, 
    r.id AS rid 
FROM menus m 
JOIN recipes r ON m.id_recipe = r.id
WHERE m.plannes_date >= CURDATE();


Recipe_details.php
-- View for Ingredients
CREATE VIEW view_recipe_ingredients AS
SELECT 
    ri.id_recipe,
    i.name, 
    ri.amount, 
    ri.unit 
FROM ingredients i 
JOIN recipe_ingredientes ri ON i.id = ri.id_ingredient;

-- View for Instructions
CREATE VIEW view_recipe_steps AS
SELECT 
    rs.recipe_id,
    rs.step_number, 
    rs.step_description 
FROM recipe_steps rs;
```  

# CRUD.php
```
<link rel="stylesheet" href="../css/style.css">

<?php
require_once __DIR__ . '/../actions/connect_bd.php';

$table = $_REQUEST['table_name'] ?? 'USER';
$edit_id = $_GET['edit'] ?? null;
$row_to_edit = $edit_id ? $conn->query("SELECT * FROM $table WHERE id=$edit_id")->fetch_assoc() : null;

// Save Logic (Insert and Update)
if (isset($_POST['save'])) {
    $fields = $_POST['f'];
    $id = $_POST['id'] ?? null;

    if ($id) { // Update existing
        foreach ($fields as $col => $val) { $set[] = "$col='" . $conn->real_escape_string($val) . "'"; }
        $sql = "UPDATE $table SET " . implode(',', $set) . " WHERE id=$id";
    } else { // Insert new
        $cols = implode(",", array_keys($fields));
        $vals = "'" . implode("','", array_map([$conn, 'real_escape_string'], $fields)) . "'";
        $sql = "INSERT INTO $table ($cols) VALUES ($vals)";
    }
    $conn->query($sql);
    header("Location: ?table_name=$table"); 
}

//  Delete Logic
if (isset($_GET['delete'])) {
    $id = (int)$_GET['delete'];

    // Delete child records first
    $conn->query("DELETE FROM recipe_ingredient WHERE id_ingredient = $id");

    // Then delete parent record
    $conn->query("DELETE FROM ingredient WHERE id = $id");

    header("Location: ?table_name=$table");
}

?>

<form method="get">
    <select name="table_name" onchange="this.form.submit()">
        <option value="users" <?= $table=='user'?'selected':'' ?>>Users</option>
        <option value="ingredients" <?= $table=='ingredients'?'selected':'' ?>>Ingredients</option>
        <option value="menus" <?= $table=='menus'?'selected':'' ?>>Menu</option>
        <option value="recipes" <?= $table=='recipes'?'selected':'' ?>>recipe</option>
        <option value="recipe_ingredientes" <?= $table=='recipe_ingredientes'?'selected':'' ?>>recipe_ingredient</option>
        <option value="recipe_steps" <?= $table=='recipe_steps'?'selected':'' ?>>recipe_steps</option>      
    </select>
</form>

<hr>

<form method="post">
    <input type="hidden" name="table_name" value="<?= $table ?>">
    <?php if($edit_id): ?> <input type="hidden" name="id" value="<?= $edit_id ?>"> <?php endif; ?>
    
    <?php
    $res = $conn->query("DESCRIBE $table");
    while($col = $res->fetch_assoc()): 
        if($col['Extra'] == 'auto_increment') continue;
        $name = $col['Field'];
    ?>
        <label><?= $name ?>:</label>
        <input type="text" name="f[<?= $name ?>]" value="<?= $row_to_edit[$name] ?? '' ?>" required><br>
    <?php endwhile; ?>
    <button type="submit" name="save">SAVE RECORD</button>
</form>

<hr>

<table class="crud-table">
    <?php $data = $conn->query("SELECT * FROM $table"); while($row = $data->fetch_assoc()): ?>
    <tr>
        <?php foreach($row as $v) echo "<td>$v</td>"; ?>
        <td class="actions">
            <a class="btn-edit" href="?table_name=<?= $table ?>&edit=<?= $row['id'] ?>">Edit</a>
            <a class="btn-delete" href="?table_name=<?= $table ?>&delete=<?= $row['id'] ?>" onclick="return confirm('Delete?')">Del</a>
        </td>
    </tr>
    <?php endwhile; ?>
</table>

```

```
**inter modular.md**
```markdown
🇷🇺 ВЕРСИЯ НА РУССКОМ (адаптировано под работу, выполненную одним человеком)
1. Какой проект я сделал

Я разработал веб-приложение «Приложение с рецептами и недельным планировщиком питания», которое помогает пользователям планировать своё меню и находить рецепты.

2. О чём проект

Приложение позволяет:

Просматривать каталог рецептов.

Читать ингредиенты и пошаговые инструкции.

Регистрировать пользователя и входить в систему.

Планировать неделю с помощью интерактивного календаря (завтрак, обед, ужин, перекус).

Смотреть запланированные блюда в личном кабинете.

Это удобный инструмент для ежедневной организации питания.

3. Почему я выбрал этот проект

Я выбрал этот проект, потому что он:

Решает реальную человеческую потребность — удобное планирование еды.

Позволяет объединить и применить изученные технологии.

Практичный, понятный и легко расширяемый.

4. С кем я его сделал

Я выполнил весь проект самостоятельно, включая:

Интерфейс,

базу данных,

серверную логику,

итоговую интеграцию.

5. Как я организовал свою работу

Я работал поэтапно:

Планирование и разработка структуры приложения.

Создание базы данных.

Разработка серверной части.

Верстка интерфейса.

Финальная интеграция и тестирование.

6. Как я сочетал технологии

Я понимаю, как взаимодействуют компоненты:

Frontend — отображает страницы и принимает действия пользователя.

Backend — обрабатывает логику.

База данных — хранит информацию.

Все части соединены, чтобы приложение работало как единая система.

7. Приложение работает корректно

Готовая версия полностью функциональна: регистрация, вход, просмотр рецептов, планирование питания — всё работает.
```
**programacion.md**
```markdown
## planner.php
if (isset($_POST['save_menu'])) { // 1. Проверяем, была ли нажата кнопка "save_menu"
    $date = $_POST['planned_date']; // Получаем дату из формы
    $recipe_id = $_POST['id_recipe']; // Получаем ID рецепта
    $type = $_POST['meal_type']; // Получаем тип (завтрак/обед/ужин)
    
    // 2. Используем ПОДГОТОВЛЕННОЕ ВЫРАЖЕНИЕ (Prepared Statement) для безопасности
    $stmt = $conn->prepare("INSERT INTO menus (plannes_date, id_recipe, id_user, meal_type) VALUES (?, ?, ?, ?)");
    
    // 3. "Привязываем" переменные к знакам вопроса
    // "siis" означает типы данных: string (строка), integer (целое), integer, string
    $stmt->bind_param("siis", $date, $recipe_id, $user_id, $type);
    
    // 4. Выполняем команду записи в базу данных
    $stmt->execute();
    
    echo "<p class='success-msg'>Meal added to your plan!</p>"; // Сообщение об успехе
}



Al primero conecta a `head.php` que contiene la `conecion_bd.php` 
```
include "actions/head.php"; 
```



2. Безопасное выполнение ((Prepared Statement)


$stmt = $conn->prepare($sql);
$stmt->bind_param("i", $user_id); // "i" означает, что $user_id — это целое число (integer)
$stmt->execute();
$result = $stmt->get_result(); // Получаем результат запроса

## recipe_details.php
3. Важные функции безопасности и форматирования
В этой строке используются две очень полезные функции:

PHP

nl2br(htmlspecialchars($step['step_description']))
htmlspecialchars(): Безопасность. Она нейтрализует любые HTML-теги, которые могли случайно или намеренно попасть в описание (защита от XSS-атак).

nl2br(): Форматирование. Расшифровывается как Newline to BR. Она ищет в тексте обычные переносы строк (нажатия клавиши Enter) и заменяет их на HTML-тег <br>. Без этой функции весь текст описания шага слипся бы в одну длинную строку.

## logout.php

. session_start();
Прежде чем удалять сессию, PHP должен «вспомнить», какая именно сессия сейчас активна. Эта команда подключается к текущей сессии пользователя.

2. $_SESSION = array();
Эта строка очищает все данные внутри сессии. Если там хранились user_id, username или role, после этой команды массив становится абсолютно пустым.

3. Удаление Cookie сессии
Это самая технически сложная часть кода, и она очень важна для безопасности:

PHP

if (ini_get("session.use_cookies")) {
    $params = session_get_cookie_params();
    setcookie(session_name(), '', time() - 42000,
        $params["path"], $params["domain"],
        $params["secure"], $params["httponly"]


        тот код представляет собой универсальный механизм управления данными (CRUD) — он позволяет создавать, редактировать и удалять записи в базе данных. Такие скрипты часто используются в админ-панелях.

Однако, внимание: этот код содержит серьезные уязвимости в безопасности. Давайте разберем его логику и риски.
## crud.php
1. Логика подготовки данных
PHP

$table = $_REQUEST['table_name'] ?? 'USER';
$edit_id = $_GET['edit'] ?? null;
$row_to_edit = $edit_id ? $conn->query("SELECT * FROM $table WHERE id=$edit_id")->fetch_assoc() : null;
Динамическая таблица: Скрипт берет имя таблицы прямо из URL. Если в адресе написано ?table_name=recipes, он будет работать с рецептами.

Режим редактирования: Если в URL есть edit=5, скрипт ищет в базе строку с этим ID, чтобы предзаполнить форму для редактирования.

2. Сохранение (Insert или Update)
Скрипт проверяет, передано ли id через скрытое поле формы:

Update (Обновление): Если id есть, формируется строка SET колонка='значение' для каждого поля.

Insert (Вставка): Если id нет, создается новая запись. Используется array_keys, чтобы автоматически получить имена колонок из названий полей формы.

real_escape_string: Это базовая попытка очистить данные от кавычек, чтобы программа не сломалась при вводе текста типа L'Oreal.

3. Удаление (Delete) и целостность данных
PHP

$conn->query("DELETE FROM recipe_ingredient WHERE id_ingredient = $id"); // Удаление зависимостей
$conn->query("DELETE FROM ingredient WHERE id = $id"); // Удаление основного объекта
Здесь показан важный принцип связанных таблиц. Нельзя просто удалить ингредиент, если он используется в рецепте — это вызовет ошибку в базе (или оставит "мусор"). Поэтому сначала удаляются связи в таблице-посреднике (recipe_ingredient), а затем сам ингредиент.

1. Скрытые поля (Hidden inputs)
HTML

<input type="hidden" name="table_name" value="<?= $table ?>">
<?php if($edit_id): ?> <input type="hidden" name="id" value="<?= $edit_id ?>"> <?php endif; ?>
Эти данные не видны пользователю, но отправляются на сервер.

Они сообщают скрипту: "в какую таблицу сохранять" и "какую запись обновлять" (если мы в режиме редактирования).

2. Магия команды DESCRIBE
PHP

$res = $conn->query("DESCRIBE $table");
Это ключевой момент. Команда SQL DESCRIBE запрашивает у базы данных структуру таблицы (список всех колонок, их типы данных и свойства).

3. Генерация полей формы
Вместо того чтобы вручную прописывать <input> для каждого поля, цикл while делает это за вас:

Пропуск ID: if($col['Extra'] == 'auto_increment') continue; — форма не создает поле для первичного ключа (ID), так как база данных генерирует его сама.

Имена полей: $name = $col['Field']; — PHP берет название колонки из базы (например, title, price или description) и использует его для подписи (label) и имени инпута (name="f[...]").

Массив f[]: Обратите внимание на name="f[<?= $name ?>]". Все данные из формы придут в PHP в виде одного ассоциативного массива $_POST['f'], что позволяет легко обработать их циклом foreach.

4. Режим редактирования
PHP

value="<?= $row_to_edit[$name] ?? '' ?>"
Если мы редактируем существующую запись, в инпуты автоматически подставляются текущие значения из переменной $row_to_edit, которую мы получили ранее. Если это создание новой записи — поля остаются пустыми.
```
**programacion_trimestral.md**
```markdown
# 1.-Indroduccion brece y contexalizacion
mi aplicación web dinámica diseñada para la gestión y planificación de comida semanales
En este parte voy a exlicar mi codigo de funcionles  de la mi proyecto App de Recetas y Planificador de Comidas. Explcacion de este parte es programacion de la  Backend PhP 

Explico como funciona 
* Login sitem 
* Planner 
* Como funciona la CRUD de la admin
* seccion  




# 2.-Desarrollo técnico correcto y preciso
## connect_bd.php
en este archivo es conecta la bases de datos a mi pagina . Este archivo es conecta a todos los arvhivos php directo como en `CRUD.php` or usa la sub archivo `head.php` que include archivo a su mismo
```
<?php
$host = "localhost";
$user = "admin_recipe_app";
$pass = "Login_system123$";
$db   = "recipe_app";

$conn = mysqli_connect($host, $user, $pass, $db);

if (!$conn) {
    die("Database connection failed: " . mysqli_connect_error());
}
?>
```
## head.php
Esta archivo es crado para navigar y hace una structura (que explica en la Lenguajes de marcas) pero tambien tiene `session_status` que pruebe si tiene session_status 
```
<?php
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}
require_once __DIR__ . '/connect_bd.php'; 
?>
```
en `nav` creo un `if` y `else` que probar `session_status` si esta muestra `My acount link` a otro caso muestra `Register` y `Login` 
```
            <?php if(isset($_SESSION['user_id'])): ?>
                <a href="profile.php">My Account</a>
                <a href="inc/logout.php" style="color: #666;">Logout</a>
            <?php else: ?>
                <a href="login.php">Login</a>
                <a href="register.php">Register</a>
``` 
## index.php
Este es la pagina riaz de la mi pagina. Al primero conecta a `head.php` que contiene la `conecion_bd.php` 
```
<?php include "actions/head.php"; ?>
```
siguiente paso es Select todo de la tabla `recipes`
```
$sql = "SELECT * FROM recipes;";
$result = $conn->query($sql);
```
y ahora demustra sete informacion en la pantalla 
* probar si tiene algo en este tabla si no mustra `echo "The table is empty.";`
* usa `while` para dumestra todo infomrmacio de la tabla `recipes`
```
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
            echo '<div class="recipe-card">'; 
            echo '<div class="image-wrapper">'; 
            echo '<img src="' . $row['img'] . '" class="recipe-image">';
            echo '</div>';
            echo '<h3>' . $row['title'] . '</h3>';
            echo '<a href="recipe_details.php?id=' . $row['id'] . '" class="btn">View Full Recipe</a>';
echo '</div>';
```
## recipes_details.php
Este es la pagina mustrar informacion de la recipes. Al primero conecta a `head.php` que contiene la `conecion_bd.php` 
```
require_once __DIR__ . '/actions/head.php'; 
```
siguiente paso es Select todo de la tabla `recipes` 
```
$stmt = $conn->prepare("SELECT title FROM recipes WHERE id = ?"); 
```
hago una codigo de la seguridad Prepared Statement
```
$stmt_ing = $conn->prepare($sql_ing);
$stmt_ing->bind_param("i", $recipe_id);
$stmt_ing->execute();
$ingredients = $stmt_ing->get_result();
```
probar si tiene este ricepte or no 
```
if ($recipe) {
}else{echo "Recipe not found.";}
``` 
uso while para demutra  `title`  
```
echo "<h1 class='recipe-detail-header'>" . htmlspecialchars($recipe['title']) . "</h1>";
```
hace igual para dumuestra lista de la ingridientes
```
$sql_ing = "SELECT name, amount, unit FROM view_recipe_ingredients WHERE id_recipe = ?";
    $stmt_ing = $conn->prepare($sql_ing);
    $stmt_ing->bind_param("i", $recipe_id);
    $stmt_ing->execute();
    $ingredients = $stmt_ing->get_result();

    while ($row = $ingredients->fetch_assoc()) {
        echo "<li>" . htmlspecialchars($row['amount'] . " " . $row['unit'] . " " . $row['name']) . "</li>";
    }
    echo "</ul>";
```
y creo lista de `steps` en la logica igual
```
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
    echo "</div>"
```
## palnner.php
Al primero conecta a `head.php` que contiene la `conecion_bd.php` 
```
include "actions/head.php"; 
```
probar si usario connecta or no. si no salida de a este pagina 
```
if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit();
}
```
declara unas variables 
```
$user_id = $_SESSION['user_id'];
$date = $_POST['planned_date'];
$recipe_id = $_POST['id_recipe'];
$type = $_POST['meal_type'];
```

creo una insert de la tabla nenus con Prepared Statement de seguridad 
```
    $stmt = $conn->prepare("INSERT INTO menus (plannes_date, id_recipe, id_user, meal_type) VALUES (?, ?, ?, ?)");
    $stmt->bind_param("siis", $date, $recipe_id, $user_id, $type);
    $stmt->execute();
    echo "<p class='success-msg'>Meal added to your plan!</p>";
```
creo una forma de la gurda informcion detro de este creo una select de las recipes con Prepared Statement de seguridad que mustra nombre de ricipes
```
  <div class="recipe-card" style="margin-bottom: 30px;">
        <form method="POST" style="box-shadow: none; margin: 0; max-width: 100%;">
            <div >
                <div>
                    (opcion date)
                <div>
                    <label>Select Recipe</label>
                    <select name="id_recipe" required style="width:100%; padding:12px; border-radius:6px; border:1px solid #ddd;">
                        <?php
                        $recipes = $conn->query("SELECT id, title FROM recipes");
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
```
creo una `div` que mustra todos la gurdados comida de esta usario en que hago una `Select`
```
<div class="planner-grid">
    <?php
    $sql = "SELECT plannes_date, meal_type, title, rid 
            FROM user_meal_plans 
            WHERE id_user = ? 
            ORDER BY plannes_date ASC";
            
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("i", $user_id);
    $stmt->execute();
    $result = $stmt->get_result();
```
logica de mustra de la recipetes
* 1. probar si tiene alguno si no mustra texto que planner is emty
* 2.  declara formto de muestra date `$formatted_date = date("l, M j", strtotime($row['plannes_date']));`
* 3. croe una pagina patallita con informacion 
```
<div class="recipe-card day-column">
                <span class="badge"><?php echo htmlspecialchars($row['meal_type']); ?></span>
                <h4><?php echo $formatted_date; ?></h4>
                <p><strong><?php echo htmlspecialchars($row['title']); ?></strong></p>
                <a href="recipe_details.php?id=<?php echo $row['rid']; ?>" style="font-size: 0.8rem; color: #ff6b6b;">View Recipe</a>
            </div>
```
todo la structura 
```
 if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            $formatted_date = date("l, M j", strtotime($row['plannes_date']));
            ?>
            <div class="recipe-card day-column">
                <span class="badge"><?php echo htmlspecialchars($row['meal_type']); ?></span>
                <h4><?php echo $formatted_date; ?></h4>
                <p><strong><?php echo htmlspecialchars($row['title']); ?></strong></p>
                <a href="recipe_details.php?id=<?php echo $row['rid']; ?>" style="font-size: 0.8rem; color: #ff6b6b;">View Recipe</a>
            </div>
            <?php
        }
    } else {
        echo "<p style='grid-column: 1/-1; text-align: center;'>Your planner is empty.</p>";
    }
```
### profile.php

Al primero conecta a `head.php` que contiene la `conecion_bd.php` 
```
include "actions/head.php"; 
```

probar si usario connecta or no. si no salida de a este pagina 
```
if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit();
}
```
(saltar parte de la informacio sobre persona)

en este parte  hago un select de `view_upcoming_meals` view para muestra informacion de la planner solo lo más nuevo 3  
```
$sql = "SELECT plannes_date, meal_type, title, rid 
        FROM view_upcoming_meals 
        WHERE id_user = ? 
        ORDER BY plannes_date ASC 
        LIMIT 3"; 

$stmt = $conn->prepare($sql);
$stmt->bind_param("i", $user_id);
$stmt->execute();
$result = $stmt->get_result();
```
logica de mustra de la recipetes
* 1. probar si tiene alguno si no mustra texto que planner is emty
* 2.  declara formto de muestra date `$formatted_date = date("l, M j", strtotime($row['plannes_date']));`
* 3. croe una pagina patallita con informacion 
```
<div class="recipe-card day-column">
                <span class="badge"><?php echo htmlspecialchars($row['meal_type']); ?></span>
                <h4><?php echo $formatted_date; ?></h4>
                <p><strong><?php echo htmlspecialchars($row['title']); ?></strong></p>
                <a href="recipe_details.php?id=<?php echo $row['rid']; ?>" style="font-size: 0.8rem; color: #ff6b6b;">View Recipe</a>
            </div>
```
todo la structura 
```
 if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            $formatted_date = date("l, M j", strtotime($row['plannes_date']));
            ?>
            <div class="recipe-card day-column">
                <span class="badge"><?php echo htmlspecialchars($row['meal_type']); ?></span>
                <h4><?php echo $formatted_date; ?></h4>
                <p><strong><?php echo htmlspecialchars($row['title']); ?></strong></p>
                <a href="recipe_details.php?id=<?php echo $row['rid']; ?>" style="font-size: 0.8rem; color: #ff6b6b;">View Recipe</a>
            </div>
            <?php
        }
    } else {
        echo "<p style='grid-column: 1/-1; text-align: center;'>Your planner is empty.</p>";
    }
```

## create_user.php
en ente archivo usario creo su usario 
Al primero conecta a `head.php` que contiene la `conecion_bd.php` 
```
include "actions/head.php"; 
```
* 1. probar si informacion de la from que es en la `register.php`
register.php
```
<?php require_once __DIR__ . '/inc/create_user.php'; ?>  
<form method="POST">
    (inputs)
    <button name="login">Create</button>
</form>
```
* 2. delara variables con valores de este forma 
```
    $username = trim($_POST['username']);
    $password = $_POST['password'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
```
* 3. creo  Username Validation (5-20 characters)
```
if (strlen($username) < 5 || strlen($username) > 20) {
        $errors[] = "Username must be between 5 and 20 characters.";
    }
```
* 4. Password Validation (8-16 characters + number)
```
if (strlen($password) < 8 || strlen($password) > 16) {
    $errors[] = "Password must be between 8 and 16 characters.";
}
if (!preg_match("/[0-9]/", $password)) {
    $errors[] = "Password must contain at least one number.";
}
```
* 5. si todo vien ejecuta este codigo gurda password en la hash 
```
if (empty($errors)) {
        $hashed_password = password_hash($password, PASSWORD_DEFAULT);
```

* 6. hago insert en la bases de datos de la tabla `users`
```
    $stmt = $conn->prepare(
"INSERT INTO `users` (username, password, email, phone) VALUES (?, ?, ?, ?)"
        );

        $stmt->bind_param(
            "ssss",
            $username,
            $hashed_password,
            $email,
            $phone
        );
```
* 7. muestra infromacion si paso vien or no 
```
if ($stmt->execute()) {
    echo "<p style='color:green;'>Registration successful! <a href='login.php'>Login here</a></p>";
} else {
    echo "<p style='color:red;'>Errrrror: Username might already be taken.</p>";
}
```
## login.php
probar si usario connecta or not si no sale 
```
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}
```  

Al primero conecta a `head.php` que contiene la `conecion_bd.php` 
```
include "actions/head.php"; 
```
* 1. probar si informacion de la from que es en la `login.php`
register.php
```
<?php require_once __DIR__ . '/inc/login_user.php'; ?>  
<form method="POST">
    <h2>login_system</h2>
    <input type="text" name="username" required placeholder="Username"><br><br>
    <input type="password" name="password" required placeholder="Password"><br>
    <small>Min. 8 characters + 1 number</small><br><br>
    <button name="login">Login</button>
</form>
```
* 2. coge informacion de la `login.php`
```
if (isset($_POST['login'])) {}
```
* 3. declara varible de valores `login.php`
```
$username = $_POST['username'];
$password = $_POST['password'];
```
* 4. Use a prepared statement to find the user
```
$stmt = $conn->prepare("SELECT id, password FROM users WHERE username = ?");
$stmt->bind_param("s", $username);
$stmt->execute();
$result = $stmt->get_result();
```
* 5. Compare the submitted password with the hashed password in the DB
```
 if (password_verify($password, $user['password'])) {
    $_SESSION['user_id'] = $user['id'];
    $_SESSION['username'] = $username;
    header("Location: ./profile.php");
    exit();
} else {
    echo "<p class='error'>Invalid password.</p>";
}
} else {
echo "<p class='error'>User not found.</p>";
```
## update_informacio.php
Al primero conecta a `head.php` que contiene la `conecion_bd.php` 
```
include "actions/head.php"; 
```
* 1. probar si informacion de la from que es en la `update.php`
register.php
```
<form method="POST">
    <h2>Update user</h2>
    <input type="text" name="username" required
        value="<?php echo htmlspecialchars($user['username']); ?>"
        placeholder="Username"><br><br>
    <input type="email" name="email" required
        value="<?php echo htmlspecialchars($user['email']); ?>"
        placeholder="Email"><br><br>
    <input type="text" name="phone" required
        value="<?php echo htmlspecialchars($user['phone']); ?>"
        placeholder="Phone"><br><br>
    <input type="password" name="password" placeholder="New Password"><br>
    <small>Leave empty to keep current password</small><br><br>
    <input type="hidden" name="user_id" value="<?php echo (int)$user_id; ?>">
    <button name="update">Update</button>
```
* 2. Basic validation
```
if (strlen($username) < 3) {
    die("Username too short");
}

if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
    die("Invalid email");
}
```
* 3. If password is provided → hash and update it
```
if (!empty($password)) {

    if (!preg_match('/^(?=.*\d).{8,}$/', $password)) {
        die("Password must be at least 8 characters and contain a number");
    }

    $hashedPassword = password_hash($password, PASSWORD_DEFAULT);

    $sql = "UPDATE USER 
            SET username = ?, email = ?, phone = ?, password = ?
            WHERE id = ?";

    $stmt = $conn->prepare($sql);
    $stmt->bind_param("ssssi", $username, $email, $phone, $hashedPassword, $user_id);

} else
```
* 4. Update without changing password
```
$sql = "UPDATE USER 
        SET username = ?, email = ?, phone = ?
        WHERE id = ?";

$stmt = $conn->prepare($sql);
$stmt->bind_param("sssi", $username, $email, $phone, $user_id);
```
* 5. verifica el resultado de ejecutar una consulta SQL a través de una declaración preparada ($stmt)
```
if ($stmt->execute()) {
    header("Location: profile.php?updated=1");
    exit;
} else {
    echo "Update failed: " . $stmt->error;
}
```
## logout.php
este pagina hago una logiut de la usario
* 1. probar a session_start  
* 2. delete una seccion despues de una perioda y borar cokkie or en la entre en este pagina 
```
<?php
session_start();

$_SESSION = array();

if (ini_get("session.use_cookies")) {
    $params = session_get_cookie_params();
    setcookie(session_name(), '', time() - 42000,
        $params["path"], $params["domain"],
        $params["secure"], $params["httponly"]
    );
}

session_destroy();

header("Location: ../login.php"); 
exit();
?>
```
## CRUD.php
conecta directa a la bases de datos
```
require_once __DIR__ . '/../actions/connect_bd.php';
```
este parte coge nobre de la table y id y luego  Carga una fila de la base de datos para editarla.

### Save Logic (Insert and Update)
```
if (isset($_POST['save'])) {
    $fields = $_POST['f'];
    $id = $_POST['id'] ?? null;

    if ($id) { 
        foreach ($fields as $col => $val) { $set[] = "$col='" . $conn->real_escape_string($val) . "'"; }
        $sql = "UPDATE $table SET " . implode(',', $set) . " WHERE id=$id";
    } else { 
        $cols = implode(",", array_keys($fields));
        $vals = "'" . implode("','", array_map([$conn, 'real_escape_string'], $fields)) . "'";
        $sql = "INSERT INTO $table ($cols) VALUES ($vals)";
    }
    $conn->query($sql);
    header("Location: ?table_name=$table"); 
}
```

* 1. coge informacion de las formularios 
```
$fields = $_POST['f'];
$id = $_POST['id'] ?? null;
```
* 2. Update existing
```
if ($id) { Update existing
        foreach ($fields as $col => $val) { $set[] = "$col='" . $conn->real_escape_string($val) . "'"; }
        $sql = "UPDATE $table SET " . implode(',', $set) . " WHERE id=$id";
    } 
``` 
* 3. Insert new
else {
        $cols = implode(",", array_keys($fields));
        $vals = "'" . implode("','", array_map([$conn, 'real_escape_string'], $fields)) . "'";
        $sql = "INSERT INTO $table ($cols) VALUES ($vals)";
    }
* 4. envio informacion en la bases de datos 
```
$conn->query($sql);
header("Location: ?table_name=$table"); 
```

### Delete Logic
```
if (isset($_GET['delete'])) {
    $id = (int)$_GET['delete'];

    $conn->query("DELETE FROM recipe_ingredient WHERE id_ingredient = $id");

    $conn->query("DELETE FROM ingredient WHERE id = $id");

    header("Location: ?table_name=$table");
}
```
* 1. Delete child records first
```
$conn->query("DELETE FROM recipe_ingredient WHERE id_ingredient = $id");
```
* 2. Then delete parent record
```
$conn->query("DELETE FROM ingredient WHERE id = $id");
``` 
* 3. envio a la   bases de datos
```  
header("Location: ?table_name=$table");
```
### Creacion de la `form` y `tabla`
####creo la form 
* 1. envionombre de la tabla que esta invisbile 
```
<?php if($edit_id): ?>
    <input type="hidden" name="id" value="<?= $edit_id ?>">
<?php endif; ?>
```

* 2. coge structura de la tabla 
```
$res = $conn->query("DESCRIBE $table");
``` 
* 3.  uso `while` para dumustra todo 
```
while($col = $res->fetch_assoc()): 
        if($col['Extra'] == 'auto_increment') continue;
        $name = $col['Field'];
    ?>
        <label><?= $name ?>:</label>
        <input type="text" name="f[<?= $name ?>]" value="<?= $row_to_edit[$name] ?? '' ?>" required><br>
    <?php endwhile; ?>
```
* 4. creo buuton para submit este en la bases de datos
```
    <button type="submit" name="save">SAVE RECORD</button>
```
#### creo la tabla 
* 1. select todo de la table que select en la opcion 
```
    <?php $data = $conn->query("SELECT * FROM $table"); while($row = $data->fetch_assoc()): ?>
``` 
from de la opciones
``` 
<form method="get">
    <select name="table_name" onchange="this.form.submit()">
        <option value="users" <?= $table=='user'?'selected':'' ?>>Users</option>
        (opciones)
    </select>
</form>
```
* 2. para cada linea muestra valores de este tabla y aññofo los botones 
```
<tr>
        <?php foreach($row as $v) echo "<td>$v</td>"; ?>
        <td class="actions">
            <a class="btn-edit" href="?table_name=<?= $table ?>&edit=<?= $row['id'] ?>">Edit</a>
            <a class="btn-delete" href="?table_name=<?= $table ?>&delete=<?= $row['id'] ?>" onclick="return confirm('Delete?')">Del</a>
        </td>
</tr>
```

# 4.-Cierre/Conclusión enlazando con la unidad
En este parte de la paracita uso mis conocimientos de PhP y CSS para crear Backend  de la mi aplicaion web dinamica diseña para gestin y planificacion de comida.

durante este practica hago este funciones 
* Creado login sitem 
* Planner que usario contiene informcaion para munes de la semana (o mas)
* Conecta Html con Mysql usa Php que todo informacion gurda en la bases de datos
* Hago una Crud de la admin panel que borar gurdar update gurdar informacion de la tabla diferrenete 
* en login sitema usario puede operar con cuenta Update su datos 
* creao un sissecion que el usario sale de la pagina y abre su usario esta connectado 
Este proyecto demuetra pagina real que peude crear en la vida real 


# Codigo Completo

##
```

```







```
**texto original en ruso.md**
```markdown
# Dime qué tema escogiste y por qué
Mi aplicaion es la  App de Recetas y Planificador de Comidas
Зачем я это разработал? Потому что посчитал, что будет интересно сделать что-то подобное, так как не очень много приложений такого типа в украинском пространстве, как я думал до начала этого проекта.
а так же он должен был решать 
* человеческую потребность — удобное планирование еды которое всегда есть 
* позволяет объединить технологии и упростить жизнь с закупкой продуктов 
* вибором еди что люди не догло не думая  



Поэтому сначала я хотел сделать так, чтобы каждый пользователь мог добавлять еду, и чтобы она проходила проверку от самих ползеватълей. Но когда я начал это реализовывать, оказалось, что это намного сложнее, чем я думал, и поэтому я отказался от этой идеи.

В итоге я оставил только ту часть, где пользователь может составлять план на неделю.В будущем планирую добавить фильтры по сложности приготовления и приблизительной стоимости, чтобы было ещё проще выбирать блюда и продукты.

[First version of project](https://github.com/Sagmanua/Proyecto-Entornos-de-Desarrollo/tree/main/dosc/Diagramas)

так как я дедад все один я занимался все от разработки base de datos и до Froend 


PHP был выбран потому, что мы его проходили, и я ничего в нём не понимал. Я хотел подготовиться к экзамену.
Сначала я просто ненавидел этот язык из-за непонятного синтаксиса, но потом понял его главную особенность — он может содержать внутри себя HTML.
Я думал над JS но так как в конце это должно быть сдано в виде екзамена я отсановился все таки на PHP так ка мне пришлось еще писать на PY и делать 2 работу (я так посчитал )


## index 
Это главная страница, где можно выбрать понравившееся блюдо и перейти на его страницу, нажав кнопку `View full recipe `
## recipe_details
Название ингридиенти и несколько шагов (так как база даних тестовая)
## profile 
Твое username  кнопки операций а так же 3 самих ближаших приемов пищи 
## planner
В planner ты можешь создвать плани едит выбрирай день что это за еда и рецепт ниже видишь всю эду которую юзер сохранил
## login 
два поняла для входу в систему
## register
понял для регистрации
## update_user 
тут можно помянять информиции о user
## CRUD
Это админ-панель, на которой можно реализовать добавление, удаление, обновление и сохранение данных.



Создавая этот проект, я научился создавать грамотные базы данных и сохранять в них изображения с правильной структурой. А также я научился подключать базы данных к PHP, обрабатывать данные, получаемые из базы, и отправлять туда информацию.
# 2.-Desarrollo técnico correcto y preciso





# Codigo Completo
Project\  
├─ explicacion.md   
├─ Crete Vies.sql  
├─ datebase.sql  
├─ insert_datos.sql  
└─ 
##
```

```

# 4.-Cierre/Conclusión enlazando con la unidad




# 🥗 App de Recetas y Planificador de Comidas

Una aplicación web full-stack desarrollada en PHP diseñada para ayudar a los usuarios a descubrir recetas, gestionar perfiles y organizar sus hábitos alimenticios semanales a través de un planificador interactivo.

## 📝 Descripción del Proyecto
Este proyecto es una herramienta integral para la gestión de cocina. Permite a los usuarios registrados explorar una colección de recetas, ver detalles de preparación y agendar sus comidas diarias (desayuno, almuerzo, cena o snacks) en un calendario personalizado.

## ✨ Características Principales
* **Autenticación de Usuarios:** Sistema de registro y login seguro con manejo de sesiones.
* **Planificador Semanal:** Interfaz para añadir recetas a fechas específicas y tipos de comida.
* **Detalles de Receta:** Visualización de ingredientes con cantidades, unidades e instrucciones paso a paso.
* **Panel de Usuario:** Perfil personalizado que muestra las próximas comidas programadas.
* **Catálogo Dinámico:** Página principal que carga automáticamente las recetas disponibles desde la base de datos.

## 🛠 Tecnologías Utilizadas
* **Backend:** PHP.
* **Base de Datos:** MySQL.
* **Frontend:** HTML5 y CSS3 con diseño de cuadrículas (Grid).
* **Servidor:** Compatible con entornos locales como XAMPP o WAMP.
```
#### images
##### diagramas
**diagrama recipe_app.json**
```json
{
  "formas": [
    {
      "id": "forma-1",
      "tipo": "entity",
      "left": "452px",
      "top": "120px",
      "width": "",
      "height": "",
      "entityName": "users",
      "properties": [
        {
          "id": "prop-1",
          "name": "id"
        },
        {
          "id": "prop-2",
          "name": "email"
        },
        {
          "id": "prop-3",
          "name": "phone"
        },
        {
          "id": "prop-4",
          "name": "username"
        },
        {
          "id": "prop-5",
          "name": "email"
        }
      ]
    },
    {
      "id": "forma-2",
      "tipo": "entity",
      "left": "349px",
      "top": "334px",
      "width": "",
      "height": "",
      "entityName": "recipes",
      "properties": [
        {
          "id": "prop-6",
          "name": "id"
        },
        {
          "id": "prop-7",
          "name": "id_user"
        },
        {
          "id": "prop-8",
          "name": "title"
        },
        {
          "id": "prop-9",
          "name": "prep_time"
        },
        {
          "id": "prop-10",
          "name": "description"
        },
        {
          "id": "prop-11",
          "name": "img"
        },
        {
          "id": "prop-12",
          "name": "serving"
        }
      ]
    },
    {
      "id": "forma-3",
      "tipo": "entity",
      "left": "520px",
      "top": "643px",
      "width": "",
      "height": "",
      "entityName": "ingredientes",
      "properties": [
        {
          "id": "prop-13",
          "name": "id"
        },
        {
          "id": "prop-14",
          "name": "name"
        },
        {
          "id": "prop-15",
          "name": "calories"
        },
        {
          "id": "prop-16",
          "name": "type"
        }
      ]
    },
    {
      "id": "forma-4",
      "tipo": "entity",
      "left": "150px",
      "top": "200px",
      "width": "",
      "height": "",
      "entityName": "menus",
      "properties": [
        {
          "id": "prop-17",
          "name": "id"
        },
        {
          "id": "prop-18",
          "name": "plannes_date"
        },
        {
          "id": "prop-19",
          "name": "id_recipe"
        },
        {
          "id": "prop-20",
          "name": "id_user"
        },
        {
          "id": "prop-21",
          "name": "meal_ytpe"
        }
      ]
    },
    {
      "id": "forma-5",
      "tipo": "entity",
      "left": "563px",
      "top": "389px",
      "width": "",
      "height": "",
      "entityName": "recipe_ingredientes",
      "properties": [
        {
          "id": "prop-22",
          "name": "id"
        },
        {
          "id": "prop-23",
          "name": "id_recipe"
        },
        {
          "id": "prop-24",
          "name": "id ingredient"
        },
        {
          "id": "prop-25",
          "name": "amount"
        },
        {
          "id": "prop-26",
          "name": "unit"
        },
        {
          "id": "prop-27",
          "name": "atributo"
        }
      ]
    },
    {
      "id": "forma-6",
      "tipo": "entity",
      "left": "145px",
      "top": "573px",
      "width": "",
      "height": "",
      "entityName": "recipe_steps",
      "properties": [
        {
          "id": "prop-28",
          "name": "id"
        },
        {
          "id": "prop-29",
          "name": "recipe_id"
        },
        {
          "id": "prop-30",
          "name": "step_number"
        },
        {
          "id": "prop-31",
          "name": "step_description"
        }
      ]
    }
  ],
  "flechas": [
    {
      "desde": {
        "shapeId": "forma-1",
        "propId": "prop-1",
        "side": "left"
      },
      "hasta": {
        "shapeId": "forma-4",
        "propId": "prop-20",
        "side": "right"
      },
      "tipo": "simple",
      "estilo": "ortho"
    },
    {
      "desde": {
        "shapeId": "forma-1",
        "propId": "prop-1",
        "side": "left"
      },
      "hasta": {
        "shapeId": "forma-4",
        "propId": "prop-20",
        "side": "right"
      },
      "tipo": "simple",
      "estilo": "ortho"
    },
    {
      "desde": {
        "shapeId": "forma-1",
        "propId": "prop-1",
        "side": "left"
      },
      "hasta": {
        "shapeId": "forma-4",
        "propId": "prop-20",
        "side": "right"
      },
      "tipo": "simple",
      "estilo": "ortho"
    },
    {
      "desde": {
        "shapeId": "forma-1",
        "propId": "prop-1",
        "side": "left"
      },
      "hasta": {
        "shapeId": "forma-4",
        "propId": "prop-20",
        "side": "right"
      },
      "tipo": "simple",
      "estilo": "straight"
    },
    {
      "desde": {
        "shapeId": "forma-1",
        "propId": "prop-1",
        "side": "left"
      },
      "hasta": {
        "shapeId": "forma-2",
        "propId": "prop-7",
        "side": "right"
      },
      "tipo": "simple",
      "estilo": "straight"
    },
    {
      "desde": {
        "shapeId": "forma-2",
        "propId": "prop-6",
        "side": "left"
      },
      "hasta": {
        "shapeId": "forma-4",
        "propId": "prop-19",
        "side": "right"
      },
      "tipo": "simple",
      "estilo": "straight"
    },
    {
      "desde": {
        "shapeId": "forma-3",
        "propId": "prop-13",
        "side": "right"
      },
      "hasta": {
        "shapeId": "forma-5",
        "propId": "prop-24",
        "side": "left"
      },
      "tipo": "simple",
      "estilo": "straight"
    },
    {
      "desde": {
        "shapeId": "forma-2",
        "propId": "prop-6",
        "side": "right"
      },
      "hasta": {
        "shapeId": "forma-5",
        "propId": "prop-22",
        "side": "left"
      },
      "tipo": "simple",
      "estilo": "straight"
    },
    {
      "desde": {
        "shapeId": "forma-2",
        "propId": "prop-6",
        "side": "left"
      },
      "hasta": {
        "shapeId": "forma-6",
        "propId": "prop-28",
        "side": "right"
      },
      "tipo": "simple",
      "estilo": "straight"
    }
  ]
}
```
## inc
**create_user.php**
```php
<?php
require_once __DIR__ . '/../actions/head.php';

if (isset($_POST['login'])) {
    $username = trim($_POST['username']); // Remove accidental whitespace
    $password = $_POST['password'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $errors = [];

    // 1. Username Validation (5-20 characters)
    if (strlen($username) < 5 || strlen($username) > 20) {
        $errors[] = "Username must be between 5 and 20 characters.";
    }

    // 2. Password Validation (8-16 characters + number)
    if (strlen($password) < 8 || strlen($password) > 16) {
        $errors[] = "Password must be between 8 and 16 characters.";
    }
    if (!preg_match("/[0-9]/", $password)) {
        $errors[] = "Password must contain at least one number.";
    }

    // 3. Execution
    if (empty($errors)) {
        $hashed_password = password_hash($password, PASSWORD_DEFAULT);

        $stmt = $conn->prepare(
    "INSERT INTO `users` (username, password, email, phone) VALUES (?, ?, ?, ?)"
            );

            $stmt->bind_param(
                "ssss",
                $username,
                $hashed_password,
                $email,
                $phone
            );


        if ($stmt->execute()) {
            echo "<p style='color:green;'>Registration successful! <a href='login.php'>Login here</a></p>";
        } else {
            echo "<p style='color:red;'>Errrrror: Username might already be taken.</p>";
        }
    } else {
        // Display all boundary errors
        foreach ($errors as $error) {
            echo "<p style='color:red;'>$error</p>";
        }
    }
}
?>
```
**login_user.php**
```php
<?php
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}
require_once __DIR__ . '/../actions/head.php'; 

if (isset($_POST['login'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];

    // Use a prepared statement to find the user
    $stmt = $conn->prepare("SELECT id, password FROM users WHERE username = ?");
    $stmt->bind_param("s", $username);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($user = $result->fetch_assoc()) {
        // Compare the submitted password with the hashed password in the DB
        if (password_verify($password, $user['password'])) {
            $_SESSION['user_id'] = $user['id'];
            $_SESSION['username'] = $username;
            header("Location: ./profile.php");
            exit();
        } else {
            echo "<p class='error'>Invalid password.</p>";
        }
    } else {
        echo "<p class='error'>User not found.</p>";
    }
}
?>
```
**logout.php**
```php
<?php
session_start();

$_SESSION = array();

if (ini_get("session.use_cookies")) {
    $params = session_get_cookie_params();
    setcookie(session_name(), '', time() - 42000,
        $params["path"], $params["domain"],
        $params["secure"], $params["httponly"]
    );
}

session_destroy();

header("Location: ../login.php"); 
exit();
?>
```
**update_informacio.php**
```php

<?php
require_once __DIR__ . '/../actions/head.php';

if (isset($_POST['update'])) {

    $user_id  = (int)$_POST['user_id'];
    $username = trim($_POST['username']);
    $email    = trim($_POST['email']);
    $phone    = trim($_POST['phone']);
    $password = $_POST['password'];

    // Basic validation
    if (strlen($username) < 3) {
        die("Username too short");
    }

    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        die("Invalid email");
    }

    // If password is provided → hash and update it
    if (!empty($password)) {

        if (!preg_match('/^(?=.*\d).{8,}$/', $password)) {
            die("Password must be at least 8 characters and contain a number");
        }

        $hashedPassword = password_hash($password, PASSWORD_DEFAULT);

        $sql = "UPDATE USER 
                SET username = ?, email = ?, phone = ?, password = ?
                WHERE id = ?";

        $stmt = $conn->prepare($sql);
        $stmt->bind_param("ssssi", $username, $email, $phone, $hashedPassword, $user_id);

    } else {
        // Update without changing password
        $sql = "UPDATE USER 
                SET username = ?, email = ?, phone = ?
                WHERE id = ?";

        $stmt = $conn->prepare($sql);
        $stmt->bind_param("sssi", $username, $email, $phone, $user_id);
    }

    if ($stmt->execute()) {
        header("Location: profile.php?updated=1");
        exit;
    } else {
        echo "Update failed: " . $stmt->error;
    }
}

```