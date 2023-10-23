// import 'package:ecom/fav.dart';
import 'package:ecom/data.dart';
import 'package:ecom/models/models.dart';
import 'package:flutter/material.dart';

class all extends StatefulWidget {
  const all({super.key});

  @override
  State<all> createState() => _allState();
}

class _allState extends State<all> {
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: item.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(item[index].image),
            ),
            title: Text(item[index].Name),
            subtitle: Text(
                "Price : ${item[index].Price}  ||   Quantity : ${item[index].Qty}"),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                    onPressed: () {
                      bool isadded = false;
                      for (var i = 0; i < order.length; i++) {
                        if (order[i].id == item[index].id) {
                          order[i].Qty += 1;
                          isadded = true;
                          break;
                        }
                      }

                      if (isadded == false) {
                        order.add(
                          items(
                            image: item[index].image,
                            id: item[index].id,
                            Name: item[index].Name,
                            Price: item[index].Price,
                            Qty: 1,
                          ),
                        );
                      }
                    },
                    icon: Icon(Icons.add)),
                IconButton(
                  onPressed: () {
                    setState(() {
                      item[index].IsFav = !(item[index].IsFav);
                    });
                  },
                  icon: Icon(
                    item[index].IsFav ? Icons.favorite : Icons.favorite_border,
                    color: (Colors.red),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        order.removeAt(index);
                      });
                    },
                    icon: Icon(Icons.minimize)),
              ],
            ),
          );
        });
  }
}
