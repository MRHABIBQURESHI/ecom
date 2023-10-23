import 'package:ecom/data.dart';
import 'package:flutter/material.dart';

class o extends StatefulWidget {
  const o({super.key});

  @override
  State<o> createState() => _oState();
}

class _oState extends State<o> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
            tabs: [
              Tab(
                text: "Selelcted Items",
                icon: Icon(Icons.done_all),
              ),
              Tab(
                text: "Total",
                icon: Icon(Icons.payment_rounded),
              ),
            ],
          ),
        ),
        body: ListView.builder(
            itemCount: order.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(order[index].Name),
                subtitle: Text(
                    "  Id ${order[index].id} Price : ${order[index].Price} Quanity : ${order[index].Qty}"),
                leading: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(item[index].image),
                ),
              );
            }),
      ),
    );
  }
}
