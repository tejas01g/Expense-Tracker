import 'package:flutter/material.dart';

class Analysisscreen extends StatefulWidget {
  const Analysisscreen({super.key});

  @override
  State<Analysisscreen> createState() => _AnalysisscreenState();
}

class _AnalysisscreenState extends State<Analysisscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 8, 20, 30),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 8, 20, 30),
          title: const Text(
            'Analysis',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ));
  }
}
