import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

class StoreDetailsPage extends StatelessWidget {
  const StoreDetailsPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  Text("Store Name - ${RouteData.of(context).pathParameters['id']!}")),
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
