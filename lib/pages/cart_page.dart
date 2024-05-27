import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:shoes_app/components/cart_item.dart';
import 'package:shoes_app/model/cart.dart';
import 'package:shoes_app/models/shoe.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'My Cart',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
                child: ListView.builder(
                  itemCount: value.getUserCart().length,
              itemBuilder: (context, index) {
                // get individual shoes
                Shoe individualShoe = value.getUserCart()[index];

                // return cart item

                
                return CartItem(shoe: individualShoe,);
              },
            ))
          ],
        ),
      ),
    );
  }
}
