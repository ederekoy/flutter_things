// ignore_for_file: avoid_print, prefer_const_constructors

import 'package:flutter/material.dart';
import 'PageOne.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Life Cycle',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    print("initState() worked.");
    WidgetsBinding.instance!.addObserver(this);
  }

  @override
  void dispose() {
    super.dispose();
    print("dispose() worked.");
    WidgetsBinding.instance!.removeObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.inactive) {
      print("inactive() worked.");
    }
    if (state == AppLifecycleState.paused) {
      print("paused() worked.");
    }
    if (state == AppLifecycleState.resumed) {
      print("resumed() worked.");
    }
    if (state == AppLifecycleState.detached) {
      print("detached() worked.");
    }
  }

  @override
  Widget build(BuildContext context) {
    print("build() çalıştı.");
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Life Cycle'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              child: Text("Click"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PageOne()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
