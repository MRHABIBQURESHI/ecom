import 'package:flutter/material.dart';

class p extends StatefulWidget {
  const p({super.key});

  @override
  State<p> createState() => _pState();
}

class _pState extends State<p> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Profile"),
      ),
    );
  }
}
