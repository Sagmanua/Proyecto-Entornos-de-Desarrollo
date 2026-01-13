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