
import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';



class BarrasPage extends StatefulWidget {
  const BarrasPage({super.key});

  @override
  State<BarrasPage> createState() => _BarrasPageState();
}

class _BarrasPageState extends State<BarrasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
  
        children: [

          Center(
            child: Container(      
              width: 300.0,
              height: 60.0,
              child: BarcodeWidget(
               barcode: Barcode.code128(),
              data: 'Hola mundooooo soy normalito',),
            ),
          ),
          Divider(
                height: 40.0,
              ),
          
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/generador');
              },
              child: Text('Vuelve a casa')),
        ],
      ),
    );
  }
}