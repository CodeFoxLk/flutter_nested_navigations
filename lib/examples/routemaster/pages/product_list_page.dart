import 'package:flutter/material.dart';

class ProductListPage extends StatefulWidget {
  const ProductListPage({super.key});

  @override
  State<ProductListPage> createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> with AutomaticKeepAliveClientMixin{
  //static const routeName = '/productlist';
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(title: const Text("Product List")),
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
  
  @override
  bool get wantKeepAlive => true;
}
