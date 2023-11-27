import 'package:flutter/material.dart';
import 'result.dart';
import 'internet.dart';
import 'satellite_offers_page.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController kwController = TextEditingController();
  double rate = 0.28; // Change this to the actual rate per kWh

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Harb Utilities'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Choose a Utility',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Electricity'),
              onTap: () {
                // Handle electricity selection
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              title: Text('Internet'),
              onTap: () {
                // Navigate to InternetOffersPage
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => InternetOffersPage(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Satellite'),
              onTap: () {
                // Navigate to SatelliteOffersPage
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SatelliteOffersPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),


      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: kwController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter KW'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                calculateBill();
              },
              child: Text('Calculate Bill'),
            ),
          ],
        ),
      ),
    );
  }

  void calculateBill() {
    if (kwController.text.isNotEmpty) {
      double kw = double.parse(kwController.text);
      double bill = kw * rate;

      // Navigate to ResultPage with calculated bill
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ResultPage(bill: bill),
        ),
      );
    }
  }

}