// // import 'package:expense_tracker/Controller/WalletController.dart';
// // import 'package:expense_tracker/Widget/CardWidget.dart';
// // import 'package:flutter/material.dart';
// // import 'package:get/get.dart';

// // class Walletscreen extends StatelessWidget {
// //   final WalletController walletController = Get.put(WalletController());
// //    Walletscreen({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         backgroundColor: Colors.transparent,
// //         elevation: 0,
// //         title: const Text('Wallet'),
// //         centerTitle: true,
// //       ),
// //       body: Column(
// //         crossAxisAlignment: CrossAxisAlignment.center,
// //         children: [
// //           Expanded(
// //             child: PageView.builder(
// //               itemCount: WalletController.cards.length,
// //               onPageChanged: (index) {
// //                 WalletController.updateCurrentCard(index);
// //               },
// //               itemBuilder: (context, index) {
// //                 return CardWidget(card: WalletController.cards[index]);
// //               },
// //             ),
// //           ),
// //           Obx(
// //             () => Text(
// //               '₹${WalletController.balance}',
// //               style: TextStyle(fontSize: 24, color: Colors.white),
// //             ),
// //           ),
// //           Text(
// //             'Available Balance',
// //             style: TextStyle(
// //               color: Colors.white,
// //             ),
// //           ),
// //           SizedBox(height: 16),
// //         ],
// //       ),
// //     );
// //   }
// // }

// import 'dart:ui';

// import 'package:expense_tracker/Controller/WalletController.dart';
// import 'package:expense_tracker/Widget/CreditCardWidget.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';

// class Walletscreen extends StatelessWidget {
//   final WalletController walletController = Get.put(WalletController());

//   Walletscreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         title: const Text('Wallet'),
//         centerTitle: true,
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Expanded(
//             child: PageView.builder(
//               itemCount: walletController.cards.length, // Access through instance
//               onPageChanged: (index) {
//                 walletController.updateCurrentCard(index);
//               },
//               itemBuilder: (context, index) {
//                 return CardWidget(card: walletController.cards[index]); // Access through instance
//               },
//             ),
//           ),
//           Obx(
//             () => Text(
//               '₹${walletController.balance}', // Access through instance
//               style: TextStyle(fontSize: 24, color: Colors.white),
//             ),
//           ),
//           Text(
//             'Available Balance',
//             style: TextStyle(
//               color: Colors.white,
//             ),
//           ),
//           SizedBox(height: 16),
//         ],
//       ),
//     );
//   }
// }

// wallet_screen.dart

import 'package:expense_tracker/Controller/WalletController.dart';
import 'package:expense_tracker/Widget/CreditCardWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'wallet_controller.dart';
import 'credit_card_widget.dart';

class WalletScreen extends StatelessWidget {
  final WalletController walletController = Get.put(WalletController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 6, 16, 22),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 6, 16, 22),
        elevation: 0,
        title: const Text('Wallet'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 250,
              child: Obx(
                () => PageView.builder(
                  itemCount: walletController.cards.length,
                  itemBuilder: (context, index) {
                    final card = walletController.cards[index];
                    return CreditCardWidget(
                      cardNumber: card.cardNumber,
                      cardHolderName: card.cardHolderName,
                      expiryDate: card.expiryDate,
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: Obx(() {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    walletController.cards.length,
                    (index) => Container(
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      width: 8,
                      height: 8,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                    ),
                  ),
                );
              }),
            ),
            const SizedBox(height: 32),
            const Center(
              child: Column(
                children: [
                  Text(
                    '₹1,05,284',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Available Balance',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFF2A2A2A),
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Row(
                children: [
                  Icon(Icons.add, color: Colors.yellow),
                  SizedBox(width: 8),
                  Text(
                    'Add your credit / debit card',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
