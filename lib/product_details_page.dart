// product_details_page.dart
import 'package:flutter/material.dart';

import 'main.dart';

class ProductDetailsPage extends StatelessWidget {
  final Product product;
  var arrDescription = ["13th Gen Intel® Core™ i5-1335U (12 MB cache, 10 cores, 12 threads, up to 4.60 GHz Turbo",
                         "Material & Care:100% Cotton Machine Wash",
                         "With Call Function, Touchscreen, Fitness & Outdoor, Health & Medical, Notifier, Safety & Security, Watch phone"
                         "TRUE STREET STYLE CHUNKY DESIGN: This platform Street Style sneaker is a punch of tough and stylish in one shoe, bound to please both your fashion and sporty sides, a deeply unique touch to all your outfits.",
                         ];
  ProductDetailsPage({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                product.imageUrl,
                width: 500.0,
                height: 300.0,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              product.name,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
           /* Text(
              arrDescription.indexed as ,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.green,
              ),
            ),*/
            const SizedBox(height: 16.0),
            Text(
              '\₹${product.price}',
              style: const TextStyle(
                fontSize: 18.0,
                color: Colors.green,
              ),
            ),
            // Example of using AppBar back button
            SizedBox(height: 20.0),
            AppBar(
              leading: BackButton(
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}
