
import 'package:flutter/material.dart';
import 'package:fooddelivery/homepage.dart';
import 'package:fooddelivery/providers/recipes.dart';
import 'package:fooddelivery/rough.dart';
import 'package:fooddelivery/screens/recipe_detail_screen.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => Recipes(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Food Delivery',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: New(),
          routes: {
          RecipeDetailScreen.routeName: (ctx) => RecipeDetailScreen(),

          }
      ),
    );
  }
}

