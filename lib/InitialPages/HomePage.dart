import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(.60),

        currentIndex: _selectedIndex,
        //현재 선택된 Index
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: "About Company",
            icon: Icon(Icons.apartment),
          ),
          BottomNavigationBarItem(
            label: "Food",
            icon: Icon(Icons.restaurant),
          ),
          BottomNavigationBarItem(
            label: "Accomodation",
            icon: Icon(Icons.hotel),
          ),
          BottomNavigationBarItem(
            label: "Where to go",
            icon: Icon(Icons.emoji_people),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {},
              child: Text("Food"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Hotel"),
            ),
          ],
        ),
      ),
    );
  }
}
