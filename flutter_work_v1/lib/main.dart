import 'package:flutter/material.dart';
import 'neuButton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Neumorphism Button'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isElevated = false;
  int neuBtnDurationMS = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Neumorphism Button"),
      ),
      backgroundColor: Colors.grey[300],
      body: Center(
        child: GestureDetector(
          child: NeuButton(
              isElevated: _isElevated,
              btnDrtn: neuBtnDurationMS,
              btnHeight: 250,
              btnWidth: 250),
          onTap: (() {
            setState(() {
              _isElevated = !_isElevated;
            });
          }),
        ),
      ),
    );
  }
}
