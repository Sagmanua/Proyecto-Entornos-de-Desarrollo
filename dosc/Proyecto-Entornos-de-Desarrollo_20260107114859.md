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