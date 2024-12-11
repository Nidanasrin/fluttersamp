import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
void main(){
  runApp(MaterialApp(home: Lottieanimation(),));
}
class Lottieanimation extends StatelessWidget {
  const Lottieanimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Center(child: Lottie.asset("assets/lottie/Animation - 1732854212909.json")),
    );
  }
}
