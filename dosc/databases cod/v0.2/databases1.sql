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
    -- Foreign Keys
    FOREIGN KEY (id_recipe) REFERENCES recipes(id) ON DELETE CASCADE,
    FOREIGN KEY (id_ingredient) REFERENCES ingredients(id) ON DELETE CASCADE,
    -- Unique constraint ensures you don't add the same ingredient to a recipe twice
    UNIQUE KEY unique_recipe_ingredient (id_recipe, id_ingredient)
);


ALTER TABLE recipe_ingredientes 
    ADD UNIQUE KEY (id_recipe, id_ingredient);


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