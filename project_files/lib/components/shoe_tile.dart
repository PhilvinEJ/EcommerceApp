import 'package:flutter/material.dart';
import 'package:project_files/models/shoe_model.dart';

class ShoeTile extends StatelessWidget {
  final ShoeModel shoe;
  final Function()? onTap;

  const ShoeTile({super.key, required this.shoe, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25.0),
      width: 280.0,
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Image
          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12), topRight: Radius.circular(12)),
            child: Image.asset(
              shoe.imagePath,
              fit: BoxFit.cover,
              height: 300.0,
              width: 280.0,
            ),
          ),

          // Description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              shoe.description,
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: Colors.grey.shade700,
              ),
            ),
          ),

          // Name and details
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(shoe.name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0)),
                    SizedBox(height: 5.0),
                    Text('\$${shoe.price}',
                        style: TextStyle(color: Colors.grey))
                  ],
                ),
              ),
              GestureDetector(
                onTap: onTap,
                child: Container(
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(12),
                            topLeft: Radius.circular(12))),
                    child: Icon(Icons.add, color: Colors.white)),
              )
            ],
          )
        ],
      ),
    );
  }
}
