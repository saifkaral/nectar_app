import 'package:flutter/material.dart';

class AddToCart extends StatefulWidget {
  const AddToCart({super.key});

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 83, 177, 117),
        borderRadius: BorderRadius.circular(10),
      ),
      width: 30,
      height: 30,
      child: Icon(Icons.add, color: Colors.white),
    );
  }
}
