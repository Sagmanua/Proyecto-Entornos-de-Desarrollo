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