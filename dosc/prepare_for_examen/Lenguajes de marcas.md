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