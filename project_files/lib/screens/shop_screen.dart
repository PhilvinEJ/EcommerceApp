import 'package:flutter/material.dart';
import 'package:project_files/components/shoe_tile.dart';
import 'package:provider/provider.dart';

import '../models/cart.dart';
import '../models/shoe_model.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  // Add shoe to cart
  void addToCart(ShoeModel shoe) {
    Provider.of<Cart>(context, listen: false).addToCart(shoe);

    // Show alert shoe is added
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text('Shoe Added'),
              content: Text('Check your cart'),
            ));
  }

  @override
  Widget build(BuildContext context) {
    // Search UI
    return Consumer<Cart>(
        builder: (context, value, child) => ListView(
              children: [
                Container(
                  padding: EdgeInsets.all(12),
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                      color: Colors.grey[50],
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Search',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),

                // Message
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 24.0),
                      child: Text('Newest trends for you...',
                          style: TextStyle(
                              fontSize: 20, color: Colors.grey.shade800)),
                    ),
                  ],
                ),

                // Product Listing
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Hot Picks 🔥',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold)),
                      Text('See all',
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),

                SizedBox(
                  height: 12,
                ),

                // Item Listing
                SizedBox(
                  height: 550.0,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: value.shoesForSale.length,
                      itemBuilder: (context, index) {
                        return ShoeTile(
                          shoe: value.shoesForSale[index],
                          onTap: () {
                            addToCart(value.shoesForSale[index]);
                          },
                        );
                      }),
                ),

                SizedBox(
                  height: 20,
                ),
              ],
            ));
  }
}
