import 'package:flutter/material.dart';

import '../tab/burger_tab.dart';
import '../tab/donut_tab.dart';
import '../tab/pancake_tab.dart';
import '../tab/pizza_tab.dart';
import '../tab/smoothie_tab.dart';
import '../utils/my_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = const [
    MyTab(
      iconPath: 'assets/icons/donut.png',
    ),
    MyTab(
      iconPath: 'assets/icons/burger.png',
    ),
    MyTab(
      iconPath: 'assets/icons/smoothie.png',
    ),
    MyTab(
      iconPath: 'assets/icons/pancakes.png',
    ),
    MyTab(
      iconPath: 'assets/icons/pizza.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.menu,
                  color: Colors.grey[800],
                  size: 36,
                ),
              )),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.person,
                  color: Colors.grey[800],
                  size: 36,
                ),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 36.0, vertical: 18.0),
              child: Row(
                children: [
                  Text(
                    'I want to',
                    style: TextStyle(fontSize: 24),
                  ),
                  SizedBox(width: 5),
                  Text(
                    'EAT',
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            TabBar(tabs: myTabs),
            Expanded(
              child: TabBarView(children: [
                DonutTab(),
                BurgerTab(),
                SmoothieTab(),
                PancakeTab(),
                PizzaTab(),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
