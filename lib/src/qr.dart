import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrPage extends StatefulWidget {
  const QrPage({super.key});

  @override
  State<QrPage> createState() => _QrPageState();
}

class _QrPageState extends State<QrPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
               
              child: QrImageView(
                 data:
                   'Este es un codigo hermoso amo programar y no me quiero tirar de un puente es mentira  :(',
                  version: QrVersions.auto,
                  size: 320,
                  gapless: false,
          ),

            
          ),
          Divider(
                height: 40.0,
              ),
           Center(
             child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/generador');
                },
                child: Text('Vuelve a casa')),
           ),
        ],
      ),
    );
  }
}