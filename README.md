# Recipes - Hands-on Dart Assignment

**Instructions**
1. Make restore dependencies and make sure project runs.

```powershell
# from repository root (where data.json lives)
dart pub get
dart run bin/main.dart
```

##. Instructions

1. Review menu_data.json
2. Abstract models needed to represent the data
3. Create the models inside the lib/menu_model.dart file
4. Run often to make sure nothing is broken
5. Create builders for repeating models 
6. Complete the `List<Menu>` composition in bin/main.dart.  
   - When ready, uncomment the provided `List<Menu>` and start composing
   - Build frequently while completing the `List<Menu>` composition to check for errors.
   
7. When you think `List<Menu>` is complete, uncomment the validation logic at the bottome of main.dart, run code to test, repeat these steps as necessary until composition successfully outputs the entire menu.
8. Push final code back to GitHub
9. Verify your final code is on GitHub
10. Maximize VS Code / Code Editor window
11. Make sure output from completed `List<Menu>` composition is visible in the console
12. Take screenshot of entire desktop
13. Upload screenshot to Canvas

```dart

/// This is the fully implemented/populated model that we are going to create
/// except we will create builders to dynamically generate repeating models
final List<DailyMenuItem> weeklyMenuData = <DailyMenuItem>[
  DailyMenuItem(
    dayOfWeek: "Monday",
    recipe: Recipe(
      name: "Spaghetti Bolognese",
      ingredients: <Ingredient>[
        Ingredient(name: "Ground Beef", quantity: 500, unitOfMeasure: "g"),
        Ingredient(name: "Canned Tomatoes", quantity: 400, unitOfMeasure: "g"),
        Ingredient(name: "Onion", quantity: 1, unitOfMeasure: "unit"),
        Ingredient(name: "Garlic", quantity: 2, unitOfMeasure: "cloves"),
        Ingredient(name: "Spaghetti", quantity: 300, unitOfMeasure: "g"),
        Ingredient(name: "Olive Oil", quantity: 2, unitOfMeasure: "tbsp"),
        Ingredient(name: "Parmesan Cheese", quantity: 50, unitOfMeasure: "g"),
      ],
      steps: <Step>[
        const Step(stepOrder: 1, instruction: "Heat olive oil in a large pot."),
        const Step(stepOrder: 2, instruction: "Add chopped onion and garlic, cook until softened."),
        const Step(stepOrder: 3, instruction: "Add ground beef and cook until browned, breaking it up with a spoon."),
        const Step(stepOrder: 4, instruction: "Drain any excess fat."),
        const Step(stepOrder: 5, instruction: "Stir in canned tomatoes (crushed or diced) and bring to a simmer."),
        const Step(stepOrder: 6, instruction: "Reduce heat and let it simmer for at least 30 minutes, stirring occasionally."),
        const Step(stepOrder: 7, instruction: "Cook spaghetti according to package instructions."),
        const Step(stepOrder: 8, instruction: "Serve Bolognese sauce over spaghetti, topped with grated Parmesan cheese."),
      ],
    ),
  ),
  DailyMenuItem(
    dayOfWeek: "Tuesday",
    recipe: Recipe(
      name: "Chicken Stir-fry",
      ingredients: <Ingredient>[
        Ingredient(name: "Chicken Breast", quantity: 300, unitOfMeasure: "g"),
        Ingredient(name: "Broccoli", quantity: 1, unitOfMeasure: "head"),
        Ingredient(name: "Carrots", quantity: 2, unitOfMeasure: "unit"),
        Ingredient(name: "Bell Pepper", quantity: 1, unitOfMeasure: "unit"),
        Ingredient(name: "Soy Sauce", quantity: 4, unitOfMeasure: "tbsp"),
        Ingredient(name: "Ginger", quantity: 1, unitOfMeasure: "inch piece"),
        Ingredient(name: "Garlic", quantity: 2, unitOfMeasure: "cloves"),
        Ingredient(name: "Rice", quantity: 200, unitOfMeasure: "g"),
      ],
      steps: <Step>[
        const Step(stepOrder: 1, instruction: "Slice chicken breast into thin strips."),
        const Step(stepOrder: 2, instruction: "Chop broccoli, slice carrots and bell pepper."),
        const Step(stepOrder: 3, instruction: "Grate ginger and mince garlic."),
        const Step(stepOrder: 4, instruction: "Heat oil in a wok or large pan."),
        const Step(stepOrder: 5, instruction: "Add chicken and stir-fry until cooked through."),
        const Step(stepOrder: 6, instruction: "Add vegetables, ginger, and garlic. Stir-fry for 3-5 minutes until tender-crisp."),
        const Step(stepOrder: 7, instruction: "Pour in soy sauce and toss to combine."),
        const Step(stepOrder: 8, instruction: "Serve hot with cooked rice."),
      ],
    ),
  ),
  DailyMenuItem(
    dayOfWeek: "Wednesday",
    recipe: Recipe(
      name: "Vegetable Curry",
      ingredients: <Ingredient>[
        Ingredient(name: "Mixed Vegetables", quantity: 400, unitOfMeasure: "g"),
        Ingredient(name: "Coconut Milk", quantity: 400, unitOfMeasure: "ml"),
        Ingredient(name: "Curry Paste", quantity: 2, unitOfMeasure: "tbsp"),
        Ingredient(name: "Onion", quantity: 1, unitOfMeasure: "unit"),
        Ingredient(name: "Garlic", quantity: 2, unitOfMeasure: "cloves"),
        Ingredient(name: "Rice", quantity: 200, unitOfMeasure: "g"),
      ],
      steps: <Step>[
        const Step(stepOrder: 1, instruction: "Chop onion and mince garlic."),
        const Step(stepOrder: 2, instruction: "Heat a little oil in a pot."),
        const Step(stepOrder: 3, instruction: "Sauté onion and garlic until fragrant."),
        const Step(stepOrder: 4, instruction: "Add curry paste and cook for 1 minute, stirring."),
        const Step(stepOrder: 5, instruction: "Add mixed vegetables and stir to coat."),
        const Step(stepOrder: 6, instruction: "Pour in coconut milk and bring to a simmer."),
        const Step(stepOrder: 7, instruction: "Cook until vegetables are tender, about 15-20 minutes."),
        const Step(stepOrder: 8, instruction: "Serve with cooked rice."),
      ],
    ),
  ),
  DailyMenuItem(
    dayOfWeek: "Thursday",
    recipe: Recipe(
      name: "Fish and Chips",
      ingredients: <Ingredient>[
        Ingredient(name: "Cod Fillets", quantity: 400, unitOfMeasure: "g"),
        Ingredient(name: "Potatoes", quantity: 500, unitOfMeasure: "g"),
        Ingredient(name: "All-purpose Flour", quantity: 100, unitOfMeasure: "g"),
        Ingredient(name: "Beer (or sparkling water)", quantity: 150, unitOfMeasure: "ml"),
        Ingredient(name: "Salt", quantity: 1, unitOfMeasure: "tsp"),
        Ingredient(name: "Vegetable Oil", quantity: 500, unitOfMeasure: "ml"),
      ],
      steps: <Step>[
        const Step(stepOrder: 1, instruction: "Peel and cut potatoes into thick chips. Rinse and pat dry."),
        const Step(stepOrder: 2, instruction: "Heat vegetable oil in a deep pan to 170°C (340°F)."),
        const Step(stepOrder: 3, instruction: "Fry chips in batches until golden and crisp. Drain and season with salt."),
        const Step(stepOrder: 4, instruction: "For the batter, whisk flour, salt, and beer until smooth."),
        const Step(stepOrder: 5, instruction: "Dip fish fillets into the batter, ensuring they are fully coated."),
        const Step(stepOrder: 6, instruction: "Carefully lower battered fish into the hot oil. Fry for 5-7 minutes until golden brown and cooked through."),
        const Step(stepOrder: 7, instruction: "Drain on paper towels."),
        const Step(stepOrder: 8, instruction: "Serve fish immediately with the chips."),
      ],
    ),
  ),
  DailyMenuItem(
    dayOfWeek: "Friday",
    recipe: Recipe(
      name: "Homemade Pizza",
      ingredients: <Ingredient>[
        Ingredient(name: "Pizza Dough", quantity: 1, unitOfMeasure: "ball"),
        Ingredient(name: "Tomato Sauce", quantity: 100, unitOfMeasure: "ml"),
        Ingredient(name: "Mozzarella Cheese", quantity: 150, unitOfMeasure: "g"),
        Ingredient(name: "Pepperoni", quantity: 50, unitOfMeasure: "g"),
        Ingredient(name: "Mushrooms", quantity: 100, unitOfMeasure: "g"),
        Ingredient(name: "Olive Oil", quantity: 1, unitOfMeasure: "tbsp"),
      ],
      steps: <Step>[
        const Step(stepOrder: 1, instruction: "Preheat oven to 220°C (425°F) with a pizza stone or baking steel if you have one."),
        const Step(stepOrder: 2, instruction: "Roll out pizza dough on a floured surface to your desired thickness."),
        const Step(stepOrder: 3, instruction: "Transfer dough to a parchment-lined baking sheet or pizza peel."),
        const Step(stepOrder: 4, instruction: "Spread tomato sauce evenly over the dough, leaving a small border for the crust."),
        const Step(stepOrder: 5, instruction: "Sprinkle with mozzarella cheese, then add pepperoni and sliced mushrooms."),
        const Step(stepOrder: 6, instruction: "Drizzle with a little olive oil."),
        const Step(stepOrder: 7, instruction: "Bake for 10-15 minutes, or until the crust is golden and the cheese is bubbly and slightly browned."),
        const Step(stepOrder: 8, instruction: "Slice and serve hot."),
      ],
    ),
  ),
  DailyMenuItem(
    dayOfWeek: "Saturday",
    recipe: Recipe(
      name: "Beef Tacos",
      ingredients: <Ingredient>[
        Ingredient(name: "Ground Beef", quantity: 400, unitOfMeasure: "g"),
        Ingredient(name: "Taco Seasoning", quantity: 1, unitOfMeasure: "packet"),
        Ingredient(name: "Taco Shells", quantity: 12, unitOfMeasure: "units"),
        Ingredient(name: "Lettuce", quantity: 1, unitOfMeasure: "head"),
        Ingredient(name: "Tomato", quantity: 2, unitOfMeasure: "units"),
        Ingredient(name: "Shredded Cheese", quantity: 100, unitOfMeasure: "g"),
        Ingredient(name: "Salsa", quantity: 1, unitOfMeasure: "jar"),
      ],
      steps: <Step>[
        const Step(stepOrder: 1, instruction: "Brown ground beef in a large skillet. Drain fat."),
        const Step(stepOrder: 2, instruction: "Stir in taco seasoning and water according to package directions. Simmer for 5-7 minutes."),
        const Step(stepOrder: 3, instruction: "Warm taco shells in the oven or microwave."),
        const Step(stepOrder: 4, instruction: "Shred lettuce and dice tomatoes."),
        const Step(stepOrder: 5, instruction: "Serve beef in warm taco shells with lettuce, tomato, shredded cheese, and salsa."),
      ],
    ),
  ),
  DailyMenuItem(
    dayOfWeek: "Sunday",
    recipe: Recipe(
      name: "Roast Chicken Dinner",
      ingredients: <Ingredient>[
        Ingredient(name: "Whole Chicken", quantity: 1.5, unitOfMeasure: "kg"),
        Ingredient(name: "Potatoes", quantity: 800, unitOfMeasure: "g"),
        Ingredient(name: "Carrots", quantity: 4, unitOfMeasure: "units"),
        Ingredient(name: "Onions", quantity: 2, unitOfMeasure: "units"),
        Ingredient(name: "Rosemary", quantity: 2, unitOfMeasure: "sprigs"),
        Ingredient(name: "Olive Oil", quantity: 3, unitOfMeasure: "tbsp"),
        Ingredient(name: "Salt", quantity: 1, unitOfMeasure: "tsp"),
        Ingredient(name: "Black Pepper", quantity: 0.5, unitOfMeasure: "tsp"),
      ],
      steps: <Step>[
        const Step(stepOrder: 1, instruction: "Preheat oven to 200°C (400°F)."),
        const Step(stepOrder: 2, instruction: "Pat chicken dry with paper towels. Rub with olive oil, salt, pepper, and rosemary."),
        const Step(stepOrder: 3, instruction: "Chop potatoes, carrots, and onions into large chunks."),
        const Step(stepOrder: 4, instruction: "Place chicken in a roasting pan. Arrange vegetables around the chicken."),
        const Step(stepOrder: 5, instruction: "Roast for 1 hour 15 minutes to 1 hour 45 minutes, or until internal temperature of chicken reaches 74°C (165°F) and vegetables are tender and browned."),
        const Step(stepOrder: 6, instruction: "Let chicken rest for 10 minutes before carving."),
        const Step(stepOrder: 7, instruction: "Serve chicken with roasted vegetables."),
      ],
    ),
  ),
];
```

## Expected output of this Dart program when it is executed
```
Monday: Spaghetti Bolognese
  Ingredients:
    - Ground Beef (500 g)
    - Canned Tomatoes (400 g)
    - Onion (1 unit)
    - Garlic (2 cloves)
    - Spaghetti (300 g)
    - Olive Oil (2 tbsp)
    - Parmesan Cheese (50 g)
  Steps:
    1. Heat olive oil in a large pot.
    2. Add chopped onion and garlic, cook until softened.
    3. Add ground beef and cook until browned, breaking it up with a spoon.
    4. Drain any excess fat.
    5. Stir in canned tomatoes (crushed or diced) and bring to a simmer.
    6. Reduce heat and let it simmer for at least 30 minutes, stirring occasionally.
    7. Cook spaghetti according to package instructions.
    8. Serve Bolognese sauce over spaghetti, topped with grated Parmesan cheese.
Tuesday: Chicken Stir-fry
  Ingredients:
    - Chicken Breast (300 g)
    - Broccoli (1 head)
    - Carrots (2 unit)
    - Bell Pepper (1 unit)
    - Soy Sauce (4 tbsp)
    - Ginger (1 inch piece)
    - Garlic (2 cloves)
    - Rice (200 g)
  Steps:
    1. Slice chicken breast into thin strips.
    2. Chop broccoli, slice carrots and bell pepper.
    3. Grate ginger and mince garlic.
    4. Heat oil in a wok or large pan.
    5. Add chicken and stir-fry until cooked through.
    6. Add vegetables, ginger, and garlic. Stir-fry for 3-5 minutes until tender-crisp.
    7. Pour in soy sauce and toss to combine.
    8. Serve hot with cooked rice.
Wednesday: Vegetable Curry
  Ingredients:
    - Mixed Vegetables (400 g)
    - Coconut Milk (400 ml)
    - Curry Paste (2 tbsp)
    - Onion (1 unit)
    - Garlic (2 cloves)
    - Rice (200 g)
  Steps:
    1. Chop onion and mince garlic.
    2. Heat a little oil in a pot.
    3. Sauté onion and garlic until fragrant.
    4. Add curry paste and cook for 1 minute, stirring.
    5. Add mixed vegetables and stir to coat.
    6. Pour in coconut milk and bring to a simmer.
    7. Cook until vegetables are tender, about 15-20 minutes.
    8. Serve with cooked rice.
Thursday: Fish and Chips
  Ingredients:
    - Cod Fillets (400 g)
    - Potatoes (500 g)
    - All-purpose Flour (100 g)
    - Beer (or sparkling water) (150 ml)
    - Salt (1 tsp)
    - Vegetable Oil (500 ml)
  Steps:
    1. Peel and cut potatoes into thick chips. Rinse and pat dry.
    2. Heat vegetable oil in a deep pan to 170°C (340°F).
    3. Fry chips in batches until golden and crisp. Drain and season with salt.
    4. For the batter, whisk flour, salt, and beer until smooth.
    5. Dip fish fillets into the batter, ensuring they are fully coated.
    6. Carefully lower battered fish into the hot oil. Fry for 5-7 minutes until golden brown and cooked through.
    7. Drain on paper towels.
    8. Serve fish immediately with the chips.
Friday: Homemade Pizza
  Ingredients:
    - Pizza Dough (1 ball)
    - Tomato Sauce (100 ml)
    - Mozzarella Cheese (150 g)
    - Pepperoni (50 g)
    - Mushrooms (100 g)
    - Olive Oil (1 tbsp)
  Steps:
    1. Preheat oven to 220°C (425°F) with a pizza stone or baking steel if you have one.
    2. Roll out pizza dough on a floured surface to your desired thickness.
    3. Transfer dough to a parchment-lined baking sheet or pizza peel.
    4. Spread tomato sauce evenly over the dough, leaving a small border for the crust.
    5. Sprinkle with mozzarella cheese, then add pepperoni and sliced mushrooms.
    6. Drizzle with a little olive oil.
    7. Bake for 10-15 minutes, or until the crust is golden and the cheese is bubbly and slightly browned.
    8. Slice and serve hot.
Saturday: Beef Tacos
  Ingredients:
    - Ground Beef (400 g)
    - Taco Seasoning (1 packet)
    - Taco Shells (12 units)
    - Lettuce (1 head)
    - Tomato (2 units)
    - Shredded Cheese (100 g)
    - Salsa (1 jar)
  Steps:
    1. Brown ground beef in a large skillet. Drain fat.
    2. Stir in taco seasoning and water according to package directions. Simmer for 5-7 minutes.
    3. Warm taco shells in the oven or microwave.
    4. Shred lettuce and dice tomatoes.
    5. Serve beef in warm taco shells with lettuce, tomato, shredded cheese, and salsa.
Sunday: Roast Chicken Dinner
  Ingredients:
    - Whole Chicken (1.5 kg)
    - Potatoes (800 g)
    - Carrots (4 units)
    - Onions (2 units)
    - Rosemary (2 sprigs)
    - Olive Oil (3 tbsp)
    - Salt (1 tsp)
    - Black Pepper (0.5 tsp)
  Steps:
    1. Preheat oven to 200°C (400°F).
    2. Pat chicken dry with paper towels. Rub with olive oil, salt, pepper, and rosemary.
    3. Chop potatoes, carrots, and onions into large chunks.
    4. Place chicken in a roasting pan. Arrange vegetables around the chicken.
    5. Roast for 1 hour 15 minutes to 1 hour 45 minutes, or until internal temperature of chicken reaches 74°C (165°F) and vegetables are tender and browned.
    6. Let chicken rest for 10 minutes before carving.
    7. Serve chicken with roasted vegetables.
```