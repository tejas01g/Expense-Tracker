import 'dart:ui';

import 'package:expense_tracker/Controller/TransactionModel.dart';
import 'package:get/get.dart';

class TransactionController extends GetxController {
  var transactions = <TransactionModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchTransactions();
  }

  void fetchTransactions() {
    var transactionList = [
      TransactionModel(
        title: "Shell",
        date: "Sep 02, 2022",
        amount: -45,
        logo: "assets/shell_logo.png",
        backgroundColor: const Color(0xFFFFF0EB),
      ),
      TransactionModel(
        title: "SM Supermart",
        date: "Sep 01, 2022",
        amount: -235,
        logo: "assets/supermart_logo.png",
        backgroundColor: const Color(0xFFEBEBFF),
      ),
      TransactionModel(
        title: "PinelabsPOS",
        date: "Aug 31, 2022",
        amount: -164,
        logo: "assets/pinelabs_logo.png",
        backgroundColor: const Color(0xFFE6FFF2),
      ),
      TransactionModel(
        title: "AMAZON",
        date: "Aug 31, 2022",
        amount: -89,
        logo: "assets/amazon_logo.png",
        backgroundColor: const Color(0xFFFFF4E5),
      ),
    ];
    transactions.addAll(transactionList);
  }
}
