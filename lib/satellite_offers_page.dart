import 'package:app/satellite_offer_details_page.dart';
import 'package:flutter/material.dart';


class SatelliteOffersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Satellite Offers'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          OfferItem(name: 'Basic Satellite', price: 39.99),
          OfferItem(name: 'Premium Satellite', price: 59.99),
          OfferItem(name: 'Ultra Satellite', price: 79.99),
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
        // Navigate to SatelliteOfferDetailsPage
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SatelliteOfferDetailsPage(name: name, price: price),
          ),
        );
      },
    );
  }
}
