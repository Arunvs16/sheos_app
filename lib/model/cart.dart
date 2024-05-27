import 'package:flutter/material.dart';
import 'package:shoes_app/models/shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: "Softride",
      price: "5,499₹",
      imagePath: "images/puma3.jpg",
      description:
          "The SOFTRIDE Symmetry is a running shoe that combines PUMA's PROFOAM and SOFTRIDE technologies",
    ),
    Shoe(
      name: "Equate",
      price: "5,999₹",
      imagePath: "images/puma2.jpg",
      description:
          "Break through the ordinary with the bold colourways and striking lines of our Equate Running Shoes.",
    ),
    Shoe(
      name: "Scorch Runner",
      price: '2,499₹',
      imagePath: 'images/puma1.jpg',
      description:
          "Slip into the future with the PUMA Scorch Runner V2 Men's Shoes perfect for the urban runner on the go",
    ),
  ];

  // list of item in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemsToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove items from cart
  void removeItemsFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
