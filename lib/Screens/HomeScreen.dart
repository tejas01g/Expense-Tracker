// // import 'package:expense_tracker/Controller/BalanceController.dart';
// // import 'package:expense_tracker/Controller/HomeController.dart';
// // import 'package:expense_tracker/Controller/TransactionController.dart';
// // import 'package:expense_tracker/Screens/AnalysisScreen.dart';
// // import 'package:expense_tracker/Screens/ProfileScreen.dart';
// // import 'package:expense_tracker/Screens/WalletScreen.dart';
// // import 'package:flutter/material.dart';
// // import 'package:get/get.dart';
// // import 'package:percent_indicator/percent_indicator.dart';

// // class MainScreen extends StatelessWidget {
// //   const MainScreen({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     // Initialize the HomeController
// //     final HomeController controller = Get.put(HomeController());

// //     return Scaffold(
// //       backgroundColor: const Color.fromARGB(255, 2, 30, 62).withOpacity(0.89),
// //       body: Obx(() {
// //         return IndexedStack(
// //           index: controller.selectedIndex.value,
// //           children: [
// //             const Homescreen(), // Home Page
// //             WalletScreen(), // Wallet Page
// //             const Analysisscreen(), // Analysis Page
// //             const Profilescreen(), // Profile Page
// //           ],
// //         );
// //       }),
// //       bottomNavigationBar: Obx(() {
// //         return BottomNavigationBar(
// //           backgroundColor:
// //               const Color.fromARGB(255, 2, 30, 62).withOpacity(0.89),
// //           type: BottomNavigationBarType.fixed,
// //           currentIndex: controller.selectedIndex.value,
// //           selectedItemColor: const Color.fromARGB(255, 219, 158, 4),
// //           unselectedItemColor: Colors.white,
// //           onTap: (index) {
// //             // Update the selectedIndex in the controller to switch tabs
// //             controller.changeIndex(index);
// //           },
// //           items: const [
// //             BottomNavigationBarItem(
// //               icon: Icon(Icons.home),
// //               label: 'Home',
// //             ),
// //             BottomNavigationBarItem(
// //               icon: Icon(Icons.account_balance_wallet),
// //               label: 'Wallet',
// //             ),
// //             BottomNavigationBarItem(
// //               icon: Icon(Icons.analytics),
// //               label: 'Analysis',
// //             ),
// //             BottomNavigationBarItem(
// //               icon: Icon(Icons.person),
// //               label: 'Profile',
// //             ),
// //           ],
// //         );
// //       }),
// //     );
// //   }
// // }

// // class Homescreen extends StatelessWidget {
// //   const Homescreen({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     var media = MediaQuery.sizeOf(context);
// //     final HomeController controller = Get.put(HomeController());
// //     final TransactionController transactionController =
// //         Get.put(TransactionController());
// //     final BalanceController balanceController = Get.put(BalanceController());

// //     return Scaffold(
// //       backgroundColor: const Color.fromARGB(255, 2, 30, 62).withOpacity(0.89),
// //       appBar: AppBar(
// //         backgroundColor: const Color.fromARGB(255, 2, 30, 62).withOpacity(0.88),
// //         centerTitle: true,
// //         title: const Text(
// //           'WELCOME',
// //           style: TextStyle(
// //             fontSize: 20,
// //             color: Colors.white,
// //           ),
// //         ),
// //         actions: [
// //           IconButton(
// //             icon: const Icon(Icons.align_horizontal_left_outlined),
// //             onPressed: () {
// //               Get.to(WalletScreen());
// //             },
// //           ),
// //         ],
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.all(20.0),
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.start,
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: [
// //             // Centering the Available Balance section
// //             const Center(
// //               child: Column(
// //                 children: [
// //                   Text(
// //                     'Available Balance',
// //                     textAlign: TextAlign.center,
// //                     style: TextStyle(
// //                       color: Color.fromARGB(255, 219, 150, 13),
// //                     ),
// //                   ),
// //                   SizedBox(height: 2),
// //                   Text(
// //                     '\$100000',
// //                     textAlign: TextAlign.center,
// //                     style: TextStyle(color: Colors.white, fontSize: 30),
// //                   ),
// //                 ],
// //               ),
// //             ),
// //             const SizedBox(height: 30),
// //             // Balance Section
// //             const SizedBox(height: 20),
// //             Obx(
// //               () {
// //                 return Row(
// //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                   children: [
// //                     CircularPercentIndicator(
// //                       radius: 40.0,
// //                       lineWidth: 10.0,
// //                       percent: balanceController.percentages[0] / 100,
// //                       center: Text(
// //                         "${balanceController.percentages[0]}%",
// //                         style: const TextStyle(
// //                           color: Colors.white,
// //                         ),
// //                       ),
// //                       progressColor: Colors.purpleAccent,
// //                       backgroundColor: const Color(0xFF141326),
// //                     ),
// //                     CircularPercentIndicator(
// //                       radius: 40.0,
// //                       lineWidth: 10.0,
// //                       percent: balanceController.percentages[1] / 100,
// //                       center: Text(
// //                         "${balanceController.percentages[1]}%",
// //                         style: const TextStyle(
// //                           color: Colors.white,
// //                         ),
// //                       ),
// //                       progressColor: Colors.cyanAccent,
// //                       backgroundColor: const Color(0xFF141326),
// //                     ),
// //                     CircularPercentIndicator(
// //                       radius: 40.0,
// //                       lineWidth: 10.0,
// //                       percent: balanceController.percentages[2] / 100,
// //                       center: Text(
// //                         "${balanceController.percentages[2]}%",
// //                         style: const TextStyle(
// //                           color: Colors.white,
// //                         ),
// //                       ),
// //                       progressColor: Colors.orangeAccent,
// //                       backgroundColor: const Color(0xFF141326),
// //                     ),
// //                   ],
// //                 );
// //               },
// //             ),
// //             const SizedBox(height: 30),
// //             const Text(
// //               'Transactions',
// //               style: TextStyle(
// //                 color: Colors.white,
// //                 fontSize: 22,
// //                 fontWeight: FontWeight.bold,
// //               ),
// //             ),
// //             const SizedBox(height: 10),
// //             Expanded(
// //               child: Stack(
// //                 children: [
// //                   Positioned.fill(
// //                     child: Container(
// //                       color: Colors.black.withOpacity(0.1),
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //               Obx(() {
// //                 return ListView.builder(
// //                   itemCount: transactionController.transactions.length,
// //                   itemBuilder: (context, index) {
// //                     final transaction =
// //                         transactionController.transactions[index];
// //                     return Card(
// //                       color: const Color(0xFF141326),
// //                       child: ListTile(
// //                         leading: CircleAvatar(
// //                           backgroundColor: transaction.backgroundColor,
// //                           child: Image.asset(
// //                             transaction.logo,
// //                             height: 28,
// //                             width: 28,
// //                           ),
// //                         ),
// //                         title: Text(
// //                           transaction.title,
// //                           style: const TextStyle(
// //                             color: Colors.white,
// //                             fontSize: 16,
// //                             fontWeight: FontWeight.bold,
// //                           ),
// //                         ),
// //                         subtitle: Text(
// //                           transaction.date,
// //                           style: const TextStyle(
// //                             color: Colors.grey,
// //                             fontSize: 14,
// //                           ),
// //                         ),
// //                         trailing: Text(
// //                           '${transaction.amount}',
// //                           style: TextStyle(
// //                             color: transaction.amount < 0
// //                                 ? Colors.red
// //                                 : Colors.green,
// //                             fontSize: 18,
// //                             fontWeight: FontWeight.bold,
// //                           ),
// //                         ),
// //                       ),
// //                     );
// //                   },
// //                 );
// //               }),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// import 'dart:ui';

// import 'package:expense_tracker/Controller/BalanceController.dart';
// import 'package:expense_tracker/Controller/HomeController.dart';
// import 'package:expense_tracker/Controller/TransactionController.dart';
// import 'package:expense_tracker/Screens/AnalysisScreen.dart';
// import 'package:expense_tracker/Screens/ProfileScreen.dart';
// import 'package:expense_tracker/Screens/WalletScreen.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:percent_indicator/percent_indicator.dart';

// class MainScreen extends StatelessWidget {
//   const MainScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // Initialize the HomeController
//     final HomeController controller = Get.put(HomeController());

//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 2, 30, 62).withOpacity(0.89),
//       body: Obx(() {
//         return IndexedStack(
//           index: controller.selectedIndex.value,
//           children: [
//             const Homescreen(), // Home Page
//             WalletScreen(), // Wallet Page
//             const Analysisscreen(), // Analysis Page
//             const Profilescreen(), // Profile Page
//           ],
//         );
//       }),
//       bottomNavigationBar: Obx(() {
//         return BottomNavigationBar(
//           backgroundColor:
//               const Color.fromARGB(255, 2, 30, 62).withOpacity(0.89),
//           type: BottomNavigationBarType.fixed,
//           currentIndex: controller.selectedIndex.value,
//           selectedItemColor: const Color.fromARGB(255, 219, 158, 4),
//           unselectedItemColor: Colors.white,
//           onTap: (index) {
//             // Update the selectedIndex in the controller to switch tabs
//             controller.changeIndex(index);
//           },
//           items: const [
//             BottomNavigationBarItem(
//               icon: Icon(Icons.home),
//               label: 'Home',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.account_balance_wallet),
//               label: 'Wallet',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.analytics),
//               label: 'Analysis',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.person),
//               label: 'Profile',
//             ),
//           ],
//         );
//       }),
//     );
//   }
// }

// class Homescreen extends StatelessWidget {
//   const Homescreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var media = MediaQuery.sizeOf(context);
//     final HomeController controller = Get.put(HomeController());
//     final TransactionController transactionController =
//         Get.put(TransactionController());
//     final BalanceController balanceController = Get.put(BalanceController());

//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 2, 30, 62).withOpacity(0.89),
//       appBar: AppBar(
//         backgroundColor: const Color.fromARGB(255, 2, 30, 62).withOpacity(0.88),
//         centerTitle: true,
//         title: const Text(
//           'WELCOME',
//           style: TextStyle(
//             fontSize: 20,
//             color: Colors.white,
//           ),
//         ),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.align_horizontal_left_outlined),
//             onPressed: () {
//               Get.to(WalletScreen());
//             },
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Centering the Available Balance section
//             const Center(
//               child: Column(
//                 children: [
//                   Text(
//                     'Available Balance',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       color: Color.fromARGB(255, 219, 150, 13),
//                     ),
//                   ),
//                   SizedBox(height: 2),
//                   Text(
//                     '\$100000',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(color: Colors.white, fontSize: 30),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 30),
//             // Balance Section
//             const SizedBox(height: 20),
//             Obx(
//               () {
//                 return Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     CircularPercentIndicator(
//                       radius: 40.0,
//                       lineWidth: 10.0,
//                       percent: balanceController.percentages[0] / 100,
//                       center: Text(
//                         "${balanceController.percentages[0]}%",
//                         style: const TextStyle(
//                           color: Colors.white,
//                         ),
//                       ),
//                       progressColor: Colors.purpleAccent,
//                       backgroundColor: const Color(0xFF141326),
//                     ),
//                     CircularPercentIndicator(
//                       radius: 40.0,
//                       lineWidth: 10.0,
//                       percent: balanceController.percentages[1] / 100,
//                       center: Text(
//                         "${balanceController.percentages[1]}%",
//                         style: const TextStyle(
//                           color: Colors.white,
//                         ),
//                       ),
//                       progressColor: Colors.cyanAccent,
//                       backgroundColor: const Color(0xFF141326),
//                     ),
//                     CircularPercentIndicator(
//                       radius: 40.0,
//                       lineWidth: 10.0,
//                       percent: balanceController.percentages[2] / 100,
//                       center: Text(
//                         "${balanceController.percentages[2]}%",
//                         style: const TextStyle(
//                           color: Colors.white,
//                         ),
//                       ),
//                       progressColor: Colors.orangeAccent,
//                       backgroundColor: const Color(0xFF141326),
//                     ),
//                   ],
//                 );
//               },
//             ),
//             const SizedBox(height: 30),
//             const Text(
//               'Transactions',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 22,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             const SizedBox(height: 10),
//             Expanded(
//               child: Obx(() {
//                 return ListView.builder(
//                   itemCount: transactionController.transactions.length,
//                   itemBuilder: (context, index) {
//                     final transaction =
//                         transactionController.transactions[index];
//                     return Card(
//                       color: const Color.fromARGB(255, 33, 33, 34)
//                           .withOpacity(0.9),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       child: ClipRRect(
//                         borderRadius: BorderRadius.circular(10),
//                         child: Stack(
//                           children: [
//                             Positioned.fill(
//                               child: ImageFiltered(
//                                 imageFilter:
//                                     ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
//                                 child: Container(
//                                   color: Colors.black.withOpacity(0.3),
//                                 ),
//                               ),
//                             ),
//                             ListTile(
//                               leading: CircleAvatar(
//                                 backgroundColor: transaction.backgroundColor,
//                                 child: Image.asset(
//                                   transaction.logo,
//                                   height: 28,
//                                   width: 28,
//                                 ),
//                               ),
//                               title: Text(
//                                 transaction.title,
//                                 style: const TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               subtitle: Text(
//                                 transaction.date,
//                                 style: const TextStyle(
//                                   color: Colors.grey,
//                                   fontSize: 14,
//                                 ),
//                               ),
//                               trailing: Text(
//                                 '${transaction.amount}',
//                                 style: TextStyle(
//                                   color: transaction.amount < 0
//                                       ? Colors.red
//                                       : Colors.green,
//                                   fontSize: 18,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     );
//                   },
//                 );
//               }),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'dart:ui'; // Make sure to import this for the ImageFilter

import 'package:expense_tracker/Controller/BalanceController.dart';
import 'package:expense_tracker/Controller/HomeController.dart';
import 'package:expense_tracker/Controller/TransactionController.dart';
import 'package:expense_tracker/Screens/AnalysisScreen.dart';
import 'package:expense_tracker/Screens/ProfileScreen.dart';
import 'package:expense_tracker/Screens/WalletScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/percent_indicator.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize the HomeController
    final HomeController controller = Get.put(HomeController());

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 2, 30, 62).withOpacity(0.89),
      body: Obx(() {
        return IndexedStack(
          index: controller.selectedIndex.value,
          children: [
            const Homescreen(), // Home Page
            WalletScreen(), // Wallet Page
            const Analysisscreen(), // Analysis Page
            const Profilescreen(), // Profile Page
          ],
        );
      }),
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          backgroundColor:
              const Color.fromARGB(255, 2, 30, 62).withOpacity(0.89),
          type: BottomNavigationBarType.fixed,
          currentIndex: controller.selectedIndex.value,
          selectedItemColor: const Color.fromARGB(255, 219, 158, 4),
          unselectedItemColor: Colors.white,
          onTap: (index) {
            // Update the selectedIndex in the controller to switch tabs
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
        );
      }),
    );
  }
}

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    final HomeController controller = Get.put(HomeController());
    final TransactionController transactionController =
        Get.put(TransactionController());
    final BalanceController balanceController = Get.put(BalanceController());

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 2, 30, 62).withOpacity(0.89),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 2, 30, 62).withOpacity(0.88),
        centerTitle: true,
        title: const Text(
          'WELCOME',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.align_horizontal_left_outlined),
            onPressed: () {
              Get.to(WalletScreen());
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Centering the Available Balance section
            const Center(
              child: Column(
                children: [
                  Text(
                    'Available Balance',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(255, 219, 150, 13),
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    '\$100000',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            // Balance Section
            const SizedBox(height: 20),
            Obx(
              () {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircularPercentIndicator(
                      radius: 40.0,
                      lineWidth: 10.0,
                      percent: balanceController.percentages[0] / 100,
                      center: Text(
                        "${balanceController.percentages[0]}%",
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      progressColor: Colors.purpleAccent,
                      backgroundColor: const Color(0xFF141326),
                    ),
                    CircularPercentIndicator(
                      radius: 40.0,
                      lineWidth: 10.0,
                      percent: balanceController.percentages[1] / 100,
                      center: Text(
                        "${balanceController.percentages[1]}%",
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      progressColor: Colors.cyanAccent,
                      backgroundColor: const Color(0xFF141326),
                    ),
                    CircularPercentIndicator(
                      radius: 40.0,
                      lineWidth: 10.0,
                      percent: balanceController.percentages[2] / 100,
                      center: Text(
                        "${balanceController.percentages[2]}%",
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      progressColor: Colors.orangeAccent,
                      backgroundColor: const Color(0xFF141326),
                    ),
                  ],
                );
              },
            ),
            const SizedBox(height: 30),
            const Text(
              'Transactions',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Stack(
                children: [
                  // White Blur Background Box
                  Positioned.fill(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Container(
                          color: Colors.white.withOpacity(0.2),
                        ),
                      ),
                    ),
                  ),
                  // Transaction List
                  Obx(() {
                    return ListView.builder(
                      itemCount: transactionController.transactions.length,
                      itemBuilder: (context, index) {
                        final transaction =
                            transactionController.transactions[index];
                        return Card(
                          color: const Color(0xFF141326).withOpacity(0.9),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundColor: transaction.backgroundColor,
                              child: Image.asset(
                                transaction.logo,
                                height: 28,
                                width: 28,
                              ),
                            ),
                            title: Text(
                              transaction.title,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: Text(
                              transaction.date,
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                            ),
                            trailing: Text(
                              '${transaction.amount}',
                              style: TextStyle(
                                color: transaction.amount < 0
                                    ? Colors.red
                                    : Colors.green,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
