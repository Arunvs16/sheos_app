import 'package:flutter/material.dart';
import 'package:shoes_app/models/shoe.dart';

// ignore: must_be_immutable
class ShoeTile extends StatelessWidget {
  Shoe shoe;
   ShoeTile({super.key,required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(children: [
        // shoe pic
        Image.asset(shoe.imagesPath),

        // description 
        // price + details
        // button to add to cart
      ],),
    );
  }
}