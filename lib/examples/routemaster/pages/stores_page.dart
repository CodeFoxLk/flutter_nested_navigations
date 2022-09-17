import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

class StoresListPage extends StatefulWidget {
  const StoresListPage({super.key});

  @override
  State<StoresListPage> createState() => _StoresListPageState();
}

class _StoresListPageState extends State<StoresListPage> with AutomaticKeepAliveClientMixin{
  //static const routeName = '/home/storesPage';
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(title: const Text("Stores")),
      body: ListView.separated(
        padding:  const EdgeInsets.all(30),
          itemBuilder :(context, index) =>  ListTile(
            leading: const FlutterLogo(),
            title:  Text("Store Name $index"),
            onTap: (){
              Routemaster.of(context).push('/home/storesPage/storedetails/$index');
            },
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
