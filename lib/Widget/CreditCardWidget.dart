// credit_card_widget.dart

import 'package:flutter/material.dart';

class CreditCardWidget extends StatelessWidget {
  final String cardNumber;
  final String cardHolderName;
  final String expiryDate;

  const CreditCardWidget({
    required this.cardNumber,
    required this.cardHolderName,
    required this.expiryDate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF3D188C), Color(0xFFE3B43C)],
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          children: [
            Positioned(
              left: 16,
              top: 60,
              child: Text(
                cardNumber,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  letterSpacing: 2,
                ),
              ),
            ),
            Positioned(
              left: 16,
              top: 120,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'VALID THRU',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    expiryDate,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 16,
              bottom: 30,
              child: Text(
                cardHolderName,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const Positioned(
              right: 16,
              top: 30,
              child: Icon(
                Icons.wifi,
                color: Colors.white,
                size: 32,
              ),
            ),
            Positioned(
              right: 16,
              bottom: 30,
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.orange,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                    ),
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
