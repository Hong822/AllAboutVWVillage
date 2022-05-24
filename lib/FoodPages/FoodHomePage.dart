import 'package:flutter/material.dart';

import 'AroundRestaurantPage.dart';
import 'SecondTest/SecondTest.dart';
import 'TestPage/TestScreen.dart';

class FoodHomePage extends StatelessWidget {
  const FoodHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TestScreenPage()),
                );
              },
              child: Text("Weekly menu of company cafeteria"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AroundRestaurantPage()),
                );
              },
              child: Text(
                  "Restaurants around companies\n(Menu, location, cost, reputation and so on)"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondTestPage()),
                );
              },
              child: Text("Random menu recommendation "),
            ),
          ],
        ),
      ),
    );
  }
}
