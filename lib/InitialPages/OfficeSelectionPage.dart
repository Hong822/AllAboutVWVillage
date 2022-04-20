import 'package:flutter/material.dart';

import '../FoodPages/FoodHomePage.dart';
// import 'HomePage.dart';

class OfficeSelectionPage extends StatefulWidget {
  const OfficeSelectionPage({Key? key}) : super(key: key);

  @override
  State<OfficeSelectionPage> createState() => _OfficeSelectionPageState();
}

class _OfficeSelectionPageState extends State<OfficeSelectionPage> {
  var _OfficeList = ["Korea", "Germany", "China"];
  var _SelectedOffice;

  @override
  void initState() {
    super.initState();
    _SelectedOffice = _OfficeList[0];
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            DropdownButton(
              isExpanded: true,
              value: _SelectedOffice,
              items: _OfficeList.map((value) {
                return DropdownMenuItem(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _SelectedOffice = value;
                });
              },
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      // MaterialPageRoute(builder: (context) => HomePage()),
                      MaterialPageRoute(builder: (context) => FoodHomePage()),
                    );
                  },
                  child: Text("Start Travel!"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
