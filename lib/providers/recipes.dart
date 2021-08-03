import 'package:flutter/cupertino.dart';
import 'package:fooddelivery/models/recipe.dart';
import 'package:provider/provider.dart';

class Recipes with ChangeNotifier
{
  List<Recipe> _items = [
    Recipe(
      id: 'p2',
      title: 'Pizza',
      address: 'A red shirt - it is pretty red !',
       pickuptime: "55",
      rating: "2.5",
      price: 12.0,
      imageUrl:
      'https://images.unsplash.com/photo-1604382354936-07c5d9983bd3?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
        discount: "10%",
        distance : "0.1"
    ),
    Recipe(
      id: 'p4',
      title: 'Chomin',
      address: 'A red shirt - it is pretty red !',
      pickuptime: "60",
      rating: "2.5",
      price: 100.2,
      imageUrl:
      'https://images.unsplash.com/photo-1598866594230-a7c12756260f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1211&q=80',
        discount: "20%",
        distance : "21"
    ),
    Recipe(
      id: 'p5',
      title: 'Burger',
      address: 'Rajpur Road near Raj Plaza',
      pickuptime: "20",
      rating: "2.5",
      price: 16.66,
      imageUrl:
      'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1202&q=80',
        discount: "90%",
        distance : "22"
    ),
    Recipe(
      id: 'p6',
      title: 'Ice Cream',
      address: 'A red shirt - it is pretty red !',
      pickuptime: "10",
      rating: "2.5",
      price: 10.0,
      imageUrl:
      'https://images.unsplash.com/photo-1607478900766-efe13248b125?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=892&q=80',
    discount: "40%",
      distance : "53"
    ),
  ];

  List<Recipe> get items {
    return [..._items];
  }
  Recipe findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }

  void addRecipe()
  {
    //_items.add(value);
    notifyListeners();
  }
}