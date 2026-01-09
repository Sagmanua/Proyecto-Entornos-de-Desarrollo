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