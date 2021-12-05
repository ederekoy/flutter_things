import 'package:flutter/material.dart';
import 'package:guess_the_number/game_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Guess Number'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Spacer(
              flex: 30,
            ),
            const Text(
              "Guess number between 1 to 100.",
              style: TextStyle(fontSize: 20),
            ),
            const Spacer(
              flex: 5,
            ),
            const Icon(
              Icons.android,
              color: Colors.green,
              size: 100.0,
            ),
            const Spacer(
              flex: 5,
            ),
            ElevatedButton(
              child: const Text("Start!"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const GamePage()),
                );
              },
            ),
            const Spacer(
              flex: 40,
            ),
          ],
        ),
      ),
    );
  }
}
