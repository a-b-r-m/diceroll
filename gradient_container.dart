import 'package:flutter/material.dart';

class GradientContainer extends StatefulWidget {
  const GradientContainer({super.key});

  @override
  State<GradientContainer> createState() => _GradientContainerState();
}

class _GradientContainerState extends State<GradientContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(223, 235, 85, 118),
          Color.fromARGB(223, 196, 9, 34)
        ], begin: FractionalOffset.topLeft, end: Alignment.bottomRight),
      ),
      child: Center(
          child: Image.asset('assets/images/OIP (1).jpg')

      ),


    );

  }
}
