import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text("Login Page")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Login"),
          const Padding(
            padding: EdgeInsets.all(30.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "User Name"
              ),
            ),
          ),
          ElevatedButton(onPressed: (){
             Routemaster.of(context).push('/home');
          }, child: const Text("Login"))
        ],
      ),
    );
  }
}