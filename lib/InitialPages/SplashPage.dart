import 'package:flutter/material.dart';

import 'OfficeSelectionPage.dart';

class SplashPage extends StatefulWidget {
  static const routeName = '/';

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void initState() {
    super.initState();
    Loading();
  }

  Loading() async {
    print("loading");

    Future.delayed(
      const Duration(milliseconds: 5000),
      () async {
        print("loading End");
        build(context);
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => OfficeSelectionPage()),
        );
      },
    );
  }

  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DrawWidgetByLoadingState();
  }

  Widget DrawWidgetByLoadingState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage('images/Splash.png'),
          ),
          //CircularProgressIndicator(),
        ],
      ),
    );
  }
}
