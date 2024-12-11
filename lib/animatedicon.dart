import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: AnimatedIconPage(),));
}



class AnimatedIconPage extends StatefulWidget {
  @override
  _AnimatedIconPageState createState() => _AnimatedIconPageState();
}

class _AnimatedIconPageState extends State<AnimatedIconPage> with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState(){
    // super.initState();

    // Initialize the animation controller
    _controller = AnimationController(
      vsync: this,  // required for animation controller
      duration: Duration(seconds: 1), // animation duration
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Animated Icon'),
      ),
      body: Center(
        child: IconButton(iconSize:100.0,
          icon: AnimatedIcon(
            icon: AnimatedIcons.play_pause, // predefined animated icon
            progress: _controller, // animation controller
            size: 100, // size of the icon
            color: Colors.blue, // color of the icon
          ),
          onPressed: () {
            if (_controller.isCompleted) {
              _controller.reverse(); // Reverse the animation if completed
            } else {
              _controller.forward(); // Forward the animation if not completed
            }
          },
        ),
      ),
    );
  }
}