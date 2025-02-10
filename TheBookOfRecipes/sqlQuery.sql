use TheBookOfRecipes;

INSERT INTO Categories (Name) VALUES
('Main Course'),
('Dessert'),
('Salad'),
('Side Dish'),
('Beverage'),
('Breakfast'),
('Soup'),
('Sandwiches'),
('Baked Goods'),
('Fruit Desserts');

INSERT INTO Ingredients (Name) VALUES
('Pasta'),
('Tomato Sauce'),
('Chocolate'),
('Romaine Lettuce'),
('Croutons'),
('Parmesan Cheese'),
('Potatoes'),
('Olive Oil'),
('Cheese'),
('Eggs'),
('Chicken'),
('Rosemary'),
('Oats'),
('Fruits'),
('Strawberries'),
('Milk'),
('Fish'),
('Lemon'),
('Mango'),
('Pineapple')

INSERT INTO Recipes (Name, Description, Instructions, CategoryId, ImageUrl) VALUES
('Pasta with Tomato Sauce', 'Delicious pasta with homemade tomato sauce.', 'Cook the pasta, prepare the sauce from tomatoes, onions, and spices. Mix and serve.', 1, 'Images/pasta_with_tomato_sauce.png'),
('Chocolate Mousse', 'Light and airy chocolate mousse.', 'Melt the chocolate, mix with beaten eggs and cream. Let it set in the fridge.', 2, 'Images/chocolate_mousse.png'),
('Caesar Salad', 'Classic Caesar salad with romaine, croutons, and parmesan.', 'Mix romaine with dressing, add croutons and grated parmesan.', 3, 'Images/caesar_salad.png'),
('Baked Potatoes', 'Crispy baked potatoes with spices.', 'Cut the potatoes, season, and bake until golden.', 4, 'Images/baked_potatoes.png'),
('Cheesecake', 'Creamy cheesecake with a biscuit base.', 'Mix cream cheese, sugar, and eggs. Bake in a water bath.', 2, 'Images/cheesecake.png'),
('Lemon Rosemary Chicken', 'Roasted chicken with lemon and aromatic rosemary.', 'Season the chicken with lemon and rosemary, bake until done.', 1, 'Images/lemon_rosemary_chicken.png'),
('Oatmeal with Fruits', 'Healthy breakfast with oatmeal and fresh fruits.', 'Cook the oatmeal, add fruits and honey.', 6, 'Images/oatmeal_with_fruits.png'),
('Strawberry Cake', 'Delicious cake with cream and fresh strawberries.', 'Bake the base, spread with cream, and decorate with strawberries.', 2, 'Images/strawberry_cake.png'),
('Baked Fish with Lemon', 'Light and healthy baked fish with lemon.', 'Season the fish with lemon and spices, bake until done.', 1, 'Images/baked_fish_with_lemon.png'),
('Tropical Fruit Cocktail', 'Refreshing cocktail with pineapple, mango, and coconut.', 'Blend the fruits and serve with ice.', 5, 'Images/tropical_fruit_cocktail.png');

INSERT INTO RecipeIngredients (RecipeId, IngredientId, Quantity) VALUES
(1, 1, '200g'), -- Pasta with Tomato Sauce
(1, 2, '150g'), -- Pasta with Tomato Sauce
(1, 8, '2 tbsp'), -- Pasta with Tomato Sauce
(2, 3, '150g'), -- Chocolate Mousse
(2, 10, '2'), -- Chocolate Mousse
(2, 15, '200ml'), -- Chocolate Mousse
(3, 4, '100g'), -- Caesar Salad
(3, 5, '50g'), -- Caesar Salad
(3, 6, '30g'), -- Caesar Salad
(4, 7, '500g'), -- Baked Potatoes
(4, 8, '2 tbsp'), -- Baked Potatoes
(4, 9, '100g'), -- Baked Potatoes
(5, 9, '300g'), -- Cheesecake
(5, 10, '2'), -- Cheesecake
(5, 15, '200ml'), -- Cheesecake
(6, 10, '1'), -- Lemon Rosemary Chicken
(6, 12, '1 tbsp'), -- Lemon Rosemary Chicken
(6, 8, '2 tbsp'), -- Lemon Rosemary Chicken
(7, 1, '100g'), -- Oatmeal with Fruits
(7, 14, '150g'), -- Oatmeal with Fruits
(8, 15, '200g'), -- Strawberry Cake
(8, 10, '2'), -- Strawberry Cake
(9, 16, '1'), -- Baked Fish with Lemon
(9, 17, '1'), -- Baked Fish with Lemon
(10, 18, '1'), -- Tropical Fruit Cocktail
(10, 19, '1'), -- Tropical Fruit Cocktail
(10, 20, '1'); -- Tropical Fruit Cocktail