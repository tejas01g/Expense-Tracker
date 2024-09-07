import 'package:expense_tracker/Controller/WalletController.dart';
import 'package:expense_tracker/Widget/CreditCardWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WalletScreen extends StatelessWidget {
  final WalletController walletController = Get.put(WalletController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 2, 30, 62).withOpacity(0.89),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 2, 30, 62).withOpacity(0.89),
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.white, //change your icon theme
        ),
        title: const Text(
          'Wallet',
          style: TextStyle(color: Colors.white),
        ),
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
