import 'package:flutter/material.dart';
import 'package:nectar_app/widgets/groceries_tab.dart';
import 'package:nectar_app/widgets/item_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              SizedBox(width: 27, child: Image.asset("assets/images/Red_Carrot.png")),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.location_pin),
                  Text("Dhaka, Banassre")
                ],
              ),
              SizedBox(height: 20),
              SeachBarWidget(),
              SizedBox(height: 20),
              Expanded(
                child: ListView(
                  children: [
                    SeeAllWidget(title: "Exclusive offer",),
                    Row(
                      children: [
                        ItemCard(pathToImage: "assets/images/apple.png", itemName: "Red Apple", itemInfo: "1kg, Priceg", itemPrice: "4.99"),
                        Spacer(),
                        ItemCard(pathToImage: "assets/images/apple.png", itemName: "Red Apple", itemInfo: "1kg, Priceg", itemPrice: "4.99")
                      ],
                    ),
                    SeeAllWidget(title: "Exclusive offer",),
                    Row(
                      children: [
                        ItemCard(pathToImage: "assets/images/apple.png", itemName: "Red Apple", itemInfo: "1kg, Priceg", itemPrice: "4.99"),
                        Spacer(),
                        ItemCard(pathToImage: "assets/images/apple.png", itemName: "Red Apple", itemInfo: "1kg, Priceg", itemPrice: "4.99")
                      ],
                    ),
                    SeeAllWidget(title: "Exclusive offer",),
                    SizedBox(
                      height: 105,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          GroceriesTab(color: const Color.fromARGB(255,254, 242, 228), pathToImage: "assets/images/Pulses.png", title: "Pulses"),
                          SizedBox(width: 15,),
                          GroceriesTab(color: const Color.fromARGB(255,254, 242, 228), pathToImage: "assets/images/Pulses.png", title: "Pulses"),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        ItemCard(pathToImage: "assets/images/apple.png", itemName: "Red Apple", itemInfo: "1kg, Priceg", itemPrice: "4.99"),
                        Spacer(),
                        ItemCard(pathToImage: "assets/images/apple.png", itemName: "Red Apple", itemInfo: "1kg, Priceg", itemPrice: "4.99")
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(icon: Icon(Icons.shop), label: "Store"),
          NavigationDestination(icon: Icon(Icons.shop), label: "Store"),
          NavigationDestination(icon: Icon(Icons.shop), label: "Store"),
          NavigationDestination(icon: Icon(Icons.shop), label: "Store"),
          NavigationDestination(icon: Icon(Icons.shop), label: "Store"),
        ]
      ),
    );
  }
}

class SeeAllWidget extends StatelessWidget {
  final String title;
  const SeeAllWidget({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
        Spacer(),
        Text("See all", style: TextStyle(fontSize: 16, color: const Color.fromARGB(255, 83, 177, 117)),)
      ],
    );
  }
}

class SeachBarWidget extends StatelessWidget {
  const SeachBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Color.fromARGB(255, 242, 243, 242),
        focusColor: Color.fromARGB(255, 242, 243, 242),
        prefixIcon: Icon(Icons.search),
        hint: Text("Search Store"),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color.fromARGB(255, 242, 243, 242)),
          borderRadius: BorderRadius.circular(16.0),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color.fromARGB(255, 242, 243, 242)),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
