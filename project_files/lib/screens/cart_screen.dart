import 'package:flutter/material.dart';
import 'package:project_files/components/cart_tile.dart';
import 'package:provider/provider.dart';

import '../models/cart.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
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
                      child: ListView.builder(
                    itemCount: value.shoesInCart.length,
                    itemBuilder: (context, index) {
                      return CartTile(
                        shoe: value.shoesInCart[index],
                      );
                    },
                  ))
                ],
              ),
            ));
  }
}
