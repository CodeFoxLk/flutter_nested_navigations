import 'package:flutter/material.dart';
import 'package:flutter_nested_navigation/examples/routemaster/pages/search_page.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';

GlobalKey<NavigatorState> mainNavKey = GlobalKey<NavigatorState>();

class SimplNavApp extends StatelessWidget {
  const SimplNavApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: mainNavKey,
      themeMode: ThemeMode.dark,
      theme: ThemeData.dark(),
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(builder: (context) {
          late Widget page ;
          if(settings.name ==  LoginPage.routeName) {
            return const LoginPage();
          } else if(settings.name ==   SearchPage.routeName) {
            return const SearchPage();
          } else {
            return const HomePage();
          }
        });
      },
    );
  }
}
