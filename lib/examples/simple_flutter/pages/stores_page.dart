import 'package:flutter/material.dart';
import 'package:flutter_nested_navigation/examples/simple_flutter/pages/store_details_page.dart';


class StoreList extends StatelessWidget {
  const StoreList({Key? key}) : super(key: key);
   static const route = '/storelist';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Stores")),
      body: ListView.separated(
        padding:  const EdgeInsets.all(30),
          itemBuilder :(context, index) =>  ListTile(
            leading: const FlutterLogo(),
            title:  Text("Store Name $index"),
            onTap: (){
                Navigator.of(context).pushNamed(StoreDetailsPage.route);
            },
          ),
          separatorBuilder :(context, index) => const SizedBox(
            height: 10,
          ),
          itemCount: 50),
    );
  }
}