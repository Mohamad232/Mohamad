import 'package:flutter/material.dart';

class ElectricityCalculationPage extends StatelessWidget {
  final double kw;
  final double rate;
  final double bill;

  ElectricityCalculationPage({required this.kw, required this.rate, required this.bill});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Electricity Calculation'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Electricity Bill Calculation',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('Consumed KW: ${kw.toStringAsFixed(2)}'),
            SizedBox(height: 10),
            Text('Rate per KW: \$${rate.toStringAsFixed(2)}'),
            SizedBox(height: 10),
            Text('Total Bill: \$${bill.toStringAsFixed(2)}', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
