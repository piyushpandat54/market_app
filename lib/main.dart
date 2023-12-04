import 'package:flutter/material.dart';
import 'package:market_app/product_details_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Marketplace App'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Login',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
              ),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: Icon(Icons.remove_red_eye,
                  color: Colors.grey,), onPressed: () {  },
                )
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Product> products = [
    Product(name: 'Latitude 5540 Laptop',
           price: '93,805.92',
           imageUrl: 'assets/images/notebook.png',),
    Product(name: 'Tom And Jerry: Thinking Tom T-Shirts',
            price: '599',
            imageUrl: 'assets/images/tomandjerry.png'),
    Product(name: 'Fire-Boltt Lumos Luxury Smart Watch',
            price: '1,499',
            imageUrl: 'assets/images/firebolt.png'),
    Product(name: "Bacca Bucci® Men's Casual Chunky Fashion Sneakers",
        price: '1,799',
        imageUrl: 'assets/images/Sneakers.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Marketplace App - Home'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 2.0,
            margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: ListTile(
              contentPadding: EdgeInsets.all(16.0),
              leading: Image.asset(
                products[index].imageUrl,
                width: 200.0,
                height: 80.0,
                fit: BoxFit.cover,
              ),
              title: Text(products[index].name),
              subtitle: Text('\₹${products[index].price}'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => ProductDetailsPage(product: products[index],)),
                );
              },

            ),
            // Example of using AppBar back button


          );
        },
      ),
    );
  }
}

class Product {
  final String name;
  final String price;
  final String imageUrl;
  //final String descreption;

  Product({required this.name, required this.price, required this.imageUrl,});
}