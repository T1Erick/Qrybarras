import 'package:flutter/material.dart';

class FoundPage extends StatefulWidget {
  String usu;
  FoundPage(this.usu);

  @override
  State<FoundPage> createState() => _FoundPageState();
}

class _FoundPageState extends State<FoundPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [Text('$this.usu')],
    ));
  }
}
