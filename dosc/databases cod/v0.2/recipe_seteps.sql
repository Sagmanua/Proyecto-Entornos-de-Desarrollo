mysql> CREATE TABLE recipe_steps (
    ->     id INT AUTO_INCREMENT PRIMARY KEY,
    ->     recipe_id INT,                  -- Foreign key linking to the recipe table
    ->     step_number INT,                -- Step number (1, 2, 3, etc.)
    ->     step_description TEXT,          -- Description of the step
    ->     FOREIGN KEY (recipe_id) REFERENCES recipes (id) ON DELETE CASCADE
    -> );
Query OK, 0 rows affected (0,05 sec)

mysql> INSERT INTO recipe_steps (recipe_id, step_number, step_description) VALUES
    -> (1, 1, 'Cook the pasta until al dente.'),
    -> (1, 2, 'In a pan, render guanciale until crispy.'),
    -> (1, 3, 'Mix egg and cheese, then combine with the pasta and guanciale.'); 
Query OK, 3 rows affected (0,01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> 
INSERT INTO recipe_steps (recipe_id, step_number, step_description) VALUES
    -> (2, 1, 'Preheat the oven to 200°C.'),
    -> (2, 2, 'Melt the chocolate and butter.'),
    -> (2, 3, 'Pour the batter into molds and bake for 12 minutes.');

mysql> 
mysql> INSERT INTO recipe_steps (recipe_id, step_number, step_description) VALUES
    -> (3, 1, 'Cook quinoa and prepare chickpeas.'),
    -> (3, 2, 'Chop and roast the vegetables.'),
    -> (3, 3, 'Assemble the bowl with all ingredients.');
Query OK, 3 rows affected (0,01 sec)
Records: 3  Duplicates: 0  Warnings: 0
