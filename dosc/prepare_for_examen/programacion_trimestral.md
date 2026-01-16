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






