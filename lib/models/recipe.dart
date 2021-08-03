// @dart=2.9
import 'package:flutter/foundation.dart';

class Recipe with ChangeNotifier {
  final String id;
  final String title;
  final String address;
  final double price;
  final String imageUrl;
  final String rating;
  final String pickuptime;
  final String discount;
  final String distance;


  Recipe(
      {
    @required this.id,
    @required this.title,
    @required this.address,
    @required this.price,
    @required this.imageUrl,
    @required this.rating,
    @required this.pickuptime,
    @required this.discount,
    @required this.distance,
      });


}
