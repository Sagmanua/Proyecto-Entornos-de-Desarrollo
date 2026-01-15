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
