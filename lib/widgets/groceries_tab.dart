import 'package:flutter/material.dart';

class GroceriesTab extends StatelessWidget {
  final Color color;
  final String pathToImage;
  final String title;
  const GroceriesTab({required this.color,required this.pathToImage,required this.title,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(18)
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Image.asset(pathToImage),
            SizedBox(width: 18,),
            Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
          ],
        ),
      ),
    );
  }
}