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