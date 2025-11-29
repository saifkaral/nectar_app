import 'package:flutter/material.dart';
import 'package:nectar_app/widgets/add_to_cart.dart';

class ItemCard extends StatelessWidget {
  final String pathToImage;
  final String itemName;
  final String itemInfo;
  final String itemPrice;

  const ItemCard({
    required this.pathToImage,
    required this.itemName, 
    required this.itemInfo,
    required this.itemPrice,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      width: 170,
      decoration: BoxDecoration(
        border: BoxBorder.all(color: Color.fromARGB(255, 226, 226, 226),),
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Image.asset(pathToImage),
            Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(itemName, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                    Text(itemInfo),
                  ],
                ),
              ),
            ),
            SizedBox(height: 24,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("\$$itemPrice", style: TextStyle(fontWeight:FontWeight.bold, fontSize: 20),),
                Spacer(),
                AddToCart()
              ],
            )
          ],
        ),
      ),
    );
  }
}