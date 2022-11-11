import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GoRouteProductListPage extends StatefulWidget {
  const GoRouteProductListPage({super.key, this.accending = false});

  static const routeName = 'productlist/:category';
  final bool accending;

  @override
  State<GoRouteProductListPage> createState() => _ProductListPageState();
}

class _ProductListPageState extends State<GoRouteProductListPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product List"),
        actions: [
          IconButton(
              onPressed: () {
                context.goNamed('product_list',
                    queryParams: <String, String>{'acd': 'false'},
                    params: <String, String>{'category': 'mobiles'});
              },
              icon: const Icon(Icons.sort))
        ],
      ),
      body: ListView.separated(
          reverse: widget.accending,
          padding: const EdgeInsets.all(30),
          itemBuilder: (context, index) => ListTile(
                leading: const FlutterLogo(),
                title: Text("Product Name $index"),
                onTap: () {
                  context.go(context.namedLocation('product', params: {'category' : 'mobile', 'id' : 'pid$index'}),
                     );
                },
              ),
          separatorBuilder: (context, index) => const SizedBox(
                height: 10,
              ),
          itemCount: 50),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
