import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GoLoginPage extends StatelessWidget {
  const GoLoginPage({super.key});

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login Page")),
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
                context.goNamed('product_list',
                    queryParams: <String, String>{'acd': 'true'},
                    params: <String, String>{'category': 'mobiles'});
              },
              child: const Text("Login"))
        ],
      ),
    );
  }
}
