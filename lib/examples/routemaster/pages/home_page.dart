import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final tabPage = TabPage.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        bottom: TabBar(controller: tabPage.controller, tabs: const [
          Tab(
            icon: Icon(Icons.download),
            text: 'Products',
          ),
          Tab(
            icon: Icon(Icons.store),
            text: 'Products',
          )
        ]),
      ),
      body: Column(
        children: [
          Expanded(
            child: TabBarView(
              controller: tabPage.controller,
              children: [
                for (final stack in tabPage.stacks)
                  PageStackNavigator(stack: stack),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                  child: IconButton(
                      onPressed: () {
                        tabPage.controller.index = 0;
                      },
                      icon: const Icon(Icons.abc))),
              Expanded(
                  child: IconButton(
                      onPressed: () {
                        tabPage.controller.index = 1;
                      },
                      icon: const Icon(Icons.ac_unit_sharp))),
              //Expanded(child: IconButton(onPressed: (){}, icon: const Icon(Icons.airline_seat_flat_rounded)))
            ],
          )
        ],
      ),
    );
  }
}
