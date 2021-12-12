import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cüzdanım',
      theme: ThemeData(
        brightness: Brightness.light,
        /* light theme settings */
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        /* dark theme settings */
      ),
      themeMode: ThemeMode.system,
      /* ThemeMode.system to follow system theme, 
         ThemeMode.light for light theme, 
         ThemeMode.dark for dark theme
      */
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Cüzdanım'),
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
  final scaffoldKey = GlobalKey<ScaffoldState>();

  Color randomColorizer() {
    return Colors.primaries[Random().nextInt(Colors.primaries.length)];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFF161616),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Text("ANA SAYFA"),
                SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Card(
                        margin: const EdgeInsets.all(5.0),
                        child: InkWell(
                          splashColor: randomColorizer(),
                          onTap: () {
                            debugPrint('Card tapped.');
                          },
                          child: const SizedBox(
                            child: ListTile(
                              leading: Text("₺"),
                              title: Text("DOT"),
                              subtitle: Text("Polkadot"),
                            ),
                          ),
                        ),
                      ),
                      Card(
                        margin: const EdgeInsets.all(5.0),
                        child: InkWell(
                          splashColor: randomColorizer(),
                          onTap: () {
                            debugPrint('Card tapped.');
                          },
                          child: const SizedBox(
                            child: ListTile(
                              leading: Text("₺"),
                              title: Text("DOT"),
                              subtitle: Text("Polkadot"),
                            ),
                          ),
                        ),
                      ),
                      Card(
                        margin: const EdgeInsets.all(5.0),
                        child: InkWell(
                          splashColor: randomColorizer(),
                          onTap: () {
                            debugPrint('Card tapped.');
                          },
                          child: const SizedBox(
                            child: ListTile(
                              leading: Text("₺"),
                              title: Text("DOT"),
                              subtitle: Text("Polkadot"),
                            ),
                          ),
                        ),
                      ),
                      Card(
                        margin: const EdgeInsets.all(5.0),
                        child: InkWell(
                          splashColor: randomColorizer(),
                          onTap: () {
                            debugPrint('Card tapped.');
                          },
                          child: const SizedBox(
                            child: ListTile(
                              leading: Text("₺"),
                              title: Text("DOT"),
                              subtitle: Text("Polkadot"),
                            ),
                          ),
                        ),
                      ),
                      Card(
                        margin: const EdgeInsets.all(5.0),
                        child: InkWell(
                          splashColor: randomColorizer(),
                          onTap: () {
                            debugPrint('Card tapped.');
                          },
                          child: const SizedBox(
                            child: ListTile(
                              leading: Text("₺"),
                              title: Text("DOT"),
                              subtitle: Text("Polkadot"),
                            ),
                          ),
                        ),
                      ),
                      Card(
                        margin: const EdgeInsets.all(5.0),
                        child: InkWell(
                          splashColor: randomColorizer(),
                          onTap: () {
                            debugPrint('Card tapped.');
                          },
                          child: const SizedBox(
                            child: ListTile(
                              leading: Text("₺"),
                              title: Text("DOT"),
                              subtitle: Text("Polkadot"),
                            ),
                          ),
                        ),
                      ),
                      Card(
                        margin: const EdgeInsets.all(5.0),
                        child: InkWell(
                          splashColor: randomColorizer(),
                          onTap: () {
                            debugPrint('Card tapped.');
                          },
                          child: const SizedBox(
                            child: ListTile(
                              leading: Text("₺"),
                              title: Text("DOT"),
                              subtitle: Text("Polkadot"),
                            ),
                          ),
                        ),
                      ),
                      Card(
                        margin: const EdgeInsets.all(5.0),
                        child: InkWell(
                          splashColor: randomColorizer(),
                          onTap: () {
                            debugPrint('Card tapped.');
                          },
                          child: const SizedBox(
                            child: ListTile(
                              leading: Text("₺"),
                              title: Text("DOT"),
                              subtitle: Text("Polkadot"),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )));
  }
}
