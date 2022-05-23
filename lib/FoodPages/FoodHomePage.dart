import 'package:all_about_vw_village/FoodPages/AroundRestaurants/FoodCategorySelectionPage.dart';
import 'package:flutter/material.dart';

import 'AroundRestaurants/RestaurantGoogleMapPage.dart';

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
              onPressed: () {},
              child: Text("Weekly menu of company cafeteria"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FoodCategorySelectionPage()),
                );
              },
              child: Text(
                  "Restaurants around companies\n(Menu, location, cost, reputation and so on)"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Random menu recommendation "),
            ),
          ],
        ),
      ),
    );
  }
}
