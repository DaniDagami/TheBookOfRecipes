USE TheBookOfRecipes;

INSERT INTO Categories (Name) VALUES
('Appetizers'),
('Main Courses'),
('Desserts'),
('Salads'),
('Soups'),
('Beverages'),
('Snacks'),
('Breakfast'),
('Vegetarian'),
('Seafood');

INSERT INTO Ingredients (Name) VALUES
('Tomato'),
('Cheese'),
('Chicken'),
('Onion'),
('Garlic'),
('Pepper'),
('Lettuce'),
('Cucumber'),
('Carrot'),
('Potato'),
('Pasta'),
('Rice'),
('Beef'),
('Pork'),
('Fish'),
('Shrimp'),
('Egg'),
('Milk'),
('Butter'),
('Flour'),
('Sugar'),
('Honey'),
('Chocolate'),
('Basil'),
('Oregano'),
('Cilantro'),
('Mint'),
('Lemon'),
('Lime'),
('Apple'),
('Banana'),
('Orange');

INSERT INTO Recipes (Name, Description, Instructions, CategoryId, ImageUrl) VALUES
('Bruschetta', 'Toasted bread with toppings.', 'Toast the bread and add toppings.', 1, 'Images/bruschetta.png'),
('Spaghetti Carbonara', 'Pasta with eggs, cheese, pancetta, and pepper.', 'Cook pasta and mix with sauce.', 2, 'Images/spaghetti_carbonara.png'),
('Chocolate Cake', 'Rich chocolate cake with frosting.', 'Bake the cake and add frosting.', 3, 'Images/chocolate_cake.png'),
('Caesar Salad', 'Salad with romaine lettuce and Caesar dressing.', 'Mix ingredients and serve.', 4, 'Images/caesar_salad.png'),
('Tomato Soup', 'Smooth tomato soup with herbs.', 'Blend tomatoes and heat.', 5, 'Images/tomato_soup.png'),
('Lemonade', 'Refreshing lemon drink.', 'Mix lemon juice with water and sugar.', 6, 'Images/lemonade.png'),
('Potato Chips', 'Crispy potato snacks.', 'Fry thinly sliced potatoes.', 7, 'Images/potato_chips.png'),
('Pancakes', 'Fluffy pancakes with syrup.', 'Cook batter on a skillet.', 8, 'Images/pancakes.png'),
('Vegetable Stir Fry', 'Mixed vegetables stir-fried with sauce.', 'Stir-fry vegetables in a pan.', 9, 'Images/vegetable_stir_fry.png'),
('Grilled Salmon', 'Salmon fillet grilled to perfection.', 'Grill the salmon and serve.', 10, 'Images/grilled_salmon.png'),
('Stuffed Peppers', 'Peppers filled with rice and meat.', 'Stuff peppers and bake.', 2, 'Images/stuffed_peppers.png'),
('Tiramisu', 'Coffee-flavored dessert.', 'Layer coffee-soaked ladyfingers with mascarpone.', 3, 'Images/tiramisu.png'),
('Greek Salad', 'Salad with feta cheese and olives.', 'Mix ingredients and serve.', 4, 'Images/greek_salad.png'),
('Chicken Noodle Soup', 'Chicken soup with noodles.', 'Cook chicken and add noodles.', 5, 'Images/chicken_noodle_soup.png'),
('Iced Tea', 'Chilled tea with lemon.', 'Brew tea and chill.', 6, 'Images/iced_tea.png'),
('Nachos', 'Tortilla chips with cheese and toppings.', 'Bake chips with cheese.', 7, 'Images/nachos.png'),
('Omelette', 'Egg dish with fillings.', 'Cook eggs and add fillings.', 8, 'Images/omelette.png'),
('Vegetable Curry', 'Curry with mixed vegetables.', 'Cook vegetables in curry sauce.', 9, 'Images/vegetable_curry.png'),
('Shrimp Scampi', 'Shrimp cooked in garlic and butter.', 'Sauté shrimp with garlic.', 10, 'Images/shrimp_scampi.png'),
('Caprese Salad', 'Salad with mozzarella and tomatoes.', 'Layer mozzarella and tomatoes.', 4, 'Images/caprese_salad.png'),
('Beef Tacos', 'Tacos filled with seasoned beef.', 'Fill tortillas with beef.', 2, 'Images/beef_tacos.png'),
('Pavlova', 'Meringue dessert topped with fruit.', 'Bake meringue and top with fruit.', 3, 'Images/pavlova.png'),
('Coleslaw', 'Salad made with cabbage and dressing.', 'Mix cabbage with dressing.', 4, 'Images/coleslaw.png'),
('Minestrone', 'Hearty vegetable soup.', 'Cook vegetables and pasta.', 5, 'Images/minestrone.png'),
('Fruit Punch', 'Mixed fruit drink.', 'Mix fruit juices and soda.', 6, 'Images/fruit_punch.png'),
('Popcorn', 'Popped corn snack.', 'Pop corn kernels.', 7, 'Images/popcorn.png'),
('French Toast', 'Bread soaked in egg and fried.', 'Soak bread and fry.', 8, 'Images/french_toast.png'),
('Chili', 'Spicy stew with beans and meat.', 'Cook beans and meat together.', 9, 'Images/chili.png'),
('Fish Tacos', 'Tacos filled with grilled fish.', 'Fill tortillas with fish.', 10, 'Images/fish_tacos.png'),
('Cheesecake', 'Creamy dessert with a graham cracker crust.', 'Bake cheesecake and chill.', 3, 'Images/cheesecake.png'),
('Garden Salad', 'Mixed salad with various vegetables.', 'Mix vegetables and serve.', 4, 'Images/garden_salad.png'),
('Beef Stew', 'Hearty stew with beef and vegetables.', 'Cook beef and vegetables together.', 5, 'Images/beef_stew.png'),
('Soda', 'Carbonated soft drink.', 'Chill and serve.', 6, 'Images/soda.png'),
('Trail Mix', 'Snack mix with nuts and dried fruit.', 'Mix nuts and dried fruit.', 7, 'Images/trail_mix.png'),
('Waffles', 'Crispy breakfast dish.', 'Cook batter in a waffle iron.', 8, 'Images/waffles.png'),
('Vegetable Soup', 'Soup made with various vegetables.', 'Cook vegetables in broth.', 5, 'Images/vegetable_soup.png'),
('Mojito', 'Minty cocktail.', 'Mix mint, lime, and soda.', 6, 'Images/mojito.png'),
('Rice Cakes', 'Crispy rice snacks.', 'Bake rice cakes.', 7, 'Images/rice_cakes.png'),
('Crepes', 'Thin pancakes with fillings.', 'Cook batter and fill.', 8, 'Images/crepes.png'),
('Stuffed Mushrooms', 'Mushrooms filled with cheese and herbs.', 'Stuff mushrooms and bake.', 1, 'Images/stuffed_mushrooms.png');

INSERT INTO RecipeIngredients (RecipeId, IngredientId, Quantity) VALUES
(1, 1, '2 pieces'), -- Bruschetta: 2 Tomatoes
(1, 2, '100 grams'), -- Bruschetta: 100g Cheese
(2, 3, '200 grams'), -- Spaghetti Carbonara: 200g Chicken
(2, 2, '50 grams'), -- Spaghetti Carbonara: 50g Cheese
(3, 2, '200 grams'), -- Chocolate Cake: 200g Cheese
(3, 1, '3 pieces'), -- Chocolate Cake: 3 Tomatoes
(4, 4, '1 piece'), -- Caesar Salad: 1 Onion
(4, 2, '50 grams'), -- Caesar Salad: 50g Cheese
(5, 1, '5 pieces'), -- Tomato Soup: 5 Tomatoes
(5, 4, '1 piece'), -- Tomato Soup: 1 Onion
(6, 1, '3 pieces'), -- Lemonade: 3 Lemons
(6, 4, '1 piece'), -- Lemonade: 1 Onion
(7, 1, '5 pieces'), -- Potato Chips: 5 Potatoes
(8, 2, '2 pieces'), -- Pancakes: 2 Eggs
(8, 1, '1 piece'), -- Pancakes: 1 Tomato
(9, 1, '3 pieces'), -- Vegetable Stir Fry: 3 Tomatoes
(9, 4, '2 pieces'), -- Vegetable Stir Fry: 2 Onions
(10, 3, '1 piece'), -- Grilled Salmon: 1 Chicken
(10, 1, '2 pieces'), -- Grilled Salmon: 2 Tomatoes
(11, 1, '2 pieces'), -- Stuffed Peppers: 2 Tomatoes
(11, 2, '100 grams'), -- Stuffed Peppers: 100g Cheese
(12, 2, '1 piece'), -- Tiramisu: 1 Cheese
(12, 1, '2 pieces'), -- Tiramisu: 2 Tomatoes
(13, 4, '1 piece'), -- Greek Salad: 1 Onion
(13, 2, '50 grams'), -- Greek Salad: 50g Cheese
(14, 3, '200 grams'), -- Chicken Noodle Soup: 200g Chicken
(14, 1, '3 pieces'), -- Chicken Noodle Soup: 3 Tomatoes
(15, 1, '3 pieces'), -- Iced Tea: 3 Lemons
(15, 4, '1 piece'), -- Iced Tea: 1 Onion
(16, 1, '5 pieces'), -- Nachos: 5 Tomatoes
(17, 2, '2 pieces'), -- Omelette: 2 Eggs
(18, 1, '3 pieces'), -- Vegetable Curry: 3 Tomatoes
(19, 3, '1 piece'), -- Shrimp Scampi: 1 Chicken
(20, 1, '2 pieces'), -- Caprese Salad: 2 Tomatoes
(21, 2, '1 piece'), -- Beef Tacos: 1 Cheese
(22, 3, '1 piece'), -- Pavlova: 1 Cheese
(23, 4, '1 piece'), -- Coleslaw: 1 Onion
(24, 1, '5 pieces'), -- Minestrone: 5 Tomatoes
(25, 1, '3 pieces'), -- Fruit Punch: 3 Lemons
(26, 1, '2 pieces'), -- Popcorn: 2 Tomatoes
(27, 2, '1 piece'), -- French Toast: 1 Cheese
(28, 1, '3 pieces'), -- Chili: 3 Tomatoes
(29, 3, '1 piece'), -- Fish Tacos: 1 Cheese
(30, 2, '1 piece'), -- Cheesecake: 1 Cheese
(31, 4, '1 piece'), -- Garden Salad: 1 Onion
(32, 1, '5 pieces'), -- Beef Stew: 5 Tomatoes
(33, 1, '3 pieces'), -- Soda: 3 Lemons
(34, 1, '2 pieces'), -- Trail Mix: 2 Tomatoes
(35, 2, '1 piece'), -- Waffles: 1 Cheese
(36, 1, '3 pieces'), -- Vegetable Soup: 3 Tomatoes
(37, 3, '1 piece'), -- Mojito: 1 Cheese
(38, 1, '5 pieces'), -- Rice Cakes: 5 Tomatoes
(39, 2, '2 pieces'), -- Crepes: 2 Eggs
(40, 1, '3 pieces'); -- Stuffed Mushrooms: 3 Tomatoes