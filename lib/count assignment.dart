import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const MenuScreen(),
    );
  }
}

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Menu',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          children: [
            _buildMenuItem(
              icon: Icons.person,
              label: 'My Profile',
              color: Colors.amber,
            ),
            _buildMenuItem(
              icon: Icons.local_taxi,
              label: 'Book a Cab',
              color: Colors.amber,
            ),
            _buildMenuItem(
              icon: Icons.calendar_today,
              label: 'Booking Schedule',
              color: Colors.amber,
            ),
            _buildMenuItem(
              icon: Icons.location_on,
              label: 'Track Your Cab',
              color: Colors.amber,
            ),
            _buildMenuItem(
              icon: Icons.help,
              label: 'Help & Feedback',
              color: Colors.amber,
            ),
            _buildMenuItem(
              icon: Icons.phone,
              label: 'Call to Transport',
              color: Colors.amber,
            ),
            _buildMenuItem(
              icon: Icons.settings,
              label: 'Settings',
              color: Colors.amber,
            ),
            _buildMenuItem(
              icon: Icons.logout,
              label: 'Log-out',
              color: Colors.amber,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem({
    required IconData icon,
    required String label,
    required Color color,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 150,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Icon(
            icon,
            size: 40,
            color: color,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey[600],
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}