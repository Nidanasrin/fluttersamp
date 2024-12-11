import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: StoreScreen(),));
}

class StoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Store"),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Bar
            TextField(
              decoration: InputDecoration(
                hintText: "Search for products",
                prefixIcon: const Icon(Icons.search),
                suffixIcon: const Icon(Icons.filter_list),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
            const SizedBox(height: 20),
            // Category Tabs
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                CategoryTab(text: "Vegetables", isSelected: true),
                CategoryTab(text: "Fruits", isSelected: false),
                CategoryTab(text: "Meat", isSelected: false),
                CategoryTab(text: "Fish", isSelected: false),
              ],
            ),
            const SizedBox(height: 20),
            // Product Grid
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 4,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return ProductCard(product: products[index]);
                },
              ),
            ),
          ],
        ),
      ),
      // Bottom Navigation
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
        ],
      ),
    );
  }
}

// Category Tab Widget
class CategoryTab extends StatelessWidget {
  final String text;
  final bool isSelected;

  const CategoryTab({
    Key? key,
    required this.text,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: isSelected ? Colors.green : Colors.grey,
      ),
    );
  }
}

// Product Model
class Product {
  final String name;
  final String description;
  final double price;
  final String imageUrl;

  Product({
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
  });
}

// Product Data
final List<Product> products = [
  Product(
    name: "Cabbage",
    description: "Indian Product",
    price: 11.25,
    imageUrl: "assets/images/cabbage.jpg", // Replace with actual image URL
  ),
  Product(
    name: "Bangla Tomato",
    description: "Fresh Product",
    price: 7.90,
    imageUrl: "assets/images/tomato.jpg",
  ),
  Product(
    name: "Carrot",
    description: "Daily Fresh Product",
    price: 5.80,
    imageUrl: "assets/images/carrot.jpg",
  ),
  Product(
    name: "Potato",
    description: "Indian Product",
    price: 12.30,
    imageUrl: "assets/images/potato.jpg",
  ),
];

// Product Card Widget
class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Image.network(
                product.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              product.name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            Text(
              product.description,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "\$ ${product.price}",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 8),
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                icon: const Icon(Icons.add_circle, color: Colors.green),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}