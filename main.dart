import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Timur"),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.cyan,
        selectedFontSize: 15,
        items: [
          const BottomNavigationBarItem(
            label: ('Menüler'),
            icon: Icon(Icons.menu),
          ),
          const BottomNavigationBarItem(
            label: ('Arama'),
            icon: Icon(Icons.call),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Icon(Icons.menu),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.menu_book),
                Icon(Icons.ev_station),
                Icon(Icons.add_a_photo),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Container(
                width: 100,
                height: 40,
                color: Colors.red,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 100,
                height: 40,
                color: Colors.green,
              ),
            ),
            Text("Data"),
            Expanded(
              flex: 4,
              child: Container(
                
                color: Colors.red,
              ),
            ),
            Expanded(
              flex: 2,
                child: Container(
              color: Colors.blue,
            ))
          ],
        ),
      ),
    );
  }
}
