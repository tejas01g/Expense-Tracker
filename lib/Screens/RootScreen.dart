import 'package:expense_tracker/Controller/HomeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Homescreen.dart';
import 'WalletScreen.dart';
import 'AnalysisScreen.dart';
import 'ProfileScreen.dart';
// import 'Controller/HomeController.dart';

class RootScreen extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());

  final List<Widget> screens = [
    Homescreen(),
    WalletScreen(),
    // AnalysisScreen(),
    // ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: IndexedStack(
          index: controller.selectedIndex.value,
          children: screens,
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(255, 6, 16, 22),
          type: BottomNavigationBarType.fixed,
          currentIndex: controller.selectedIndex.value,
          selectedItemColor: const Color.fromARGB(255, 219, 158, 4),
          unselectedItemColor: Colors.white,
          onTap: (index) {
            controller.changeIndex(index);
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet),
              label: 'Wallet',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.analytics),
              label: 'Analysis',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
