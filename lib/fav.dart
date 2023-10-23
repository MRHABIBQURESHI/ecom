import 'package:ecom/data.dart';
import 'package:ecom/models/models.dart';
import 'package:flutter/material.dart';

class fav extends StatefulWidget {
  const fav({super.key});

  @override
  State<fav> createState() => _favState();
}

class _favState extends State<fav> {
  @override
  Widget build(BuildContext context) {
    List<items> favorite = [];
    favorite = item.where((e) => e.IsFav).toList();
    return ListView.builder(
        itemCount: favorite.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(item[index].Name),
          );
        });
  }
}
