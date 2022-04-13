import 'package:flutter/material.dart';

import 'InitialPages/SplashPage.dart';

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
      home: const MyHomePage(title: 'All About VW Villiage'),
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
    return MaterialApp(
      title: widget.title,
      theme: ThemeData(
        primaryColor: Colors.blueGrey,
      ),
      initialRoute: SplashPage.routeName,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          // case HomePage.routeName:
          //   {
          //     return MaterialPageRoute(builder: (context) {
          //       return HomePage(
          //         CarList: settings.arguments,
          //       );
          //     });
          //   }
          default:
            {
              return MaterialPageRoute(builder: (context) {
                return SplashPage();
              });
            }
        }
      },
    );
  }
}
