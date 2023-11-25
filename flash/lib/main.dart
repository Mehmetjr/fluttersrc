import 'package:flash/flash_lite.dart';
import 'package:flutter/material.dart';
import 'package:torch_controller/torch_controller.dart';

void main() {
  TorchController().initialize();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FlashLite',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FlashLite(),
    );
  }
}
