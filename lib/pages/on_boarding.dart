import 'package:flutter/material.dart';
import 'package:nectar_app/widgets/wide_button.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child:
            Image.asset("assets/images/Delivery_Man.jpg",fit: BoxFit.cover,alignment: Alignment(0.2, 0),)
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 50,left: 12,right: 12),
                    child: Column(
                      children: [
                        SizedBox(width: 48,child: Image.asset("assets/images/carrot.png")),
                        SizedBox(width: 260,child: Text("Welcome to our store",style: TextStyle(color: Colors.white,fontSize: 48, fontWeight:FontWeight.w600),textAlign: TextAlign.center,),),
                        Text("Ger your groceries in as fast as one hour",style: TextStyle(color: Colors.white, fontSize: 13),),
                        SizedBox(height: 40,),
                        WideButton(word: "Get Started",),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}