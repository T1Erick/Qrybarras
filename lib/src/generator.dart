import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:barcode_widget/barcode_widget.dart';

class Generator extends StatefulWidget {
  const Generator({super.key});

  @override
  State<Generator> createState() => _GeneratorState();
}

class _GeneratorState extends State<Generator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Divider(
                height: 40.0,
              ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/codigo');
              },
              child: Text('Ve a nuestro escanner')),
              Divider(
                height: 40.0,
              ),
              ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/barra');
              },
              child: Text('Ve a nuestro codigo de barras')),
              Divider(
                height: 40.0,
              ),
              ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/qr');
              },
              child: Text('Ve a nuestro Qr ')),
        ],
      ),
    );
  }
}
