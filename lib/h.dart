import 'package:ecom/all.dart';
import 'package:ecom/fav.dart';
import 'package:flutter/material.dart';

class h extends StatefulWidget {
  const h({super.key});

  @override
  State<h> createState() => _hState();
}

class _hState extends State<h> {
  int bottomindex = 0;
  List<Widget> Pages = [
    all(),
    fav(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          body: Pages[bottomindex],
          appBar: AppBar(
              leading: (Icon(
                Icons.abc_sharp,
                color: (Colors.black),
              )),
              title: Text("Shopping"),
              titleTextStyle: TextStyle(
                color: (Colors.black),
                fontWeight: FontWeight.bold,
              ),
              bottom: TabBar(
                onTap: (index) {
                  setState(() {
                    bottomindex = index;
                  });
                },
                tabs: [
                  Tab(
                    text: "All Items",
                    icon: Icon(Icons.all_inbox),
                  ),
                  Tab(
                    text: "Favorite",
                    icon: Icon(Icons.favorite),
                  )
                ],
              )),
        ));
  }
}
