import 'package:flutter/material.dart';

class InternetOfferDetailsPage extends StatefulWidget {
  final String name;
  final double price;

  InternetOfferDetailsPage({required this.name, required this.price});

  @override
  _InternetOfferDetailsPageState createState() => _InternetOfferDetailsPageState();
}

class _InternetOfferDetailsPageState extends State<InternetOfferDetailsPage> {
  bool applyDiscount = false;
  double discountedPrice = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Offer Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Internet Offer: ${widget.name}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('Original Price: \$${widget.price.toStringAsFixed(2)}'),
            SizedBox(height: 10),
            CheckboxListTile(
              title: Text('Orphan'),
              controlAffinity: ListTileControlAffinity.leading,
              value: applyDiscount,
              onChanged: (bool? value) {
                setState(() {
                  applyDiscount = value ?? false;
                  calculateDiscount();
                });
              },
            ),
            SizedBox(height: 10),
            Text(
              'Discounted Price: \$${discountedPrice.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  void calculateDiscount() {
    if (applyDiscount) {
      // Apply 50% discount
      discountedPrice = widget.price * 0.5;
    } else {
      // No discount
      discountedPrice = widget.price;
    }
  }
}
