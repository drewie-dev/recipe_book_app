import '../models/recipe.dart';

final List<Recipe> sampleRecipes = [
  Recipe(
    name: 'Spaghetti Bolognese',
    imagePath: 'assets/images/pasta.jpeg',
    ingredients: ['Spaghetti', 'Ground beef', 'Tomato sauce', 'Onion', 'Garlic'],
    instructions: 'Cook pasta. Brown beef with onion & garlic. Add sauce. Combine & serve.',
  ),
  // Add 3+ more recipes…
  
  Recipe(
  name: 'Grilled Cheese',
  imagePath: 'assets/images/grilled_cheese.jpeg',
  ingredients: [
    '2 slices bread',
    '2 slices cheese',
    'Butter'
  ],
  instructions:'Butter the bread. Place cheese between slices. Cook in a pan until golden brown and the cheese melts.',
),

Recipe(
  name: 'Scrambled Eggs',
  imagePath: 'assets/images/eggs.jpeg',
  ingredients: [
    '2 eggs',
    'Salt',
    'Pepper',
    'Butter'
  ],
  instructions: 'Crack eggs into a bowl and whisk. Melt butter in a pan. Cook eggs while stirring until soft and fluffy.',
),

Recipe(
  name: 'Fruit Bowl',
  imagePath: 'assets/images/fruit.jpeg',
  ingredients: [
    'Strawberries',
    'Banana',
    'Blueberries',
    'Honey (optional)'
  ],
  instructions: 'Wash and cut fruit. Combine in a bowl. Drizzle honey on top if desired.',
),
];