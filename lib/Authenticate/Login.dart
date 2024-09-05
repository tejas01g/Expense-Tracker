import 'package:expense_tracker/Screens/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class LoginController extends GetxController {
  var name = ''.obs;
  var mobile = ''.obs;

  void navigateToHomeScreen() {
    Get.to(const Homescreen());
  }
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 8, 20, 30),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 8, 20, 30),
        title: const Text(
          'Login',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (Value) => LoginController.new,
              decoration: InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              onChanged: (Value) => LoginController.new,
              decoration: InputDecoration(
                  labelText: 'Mobile Number', border: OutlineInputBorder()),
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  LoginController().navigateToHomeScreen();
                },
                child: Text("Let's Go")),
          ],
        ),
      ),
    );
  }
}
