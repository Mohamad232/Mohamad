import 'package:flutter/material.dart';
import 'internet_offer_details_page.dart';

class InternetOffersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Internet Offers'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          OfferItem(name: 'Basic Internet', price: 29.99),
          OfferItem(name: 'High Speed Internet', price: 49.99),
          OfferItem(name: 'Premium Internet', price: 69.99),
          // Add more offer items as needed
        ],
      ),
    );
  }
}

class OfferItem extends StatelessWidget {
  final String name;
  final double price;

  OfferItem({required this.name, required this.price});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name),
      subtitle: Text('\$${price.toStringAsFixed(2)}'),
      onTap: () {
        // Navigate to InternetOfferDetailsPage
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => InternetOfferDetailsPage(name: name, price: price),
          ),
        );
      },
    );
  }
}
