import 'package:flutter/material.dart';

class GoProductDetailsPage extends StatelessWidget {
  const GoProductDetailsPage({super.key, required this.productId});

  final String productId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product Name $productId")),
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
