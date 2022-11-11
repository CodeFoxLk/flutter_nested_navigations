import 'package:flutter/material.dart';
import 'package:flutter_nested_navigation/examples/go_router/router/routes.dart';

class GoApp extends StatelessWidget {
  const GoApp({super.key});

  @override
  Widget build(BuildContext context) {
  AppRouter appRouter = AppRouter();
    return  MaterialApp.router(
      routerConfig: appRouter.router,
      
    );
  }
}
