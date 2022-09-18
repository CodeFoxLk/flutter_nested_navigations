import 'package:flutter/material.dart';
import 'package:flutter_nested_navigation/examples/routemaster/pages/search_page.dart';
import 'package:flutter_nested_navigation/examples/simple_flutter/app.dart';


class ProductListPage extends StatelessWidget {
  const ProductListPage({Key? key}) : super(key: key);
  static const route = '/product_list';
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(title: const Text("Product List"), actions: [IconButton(onPressed: (){
        mainNavKey.currentState!.pushNamed(SearchPage.routeName);
      }, icon: const Icon(Icons.search))],),
      body: ListView.separated(
        padding: const EdgeInsets.all(30),
          itemBuilder :(context, index) =>  ListTile(
            leading: const FlutterLogo(),
            title: Text("Product Name $index"),
          ),
          separatorBuilder :(context, index) => const SizedBox(
            height: 10,
          ),
          itemCount: 50),
    );
  }
}