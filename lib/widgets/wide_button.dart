import 'package:flutter/material.dart';

class WideButton extends StatelessWidget {
  final String word;
  const WideButton({super.key, required this.word});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 353,
      height: 67,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 83, 177, 117),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: Text(
          word,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
