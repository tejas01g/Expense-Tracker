import 'dart:ui';

class TransactionModel {
  final String title;
  final String date;
  final double amount;
  final String logo;
  final Color backgroundColor;

  TransactionModel({
    required this.title,
    required this.date,
    required this.amount,
    required this.logo,
    required this.backgroundColor,
  });
}
