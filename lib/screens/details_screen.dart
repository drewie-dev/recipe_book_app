import 'package:flutter/material.dart';

// ADDED: needed so the screen knows what a Recipe object is
import '../models/recipe.dart';

class DetailsScreen extends StatelessWidget {
  final Recipe recipe; // ORIGINAL

  const DetailsScreen({super.key, required this.recipe}); // ORIGINAL

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.name), // ORIGINAL: title uses recipe name
      ),

      body: SingleChildScrollView( // ORIGINAL: prevents overflow on small screens
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // ORIGINAL
          children: [

            // ORIGINAL: Hero image
            Image.asset(
              recipe.imagePath,
              height: 220,
              width: double.infinity,
              fit: BoxFit.cover,
            ),

            // ADDED: padding so text is not against the screen edges
            Padding(
              padding: const EdgeInsets.all(16),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  // ADDED: Recipe name displayed again as header
                  Text(
                    recipe.name,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),

                  const SizedBox(height: 16), // ADDED spacing

                  // ADDED: Ingredients section title
                  Text(
                    "Ingredients",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),

                  const SizedBox(height: 8), // ADDED spacing

                  // ADDED: display ingredient list
                  ...recipe.ingredients.map(
                    (ingredient) => Text("• $ingredient"),
                  ),

                  const SizedBox(height: 20), // ADDED spacing

                  // ADDED: Instructions section title
                  Text(
                    "Instructions",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),

                  const SizedBox(height: 8), // ADDED spacing

                  // ADDED: instructions text
                  Text(recipe.instructions),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}