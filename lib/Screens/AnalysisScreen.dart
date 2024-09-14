import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Controller for managing the state of the analysis screen
class AnalysisController extends GetxController {
  var selectedTimeframe = 'Daily'.obs; // Tracks selected timeframe
  var totalExpense = 18687.obs; // Tracks total expense
  var income = 995.obs; // Tracks income
}

class AnalysisScreen extends StatelessWidget {
  final AnalysisController controller =
      Get.put(AnalysisController()); // Instantiating the controller

  AnalysisScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 2, 30, 62).withOpacity(0.89),
      appBar: _buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTabRow(),
            const SizedBox(height: 20),
            _buildTimeframeToggle(),
            const SizedBox(height: 20),
            _buildTotalExpense(),
            const SizedBox(height: 20),
            _buildIncomeExpenseToggle(),
            const SizedBox(height: 20),
            _buildGraphSection(),
            const SizedBox(height: 20),
            _buildAddButton(),
          ],
        ),
      ),
    );
  }

  // AppBar with title and menu icon
  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 2, 30, 62).withOpacity(0.89),
      title: const Text('Insight', style: TextStyle(color: Colors.white)),
      actions: [
        IconButton(
          icon: const Icon(Icons.more_vert, color: Colors.white),
          onPressed: () {
            // Add functionality for more options
          },
        ),
      ],
    );
  }

  // Top Tab Row (Statistics and Savings Plan)
  Widget _buildTabRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildTab('Statistics', true),
        _buildTab('Savings plan', false),
      ],
    );
  }

  // Timeframe Toggle (Daily, Monthly, Yearly)
  Widget _buildTimeframeToggle() {
    return Obx(() => Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildTimeframeButton(
                'Daily', controller.selectedTimeframe.value == 'Daily'),
            _buildTimeframeButton(
                'Monthly', controller.selectedTimeframe.value == 'Monthly'),
            _buildTimeframeButton(
                'Yearly', controller.selectedTimeframe.value == 'Yearly'),
          ],
        ));
  }

  // Total Expense Display
  Widget _buildTotalExpense() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Total Expense',
          style: TextStyle(
              color: Colors.yellow, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Obx(() => Text(
              '₹${controller.totalExpense.value}',
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
            )),
      ],
    );
  }

  // Income and Expense Toggle
  Widget _buildIncomeExpenseToggle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildTab('Income', true),
        _buildTab('Expense', false),
      ],
    );
  }

  // Graph Section (Placeholder for now)
  Widget _buildGraphSection() {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
            colors: [Colors.orange, Colors.yellow],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Stack(
          children: [
            const Center(
              child: Text(
                'Graph Placeholder',
                style: TextStyle(color: Colors.black45, fontSize: 16),
              ),
            ),
            // Example data point overlay
            Positioned(
              left: 50,
              top: 80,
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Obx(() => Text(
                      '-₹${controller.income.value}',
                      style: const TextStyle(color: Colors.white),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Floating Add Button
  Widget _buildAddButton() {
    return Align(
      alignment: Alignment.bottomRight,
      child: FloatingActionButton(
        onPressed: () {
          // Add functionality for adding data
        },
        backgroundColor: Colors.orange,
        child: const Icon(Icons.add),
      ),
    );
  }

  // Reusable Widget for Tab Items (e.g., Statistics, Savings Plan)
  Widget _buildTab(String title, bool selected) {
    return Text(
      title,
      style: TextStyle(
        color: selected ? Colors.yellow : Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  // Reusable Widget for Timeframe Buttons (Daily, Monthly, Yearly)
  Widget _buildTimeframeButton(String title, bool selected) {
    return GestureDetector(
      onTap: () {
        controller.selectedTimeframe.value = title;
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: selected ? Colors.orange : Colors.red,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
