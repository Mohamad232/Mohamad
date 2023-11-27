import 'package:flutter/material.dart';


class ResultPage extends StatelessWidget {
  final double bill;

  ResultPage({required this.bill});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bill Result'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Your bill is \$${bill.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Navigate back to the input page
              },
              child: Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}