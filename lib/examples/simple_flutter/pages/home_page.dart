import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'product_details_page.dart';
import 'product_list_page.dart';
import 'store_details_page.dart';
import 'stores_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const route = '/home';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

   final List<GlobalKey<NavigatorState>> _navigatorKeys = [
    _productNavKey,
    _storesNav,
  ];

  Future<bool> _systemBackButtonPressed() {
    if (_navigatorKeys[_selectedIndex].currentState!.canPop()) {
      _navigatorKeys[_selectedIndex] .currentState!.pop(_navigatorKeys[_selectedIndex].currentContext);
        return Future.value(false);
    } else {
       Navigator.pop(context); // main navigator
        return Future.value(true);
    }
   }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _systemBackButtonPressed,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Home Page"),
        ),
        bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.book),
                label: 'products',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.free_breakfast),
                label: 'Stores',
              )
            ],
            currentIndex: _selectedIndex,
            onTap: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            }),
        body: SafeArea(
          top: false,
          child: IndexedStack(
            index: _selectedIndex,
            children: const <Widget>[
              _ProductsNav(),
              _ShopNav(),
            ],
          ),
        ),
      ),
    );
  }
}

 GlobalKey<NavigatorState> _productNavKey = GlobalKey<NavigatorState>();
 GlobalKey<NavigatorState> _storesNav = GlobalKey<NavigatorState>();


class _ProductsNav extends StatelessWidget {
  const _ProductsNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: _productNavKey,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            settings: settings,
            builder: (BuildContext context) {
              switch (settings.name) {
                case ProductDetailsPage.route:
                  return const ProductDetailsPage();
                default:
                  return const ProductListPage();
              }
            });
      },
    );
  }
}



class _ShopNav extends StatelessWidget {
  const _ShopNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: _storesNav,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            settings: settings,
            builder: (BuildContext context) {
              switch (settings.name) {
                case StoreDetailsPage.route:
                  return const StoreDetailsPage();
                default:
                  return const StoreList();
              }
            });
      },
    );
  }
}
