import 'package:all_about_vw_village/FoodPages/AroundRestaurants/RestaurantListPage.dart';
import 'package:flutter/material.dart';

class FoodCategorySelectionPage extends StatefulWidget {
  const FoodCategorySelectionPage({Key? key}) : super(key: key);

  @override
  State<FoodCategorySelectionPage> createState() =>
      _FoodCategorySelectionPageState();
}

class _FoodCategorySelectionPageState extends State<FoodCategorySelectionPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final FirstRowWidth = size.width / 3;
    final RowHeight = size.height / 3;
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RestaurantListPage()),
                  );
                },
                child: Container(
                  width: FirstRowWidth,
                  height: RowHeight,
                  color: Colors.cyan,
                  child: Center(child: Text("한식")),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RestaurantListPage()),
                  );
                },
                child: Container(
                  width: FirstRowWidth,
                  height: RowHeight,
                  color: Colors.green,
                  child: Center(child: Text("중식")),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RestaurantListPage()),
                  );
                },
                child: Container(
                  width: FirstRowWidth,
                  height: RowHeight,
                  color: Colors.cyan,
                  child: Center(child: Text("양식")),
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RestaurantListPage()),
              );
            },
            child: Container(
              width: size.width,
              height: RowHeight,
              color: Colors.blue,
              child: Center(child: Text("모두 다")),
            ),
          ),
        ],
      ),
    );
  }
}
