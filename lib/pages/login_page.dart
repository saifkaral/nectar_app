import 'package:flutter/material.dart';
import 'package:nectar_app/pages/home_screen.dart';
import 'package:nectar_app/widgets/TextFormFieldBox.dart';
import 'package:nectar_app/widgets/wide_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: SizedBox(
                  width: 47,
                  child: Image.asset("assets/images/Red_Carrot.png"),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 100),
                      Text(
                        "Logging",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text("Enter your email and password"),
                      SizedBox(height: 40),
                    ],
                  ),
                ),
              ),
              TextFieldBox(fieldType: "Email", controller: emailController),
              SizedBox(height: 30),
              TextFieldBox(
                fieldType: "Password",
                controller: passwordController,
                obscureText: true,
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerRight,
                child: Text("Forgot Password?"),
              ),
              SizedBox(height: 30),
              InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                ),
                child: WideButton(word: "Log In"),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account? "),
                  TextButton(onPressed: () {}, child: Text("Sign Up")),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
