// @dart=2.9
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fooddelivery/providers/recipes.dart';

class RecipeDetailScreen extends StatelessWidget {
  static const routeName = '/recipeDetailScreen';
  @override
  Widget build(BuildContext context) {
    final productId =
    ModalRoute.of(context).settings.arguments as String; // is the id!
    final loadedProduct = Provider.of<Recipes>(context, listen: false,).
    findById(productId);

    return Scaffold(
      body: Text(loadedProduct.title),
    );
  }
}
