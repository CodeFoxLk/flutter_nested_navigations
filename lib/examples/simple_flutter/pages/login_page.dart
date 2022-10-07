import 'package:flutter/material.dart';
import 'package:flutter_nested_navigation/examples/simple_flutter/pages/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Simnpl flutter Login Page")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Login"),
          const Padding(
            padding: EdgeInsets.all(30.0),
            child: TextField(
              decoration: InputDecoration(hintText: "User Name"),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(HomePage.route);
              },
              child: const Text("Login"))
        ],
      ),
    );
  }
}
