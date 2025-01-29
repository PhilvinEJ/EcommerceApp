import 'package:flutter/material.dart';
import 'package:project_files/models/product_model.dart';

import '../../themes/colors.dart';

class ProductTile extends StatelessWidget {
  final ProductModel shoe;
  final Function()? onTap;

  const ProductTile({super.key, required this.shoe, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25.0),
      width: 300.0,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Image
          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12), topRight: Radius.circular(12)),
            child: AspectRatio(
              aspectRatio: 1,
              child: Image.asset(
                shoe.imagePath,
                fit: BoxFit.cover,
                height: 300.0,
                width: double.infinity,
              ),
            ),
          ),

          // Name & Description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(shoe.name,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                SizedBox(height: 8.0),
                Text(
                  shoe.description,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ],
            ),
          ),

          // Name and details
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text('\$${shoe.price}',
                      style: TextStyle(color: Colors.grey))),
              GestureDetector(
                onTap: onTap,
                child: Container(
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                        color: black,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(12),
                            topLeft: Radius.circular(12))),
                    child: Icon(Icons.add,
                        color: Theme.of(context).colorScheme.secondary)),
              )
            ],
          )
        ],
      ),
    );
  }
}
