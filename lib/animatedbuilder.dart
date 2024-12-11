import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: AnimatedBuilderExample(),));

class AnimatedBuilderExample extends StatefulWidget {
  @override
  _AnimatedBuilderExampleState createState() => _AnimatedBuilderExampleState();
}

class _AnimatedBuilderExampleState extends State<AnimatedBuilderExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    // Initialize the controller
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true); // Repeats the animation

    // You can also use a CurvedAnimation for smoother effects
    // _controller = AnimationController(
    //   duration: const Duration(seconds: 2),
    //   vsync: this,
    // )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedBuilder Example'),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller, // Animation to listen to
          builder: (context, child) {
            // Rotate the widget based on animation value
            return Transform.rotate(
              angle: _controller.value * 2 * 3.14159, // Rotate full circle
              child: child, // The widget you are animating
            );
          },
          child: Icon(
            Icons.refresh,
            size: 100.0,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}