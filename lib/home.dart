import 'package:ecom/h.dart';
import 'package:ecom/o.dart';
import 'package:ecom/p.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int bottomindex = 0;
  List<Widget> Pages = [
    h(),
    o(),
    p(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Pages[bottomindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bottomindex,
        onTap: (index) {
          setState(() {
            bottomindex = index;
          });
        },
        items: [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: "Orders", icon: Icon(Icons.wallet)),
          BottomNavigationBarItem(label: "Profile", icon: Icon(Icons.person))
        ],
      ),
    );
  }
}
