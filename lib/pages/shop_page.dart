
import 'package:flutter/material.dart';
import 'package:shoes_app/components/shoe_tile.dart';
import 'package:shoes_app/models/shoe.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Search bar
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
              color: Colors.grey[100], borderRadius: BorderRadius.circular(8)),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Search',
                style: TextStyle(color: Colors.grey),
              ),
              Icon(
                Icons.search_outlined,
                color: Colors.grey,
              ),
            ],
          ),
        ),

        //message
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Text(
            'The best things in life are purchased',
            style: TextStyle(color: Colors.grey.shade700),
          ),
        ),

        //hot pics
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Hot Pics 🔥',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'See All',
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),

        const SizedBox(
          height: 10,
        ),

        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              // create shoe
              Shoe shoe = Shoe(
                name: "Scorch Runner",
                price: '2499₹',
                imagesPath: 'images/puma1',
                description: 'Men\'s shoe',
              );
              return ShoeTile(
                shoe: shoe,
              );
            },
          ),
        )
      ],
    );
  }
}
