import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Staefull Demo",
    home: FavoriteCity(),
  ));
}

class FavoriteCity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FavoriteCityState();
  }
}

class _FavoriteCityState extends State<FavoriteCity> {
  String nameCity = "";

  @override
  Widget build(BuildContext context) {
    debugPrint("Favorite City Widget Created");
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful App Demp"),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextField(
              onSubmitted: (String userInput) {
                setState(() {
                  debugPrint("Set State Called,This tell framwork to redraw FavrateCity Widget");
                  nameCity = userInput;
                });
              },
            ),
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Text(
                "Your best city is $nameCity",
                style: TextStyle(fontSize: 20.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
