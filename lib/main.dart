import 'package:expense_tracker/Authenticate/Login.dart';
import 'package:expense_tracker/Authenticate/Signup.dart';
import 'package:expense_tracker/Screens/AnalysisScreen.dart';
import 'package:expense_tracker/Screens/HomeScreen.dart';
import 'package:expense_tracker/Screens/ProfileScreen.dart';
import 'package:expense_tracker/Screens/WalletScreen.dart';
import 'package:expense_tracker/Welcome/WelcomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const Homescreen(),
      routes: {
        '/wallet': (context) => WalletScreen(),
        '/analysis': (context) => const Analysisscreen(),
        '/profile': (context) => const Profilescreen(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Expense Tracker',
      theme: ThemeData(
          // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          // useMaterial3: true,
          ),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const Welcomescreen()),
        GetPage(name: '/Login', page: () => const Login()),
        GetPage(name: '/Home', page: () => const Homescreen()),

        // Add more pages here as needed
      ],
    );
  }
}
