import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

import 'pages/home_page.dart';
import 'pages/login_page.dart';
import 'pages/product_list_page.dart';
import 'pages/store_details_page.dart';
import 'pages/stores_page.dart';

// void main() {
//   runApp(const MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      themeMode: ThemeMode.dark,
      theme: ThemeData.dark(),
      routerDelegate: routemasterDelegate,
      routeInformationParser: const RoutemasterParser(),
    );
  }
}

var routemasterDelegate = RoutemasterDelegate(
  routesBuilder: (context) => RouteMap(
    routes: {
      '/': (_) => const MaterialPage(child: LoginPage()),
      '/home': (_) => const TabPage(
            child: HomePage(),
            paths: ['productlist', 'storesPage'],
          ),
      
      '/home/productlist': (_) => const MaterialPage(child: ProductListPage()),
      '/home/storesPage': (_) => const MaterialPage(child: StoresListPage()),
      '/home/storesPage/storedetails/:id': (_) => const MaterialPage(child: StoreDetailsPage()),
    },
  ),
);
