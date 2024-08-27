import 'package:ecommerce_app/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeshop = [
    Shoe(
        name: 'Air Max 90 Drift',
        price: '250',
        imagePath: 'lib/images/Air Max 90 Drift.png',
        description: "Cool green shoe"),
    Shoe(
        name: 'Luka 3 Speedway',
        price: '230',
        imagePath: 'lib/images/Luka 3 Speedway.png',
        description: "New Luka shoe"),
    Shoe(
        name: 'Tatum 2 Legacy',
        price: '260',
        imagePath: 'lib/images/Tatum 2 Legacy.jpeg',
        description: "New Tatum Zoo "),
    Shoe(
        name: 'Mercurial Superfly 10 Elite FG',
        price: '250',
        imagePath: 'lib/images/Mercurial Superfly 10 Elite FG.png',
        description: "The boot you would want"),
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeshop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItem(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
