import 'package:flutter/material.dart';
import 'package:project_files/components/tiles/cart_tile.dart';
import 'package:provider/provider.dart';

import '../components/dialog_box.dart';
import '../models/product_model.dart';
import '../models/providers/cart_provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  // Remove item from cart
  void removeFromCart(ProductModel shoe) {
    // Show alert shoe is added
    showDialog(
        context: context,
        builder: (context) => DialogBox(
              onLeftTap: () {
                removeItemFromCart(shoe);
                Navigator.pop(context);
              },
              onRightTap: () {
                Navigator.pop(context);
              },
              titleText: 'Remove item from cart?',
              leftText: 'Remove',
              rightText: 'Cancel',
              height: 150,
            ));
  }

  void removeItemFromCart(ProductModel shoe) {
    Provider.of<CartProvider>(context, listen: false).removeFromCart(shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CartProvider>(
        builder: (context, value, child) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Heading
                  Text(
                    'My Cart',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    textAlign: TextAlign.start,
                  ),

                  SizedBox(
                    height: 12,
                  ),

                  // Cart items
                  Expanded(
                      child: value.shoesInCart.isEmpty
                          ? Center(
                              child: Text(
                                'Cart is empty.',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 16),
                              ),
                            )
                          : ListView.builder(
                              itemCount: value.shoesInCart.length,
                              itemBuilder: (context, index) {
                                return CartTile(
                                  shoe: value.shoesInCart[index],
                                  onTap: () {
                                    removeFromCart(value.shoesInCart[index]);
                                  },
                                );
                              },
                            ))
                ],
              ),
            ));
  }
}
