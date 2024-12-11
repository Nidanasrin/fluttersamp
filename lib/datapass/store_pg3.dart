import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: OrderScreen(),));
}
class OrderScreen extends StatelessWidget {
  final List<Map<String, String>> orders = [
    {
      'name': 'Meat (2kg)',
      'price': '\$52.25',
      'status': 'Processing',
      'image': 'assets/images/meat.jpg',
    },
    {
      'name': 'Banana (2 Pcs)',
      'price': '\$1.50',
      'status': 'Pending',
      'image': 'assets/images/banana.jpg',
    },
    {
      'name': 'Cabbage (1 Pcs)',
      'price': '\$5.15',
      'status': 'Delivered',
      'image': 'assets/images/cabbage.jpg',
    },
    {
      'name': 'Potato (5kg)',
      'price': '\$25.70',
      'status': 'Delivered',
      'image': 'assets/images/potato.jpg',
    },
    {
      'name': 'Bangla Tomato (2kg)',
      'price': '\$16.10',
      'status': 'Placed',
      'image': 'assets/images/tomato.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Order',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: Icon(Icons.arrow_back, color: Colors.black),
      ),
      body: Column(
        children: [
          // Tabs
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FilterTab(title: 'All (5)', isSelected: true),
                FilterTab(title: 'Pending'),
                FilterTab(title: 'Processing'),
                FilterTab(title: 'Delivered'),
              ],
            ),
          ),
          // List of orders
          Expanded(
            child: ListView.builder(
              itemCount: orders.length,
              itemBuilder: (context, index) {
                final order = orders[index];
                return OrderItem(
                  name: order['name']!,
                  price: order['price']!,
                  status: order['status']!,
                  image: order['image']!,
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.grid_view), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Notifications'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}

class FilterTab extends StatelessWidget {
  final String title;
  final bool isSelected;

  const FilterTab({required this.title, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
      decoration: BoxDecoration(
        color: isSelected ? Colors.green : Colors.transparent,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class OrderItem extends StatelessWidget {
  final String name;
  final String price;
  final String status;
  final String image;

  const OrderItem({
    required this.name,
    required this.price,
    required this.status,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        leading: Image.asset(image, width: 50, height: 50, fit: BoxFit.cover),
        title: Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(price),
        trailing: Text(
          status,
          style: TextStyle(
            color: status == 'Delivered'
                ? Colors.green
                : status == 'Pending'
                ? Colors.orange
                : Colors.blue,
          ),
        ),
      ),
    );
  }
}