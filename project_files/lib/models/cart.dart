import 'package:flutter/cupertino.dart';
import 'package:project_files/models/shoe_model.dart';

class Cart extends ChangeNotifier {
  //List of shoe for sale
  List<ShoeModel> shoesForSale = [
    ShoeModel(
        name: 'Shoe 1',
        price: '250',
        imagePath: 'lib/assets/images/pic1.jpg',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Coolest Shoe 1'),
    ShoeModel(
        name: 'Shoe 2',
        price: '300',
        imagePath: 'lib/assets/images/pic2.jpg',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Coolest Shoe 2'),
    ShoeModel(
        name: 'Shoe 3',
        price: '400',
        imagePath: 'lib/assets/images/pic3.jpg',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Coolest Shoe 3'),
    ShoeModel(
        name: 'Shoe 4',
        price: '380',
        imagePath: 'lib/assets/images/pic4.jpeg',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Coolest Shoe 4'),
    ShoeModel(
        name: 'Shoe 5',
        price: '280',
        imagePath: 'lib/assets/images/pic1.jpg',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Coolest Shoe 5'),
    ShoeModel(
        name: 'Shoe 6',
        price: '450',
        imagePath: 'lib/assets/images/pic2.jpg',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Coolest Shoe 6'),
    ShoeModel(
        name: 'Shoe 7',
        price: '290',
        imagePath: 'lib/assets/images/pic3.jpg',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Coolest Shoe 7'),
    ShoeModel(
        name: 'Shoe 8',
        price: '420',
        imagePath: 'lib/assets/images/pic4.jpeg',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Coolest Shoe 8'),
  ];

  // List of shoes in user's cart
  List<ShoeModel> shoesInCart = [];

  // Get shoe list
  List<ShoeModel> getShoes() {
    return shoesForSale;
  }

  // Add shoe to cart
  void addToCart(ShoeModel shoe) {
    shoesInCart.add(shoe);
    notifyListeners();
  }

  // Remove shoe from cart
  void removeFromCart(ShoeModel shoe) {
    shoesInCart.remove(shoe);
    notifyListeners();
  }
}
