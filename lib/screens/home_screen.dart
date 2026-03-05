import 'package:flutter/material.dart';

// access recipe list
import '../data/recipes_data.dart';

// navigate to details screen
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipe Book'),
      ),

      body: ListView.builder(
        itemCount: sampleRecipes.length,
        itemBuilder: (context, index) {
          final recipe = sampleRecipes[index];

          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),

            child: ListTile(
              // FIXED IMAGE (prevents ListTile width error)
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: SizedBox(
                  width: 56,
                  height: 56,
                  child: Image.asset(
                    recipe.imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              title: Text(recipe.name),

              trailing: const Icon(Icons.chevron_right),

              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => DetailsScreen(recipe: recipe),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}