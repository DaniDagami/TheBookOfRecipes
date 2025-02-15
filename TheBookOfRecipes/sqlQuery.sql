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
('Bruschetta', 'Toasted bread with toppings.', '1. Preheat the oven to 400°F (200°C). 2. Slice the bread into 1/2 inch thick slices. 3. Place the slices on a baking sheet and drizzle with olive oil. 4. Toast in the oven for about 5-7 minutes until golden. 5. In a bowl, mix diced tomatoes, minced garlic, chopped basil, salt, and pepper. 6. Top the toasted bread with the tomato mixture and serve immediately.', 1, 'Images/bruschetta.png'),
('Spaghetti Carbonara', 'Pasta with eggs, cheese, pancetta, and pepper.', '1. Cook spaghetti according to package instructions. 2. In a bowl, whisk together eggs, cheese, and pepper. 3. In a skillet, cook pancetta until crispy. 4. Drain spaghetti and add to the skillet with pancetta. 5. Remove from heat and quickly mix in the egg mixture, stirring until creamy. 6. Serve with extra cheese and pepper on top.', 2, 'Images/spaghetti_carbonara.png'),
('Chocolate Cake', 'Rich chocolate cake with frosting.', '1. Preheat the oven to 350°F (175°C). 2. Grease and flour two 9-inch round cake pans. 3. In a bowl, mix flour, cocoa powder, baking powder, and salt. 4. In another bowl, cream butter and sugar until light and fluffy. 5. Add eggs one at a time, then mix in the dry ingredients alternately with milk. 6. Pour batter into pans and bake for 30-35 minutes. 7. Let cool and frost with chocolate frosting.', 3, 'Images/chocolate_cake.png'),
('Caesar Salad', 'Salad with romaine lettuce and Caesar dressing.', '1. Chop romaine lettuce and place in a large bowl. 2. In a small bowl, whisk together olive oil, lemon juice, garlic, Worcestershire sauce, and anchovy paste. 3. Pour dressing over lettuce and toss to coat. 4. Add croutons and grated Parmesan cheese. 5. Toss again and serve immediately.', 4, 'Images/caesar_salad.png'),
('Tomato Soup', 'Smooth tomato soup with herbs.', '1. In a pot, heat olive oil over medium heat. 2. Add chopped onions and garlic, sauté until soft. 3. Add canned tomatoes, vegetable broth, and herbs. 4. Simmer for 20 minutes. 5. Blend until smooth, then season with salt and pepper. 6. Serve hot with a drizzle of cream.', 5, 'Images/tomato_soup.png'),
('Lemonade', 'Refreshing lemon drink.', '1. In a pitcher, combine 1 cup of freshly squeezed lemon juice, 1 cup of sugar, and 4 cups of water. 2. Stir until the sugar is dissolved. 3. Taste and adjust sweetness if necessary. 4. Chill in the refrigerator and serve over ice with lemon slices.', 6, 'Images/lemonade.png'),
('Potato Chips', 'Crispy potato snacks.', '1. Preheat oil in a deep fryer or large pot to 350°F (175°C). 2. Slice potatoes thinly using a mandoline. 3. Rinse slices in cold water and pat dry. 4. Fry in batches until golden brown, about 3-4 minutes. 5. Remove and drain on paper towels, then season with salt.', 7, 'Images/potato_chips.png'),
('Pancakes', 'Fluffy pancakes with syrup.', '1. In a bowl, mix flour, sugar, baking powder, and salt. 2. In another bowl, whisk together milk, eggs, and melted butter. 3. Combine wet and dry ingredients until just mixed. 4. Heat a skillet over medium heat and pour batter to form pancakes. 5. Cook until bubbles form, then flip and cook until golden. 6. Serve with syrup and butter.', 8, 'Images/pancakes.png'),
('Vegetable Stir Fry', 'Mixed vegetables stir-fried with sauce.', '1. Chop vegetables into bite-sized pieces. 2. Heat oil in a wok or large skillet over high heat. 3. Add vegetables and stir-fry for 5-7 minutes until tender-crisp. 4. Add soy sauce, garlic, and ginger, and stir to combine. 5. Serve hot over rice or noodles.', 9, 'Images/vegetable_stir_fry.png'),
('Grilled Salmon', 'Salmon fillet grilled to perfection.', '1. Preheat the grill to medium-high heat. 2. Season salmon fillets with olive oil, salt, and pepper. 3. Place salmon skin-side down on the grill. 4. Grill for 6-8 minutes per side, or until cooked through. 5. Serve with lemon wedges and fresh herbs.', 10, 'Images/grilled_salmon.png'),
('Stuffed Peppers', 'Peppers filled with rice and meat.', '1. Preheat the oven to 375°F (190°C). 2. Cut the tops off the peppers and remove seeds. 3. In a bowl, mix cooked rice, ground meat, diced tomatoes, and spices. 4. Stuff the mixture into the peppers. 5. Place in a baking dish and cover with foil. 6. Bake for 30-35 minutes, then uncover and bake for an additional 10 minutes.', 2, 'Images/stuffed_peppers.png'),
('Tiramisu', 'Coffee-flavored dessert.', '1. Brew strong coffee and let it cool. 2. In a bowl, mix mascarpone cheese, sugar, and vanilla. 3. In another bowl, whip cream until stiff peaks form. 4. Fold whipped cream into the mascarpone mixture. 5. Dip ladyfingers in coffee and layer in a dish. 6. Spread mascarpone mixture over the ladyfingers. 7. Repeat layers and refrigerate for at least 4 hours before serving.', 3, 'Images/tiramisu.png'),
('Greek Salad', 'Salad with feta cheese and olives.', '1. Chop cucumbers, tomatoes, and red onion. 2. In a bowl, combine chopped vegetables, olives, and feta cheese. 3. Drizzle with olive oil and lemon juice. 4. Season with oregano, salt, and pepper. 5. Toss gently and serve chilled.', 4, 'Images/greek_salad.png'),
('Chicken Noodle Soup', 'Chicken soup with noodles.', '1. In a pot, heat olive oil and sauté onions, carrots, and celery until soft. 2. Add chicken broth and bring to a boil. 3. Add cooked chicken and noodles. 4. Season with salt, pepper, and herbs. 5. Simmer until noodles are tender. 6. Serve hot.', 5, 'Images/chicken_noodle_soup.png'),
('Iced Tea', 'Chilled tea with lemon.', '1. Brew tea bags in boiling water for 5-7 minutes. 2. Remove tea bags and let the tea cool. 3. Add sugar to taste while the tea is still warm. 4. Refrigerate until cold. 5. Serve over ice with lemon slices.', 6, 'Images/iced_tea.png'),
('Nachos', 'Tortilla chips with cheese and toppings.', '1. Preheat the oven to 350°F (175°C). 2. Spread tortilla chips on a baking sheet. 3. Sprinkle cheese over the chips. 4. Add toppings like jalapeños, olives, and diced tomatoes. 5. Bake for 10-15 minutes until cheese is melted. 6. Serve with salsa and sour cream.', 7, 'Images/nachos.png'),
('Omelette', 'Egg dish with fillings.', '1. In a bowl, whisk eggs with salt and pepper. 2. Heat butter in a skillet over medium heat. 3. Pour in the eggs and cook until edges start to set. 4. Add fillings like cheese, vegetables, or meats. 5. Fold the omelette in half and cook until fully set. 6. Serve hot.', 8, 'Images/omelette.png'),
('Vegetable Curry', 'Curry with mixed vegetables.', '1. Heat oil in a pot and sauté onions, garlic, and ginger until fragrant. 2. Add chopped vegetables and cook for a few minutes. 3. Stir in curry powder and cook for another minute. 4. Add coconut milk and simmer until vegetables are tender. 5. Serve with rice or naan.', 9, 'Images/vegetable_curry.png'),
('Caprese Salad', 'Salad with mozzarella and tomatoes.', '1. Slice fresh mozzarella and tomatoes. 2. Arrange on a plate, alternating slices. 3. Drizzle with olive oil and balsamic vinegar. 4. Sprinkle with salt, pepper, and fresh basil leaves. 5. Serve immediately.', 4, 'Images/caprese_salad.png'),
('Beef Tacos', 'Tacos filled with seasoned beef.', '1. In a skillet, cook ground beef over medium heat until browned. 2. Drain excess fat and add taco seasoning. 3. Fill taco shells with the beef mixture. 4. Top with lettuce, cheese, tomatoes, and salsa. 5. Serve with lime wedges.', 2, 'Images/beef_tacos.png'),
('Pavlova', 'Meringue dessert topped with fruit.', '1. Preheat the oven to 250°F (120°C). 2. Beat egg whites until stiff peaks form. 3. Gradually add sugar, beating until glossy. 4. Spread meringue on a baking sheet and shape into a circle. 5. Bake for 1 hour, then turn off the oven and let cool. 6. Top with whipped cream and fresh fruit before serving.', 3, 'Images/pavlova.png'),
('Coleslaw', 'Salad made with cabbage and dressing.', '1. Shred cabbage and carrots in a bowl. 2. In a separate bowl, mix mayonnaise, vinegar, sugar, salt, and pepper. 3. Pour dressing over the cabbage mixture and toss to combine. 4. Refrigerate for at least 30 minutes before serving.', 4, 'Images/coleslaw.png'),
('Minestrone', 'Hearty vegetable soup.', '1. In a large pot, heat olive oil and sauté onions, carrots, and celery. 2. Add garlic and cook for another minute. 3. Stir in diced tomatoes, vegetable broth, and herbs. 4. Add chopped vegetables and pasta. 5. Simmer until vegetables are tender and pasta is cooked. 6. Serve hot with grated Parmesan.', 5, 'Images/minestrone.png'),
('Fruit Punch', 'Mixed fruit drink.', '1. In a large pitcher, combine fruit juices (orange, pineapple, and lemon). 2. Add soda and stir gently. 3. Add sliced fruits like oranges, lemons, and berries. 4. Chill in the refrigerator before serving over ice.', 6, 'Images/fruit_punch.png'),
('Popcorn', 'Popped corn snack.', '1. Heat oil in a large pot over medium heat. 2. Add popcorn kernels and cover the pot. 3. Shake the pot occasionally until popping slows. 4. Remove from heat and season with salt or melted butter. 5. Serve warm.', 7, 'Images/popcorn.png'),
('French Toast', 'Bread soaked in egg and fried.', '1. In a bowl, whisk eggs, milk, vanilla, and cinnamon. 2. Dip slices of bread into the mixture, coating both sides. 3. Heat butter in a skillet over medium heat. 4. Cook the bread until golden brown on both sides. 5. Serve with syrup and powdered sugar.', 8, 'Images/french_toast.png'),
('Chili', 'Spicy stew with beans and meat.', '1. In a pot, brown ground beef over medium heat. 2. Add chopped onions, garlic, and bell peppers, and sauté until soft. 3. Stir in canned tomatoes, kidney beans, chili powder, and cumin. 4. Simmer for 30 minutes, stirring occasionally. 5. Serve hot with cornbread.', 9, 'Images/chili.png'),
('Fish Tacos', 'Tacos filled with grilled fish.', '1. Season fish fillets with lime juice, salt, and pepper. 2. Grill fish until cooked through, about 3-4 minutes per side. 3. Flake the fish and fill tortillas. 4. Top with cabbage, salsa, and avocado. 5. Serve with lime wedges.', 10, 'Images/fish_tacos.png'),
('Cheesecake', 'Creamy dessert with a graham cracker crust.', '1. Preheat the oven to 325°F (160°C). 2. Mix crushed graham crackers, sugar, and melted butter, and press into the bottom of a springform pan. 3. In a bowl, beat cream cheese, sugar, and vanilla until smooth. 4. Add eggs one at a time, mixing well. 5. Pour filling over the crust and bake for 50-60 minutes. 6. Let cool and refrigerate before serving.', 3, 'Images/cheesecake.png'),
('Garden Salad', 'Mixed salad with various vegetables.', '1. Chop lettuce, tomatoes, cucumbers, and bell peppers. 2. In a large bowl, combine all chopped vegetables. 3. In a small bowl, whisk together olive oil, vinegar, salt, and pepper. 4. Drizzle dressing over the salad and toss to combine. 5. Serve immediately.', 4, 'Images/garden_salad.png'),
('Beef Stew', 'Hearty stew with beef and vegetables.', '1. In a large pot, brown beef chunks in oil over medium heat. 2. Remove beef and sauté onions, carrots, and celery until soft. 3. Return beef to the pot and add beef broth, potatoes, and herbs. 4. Simmer for 1.5 to 2 hours until beef is tender. 5. Serve hot with crusty bread.', 5, 'Images/beef_stew.png'),
('Soda', 'Carbonated soft drink.', '1. Chill soda in the refrigerator. 2. Serve in a glass over ice. 3. Optionally, add a slice of lemon or lime for flavor.', 6, 'Images/soda.png'),
('Trail Mix', 'Snack mix with nuts and dried fruit.', '1. In a bowl, combine nuts, dried fruits, and chocolate chips. 2. Mix well and store in an airtight container. 3. Serve as a snack or energy boost.', 7, 'Images/trail_mix.png'),
('Waffles', 'Crispy breakfast dish.', '1. Preheat the waffle iron. 2. In a bowl, mix flour, sugar, baking powder, and salt. 3. In another bowl, whisk together milk, eggs, and melted butter. 4. Combine wet and dry ingredients until just mixed. 5. Pour batter into the waffle iron and cook until golden brown. 6. Serve with syrup and fresh fruit.', 8, 'Images/waffles.png'),
('Vegetable Soup', 'Soup made with various vegetables.', '1. In a large pot, heat olive oil and sauté onions, carrots, and celery. 2. Add garlic and cook for another minute. 3. Stir in vegetable broth, diced tomatoes, and chopped vegetables. 4. Season with herbs, salt, and pepper. 5. Simmer until vegetables are tender. 6. Serve hot with bread.', 5, 'Images/vegetable_soup.png'),
('Mojito', 'Minty cocktail.', '1. In a glass, muddle mint leaves with sugar and lime juice. 2. Fill the glass with ice. 3. Pour in rum and top with soda water. 4. Stir gently and garnish with mint sprigs and lime slices. 5. Serve chilled.', 6, 'Images/mojito.png'),
('Rice Cakes', 'Crispy rice snacks.', '1. Preheat the oven to 350°F (175°C). 2. Spread rice cakes on a baking sheet. 3. Top with your choice of toppings (e.g., peanut butter, avocado, or cheese). 4. Bake for 5-10 minutes until warm. 5. Serve as a snack.', 7, 'Images/rice_cakes.png'),
('Crepes', 'Thin pancakes with fillings.', '1. In a bowl, whisk together flour, eggs, milk, and melted butter until smooth. 2. Heat a non-stick skillet over medium heat. 3. Pour a small amount of batter into the skillet, swirling to coat the bottom. 4. Cook for 1-2 minutes until edges lift, then flip and cook for another minute. 5. Fill with sweet or savory fillings and serve.', 8, 'Images/crepes.png'),
('Stuffed Mushrooms', 'Mushrooms filled with cheese and herbs.', '1. Preheat the oven to 375°F (190°C). 2. Remove stems from mushrooms and chop finely. 3. In a skillet, sauté chopped stems, garlic, and herbs in olive oil. 4. Mix with cream cheese and breadcrumbs. 5. Stuff the mushroom caps with the mixture. 6. Bake for 20 minutes until golden.', 1, 'Images/stuffed_mushrooms.png');

INSERT INTO RecipeIngredients (RecipeId, IngredientId, Quantity) VALUES
-- Bruschetta
(1, 1, '2 pieces'),  -- Tomato
(1, 2, '50 grams'),  -- Cheese (Mozzarella)
(1, 24, '1 teaspoon'), -- Basil
(1, 18, '1 teaspoon'), -- Butter

-- Spaghetti Carbonara
(2, 11, '200 grams'), -- Pasta
(2, 2, '50 grams'), -- Cheese (Parmesan)
(2, 17, '2 pieces'), -- Egg
(2, 18, '1 tablespoon'), -- Butter
(2, 6, '1 teaspoon'), -- Pepper

-- Chocolate Cake
(3, 23, '200 grams'), -- Chocolate
(3, 20, '150 grams'), -- Flour
(3, 21, '100 grams'), -- Sugar
(3, 17, '2 pieces'), -- Egg
(3, 18, '50 grams'), -- Butter
(3, 19, '200 ml'), -- Milk

-- Caesar Salad
(4, 7, '100 grams'), -- Lettuce
(4, 2, '50 grams'), -- Cheese (Parmesan)
(4, 4, '1 piece'), -- Onion
(4, 3, '100 grams'), -- Chicken
(4, 5, '1 clove'), -- Garlic

-- Tomato Soup
(5, 1, '5 pieces'), -- Tomato
(5, 4, '1 piece'), -- Onion
(5, 5, '2 cloves'), -- Garlic
(5, 25, '1 teaspoon'), -- Oregano

-- Lemonade
(6, 28, '3 pieces'), -- Lemon
(6, 21, '50 grams'), -- Sugar
(6, 12, '500 ml'), -- Water

-- Potato Chips
(7, 10, '5 pieces'), -- Potato
(7, 6, '1 teaspoon'), -- Pepper
(7, 18, '20 grams'), -- Butter

-- Pancakes
(8, 17, '2 pieces'), -- Egg
(8, 19, '100 ml'), -- Milk
(8, 20, '150 grams'), -- Flour
(8, 21, '50 grams'), -- Sugar
(8, 18, '50 grams'), -- Butter

-- Vegetable Stir Fry
(9, 4, '1 piece'), -- Onion
(9, 5, '2 cloves'), -- Garlic
(9, 9, '1 piece'), -- Carrot
(9, 7, '100 grams'), -- Lettuce
(9, 26, '1 teaspoon'), -- Cilantro

-- Grilled Salmon
(10, 15, '1 fillet'), -- Fish (Salmon)
(10, 5, '2 cloves'), -- Garlic
(10, 18, '1 tablespoon'), -- Butter
(10, 6, '1 teaspoon'), -- Pepper
(10, 28, '1 slice'), -- Lemon

-- Stuffed Peppers
(11, 6, '2 pieces'), -- Pepper
(11, 3, '100 grams'), -- Chicken
(11, 12, '100 grams'), -- Rice
(11, 2, '50 grams'), -- Cheese

-- Tiramisu
(12, 23, '100 grams'), -- Chocolate
(12, 2, '50 grams'), -- Cheese (Mascarpone)
(12, 21, '100 grams'), -- Sugar
(12, 17, '2 pieces'), -- Egg

-- Greek Salad
(13, 7, '100 grams'), -- Lettuce
(13, 2, '50 grams'), -- Cheese (Feta)
(13, 4, '1 piece'), -- Onion
(13, 8, '1 piece'), -- Cucumber
(13, 24, '1 teaspoon'), -- Basil

-- Chicken Noodle Soup
(14, 3, '150 grams'), -- Chicken
(14, 11, '100 grams'), -- Pasta
(14, 4, '1 piece'), -- Onion
(14, 5, '2 cloves'), -- Garlic
(14, 6, '1 teaspoon'), -- Pepper

-- Iced Tea
(15, 28, '3 slices'), -- Lemon
(15, 21, '50 grams'), -- Sugar
(15, 12, '500 ml'), -- Water

-- Nachos
(16, 2, '100 grams'), -- Cheese
(16, 6, '1 teaspoon'), -- Pepper
(16, 13, '100 grams'), -- Beef

-- Omelette
(17, 17, '3 pieces'), -- Egg
(17, 2, '50 grams'), -- Cheese
(17, 4, '1 piece'), -- Onion

-- Vegetable Curry
(18, 9, '1 piece'), -- Carrot
(18, 4, '1 piece'), -- Onion
(18, 5, '2 cloves'), -- Garlic
(18, 12, '100 grams'), -- Rice
(18, 6, '1 teaspoon'), -- Pepper

-- Shrimp Scampi
(19, 16, '150 grams'), -- Shrimp
(19, 5, '2 cloves'), -- Garlic
(19, 18, '1 tablespoon'), -- Butter

-- Caprese Salad
(20, 1, '2 pieces'), -- Tomato
(20, 2, '50 grams'), -- Cheese (Mozzarella)
(20, 24, '1 teaspoon'), -- Basil

-- Beef Tacos
(21, 13, '150 grams'), -- Beef
(21, 6, '1 teaspoon'), -- Pepper
(21, 7, '50 grams'), -- Lettuce

-- Pavlova
(22, 17, '4 pieces'), -- Egg (Whites)
(22, 21, '100 grams'), -- Sugar
(22, 30, '1 piece'), -- Banana

-- Coleslaw
(23, 9, '1 piece'), -- Carrot
(23, 4, '1 piece'), -- Onion

-- Minestrone
(24, 1, '2 pieces'), -- Tomato
(24, 9, '1 piece'), -- Carrot
(24, 11, '100 grams'), -- Pasta

-- Fruit Punch
(25, 28, '2 slices'), -- Lemon
(25, 31, '1 piece'), -- Apple
(25, 30, '1 piece'), -- Banana

-- Popcorn
(26, 20, '200 grams'), -- Corn Kernels

-- French Toast
(27, 17, '2 pieces'), -- Egg
(27, 19, '100 ml'), -- Milk
(27, 21, '50 grams'), -- Sugar

-- Chili
(28, 13, '200 grams'), -- Beef
(28, 9, '1 piece'), -- Carrot
(28, 6, '1 teaspoon'), -- Pepper

-- Fish Tacos
(29, 15, '150 grams'), -- Fish
(29, 7, '50 grams'), -- Lettuce

-- Cheesecake
(30, 2, '100 grams'), -- Cheese (Cream Cheese)
(30, 21, '50 grams'), -- Sugar

-- Garden Salad
(31, 7, '100 grams'), -- Lettuce
(31, 8, '1 piece'), -- Cucumber
(31, 9, '1 piece'), -- Carrot

-- Beef Stew
(32, 13, '200 grams'), -- Beef
(32, 10, '1 piece'), -- Potato

-- Mojito
(37, 27, '10 leaves'), -- Mint
(37, 28, '2 slices'), -- Lemon

-- Rice Cakes
(38, 12, '200 grams'), -- Rice

-- Crepes
(39, 17, '2 pieces'), -- Egg
(39, 19, '100 ml'), -- Milk
(39, 20, '150 grams'), -- Flour

-- Stuffed Mushrooms
(40, 2, '50 grams'), -- Cheese
(40, 5, '1 clove'); -- Garlic