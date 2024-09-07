// wallet_controller.dart

import 'package:expense_tracker/Model/card_model.dart';
import 'package:get/get.dart';
import 'card_model.dart';

class WalletController extends GetxController {
  var cards = <CardModel>[
    CardModel(
      cardNumber: '1234 5678 9012 3456',
      cardHolderName: 'CHANDRAMA SAHA',
      expiryDate: '09/24',
    ),
    CardModel(
      cardNumber: '9876 5432 1098 7654',
      cardHolderName: 'JOHN DOE',
      expiryDate: '12/25',
    ),
  ].obs; // Observable list of cards

  // Add more functions if needed to add/remove cards
}
