import 'package:flutter/material.dart';

class StoreDetailsPage extends StatelessWidget {
  const StoreDetailsPage({super.key});
  static const route = '/storedetailspage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  const Text("Store Name")),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            SizedBox(height: 200, width: 200, child: FlutterLogo()),
            Text("Description")
          ],
        ),
      ),
    );
  }
}
