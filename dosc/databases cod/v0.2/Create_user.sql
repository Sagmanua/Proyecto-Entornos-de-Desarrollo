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