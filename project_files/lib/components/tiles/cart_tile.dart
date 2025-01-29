import 'package:flutter/material.dart';

import '../../models/product_model.dart';

class CartTile extends StatefulWidget {
  final ProductModel shoe;
  final Function onTap;

  const CartTile({super.key, required this.shoe, required this.onTap});

  @override
  State<CartTile> createState() => _CartTileState();
}

class _CartTileState extends State<CartTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Container(
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(12)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                // Image
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image.asset(
                    widget.shoe.imagePath,
                    fit: BoxFit.cover,
                    height: 100.0,
                    width: 100.0,
                  ),
                ),

                // Details
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.shoe.name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0)),
                      SizedBox(height: 5.0),
                      Text(
                        '\$${widget.shoe.price}',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                )
              ],
            ),

            // Delete Button
            IconButton(
              onPressed: () {
                widget.onTap();
              },
              icon: Icon(Icons.delete, color: Colors.red),
            )
          ],
        ),
      ),
    );
  }
}
