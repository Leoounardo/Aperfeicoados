import 'package:flutter/material.dart';
import 'tabInfo.dart';
import 'tabBar.dart';
import 'tabRest.dart';

void main() {
  set();
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aperfeiçoados Bar e Restaurante',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _currentIndex = 0;

  final tabs = [
    tabRest(),
    tabBar(),
    TabInfo()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aperfeiçoados'),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,

        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.purple,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.fastfood, color: Colors.white),
            title: Text('Restaurante', style: TextStyle(color: Colors.white)),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_bar, color: Colors.white),
              title: Text('Bar', style: TextStyle(color: Colors.white)),

          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.white),
              title: Text('Informações', style: TextStyle(color: Colors.white)),

          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: tabs[_currentIndex],
    );
  }
}

/*
if(index == 0){
nomezin = 'Restaurante';
} else if(index == 1){
nomezin = 'Bar';
} else if(index == 2){
nomezin = 'Informações';

}

Center(child: Text('Restaurante'),),
    Center(child: Text('Bar'),),
    Center(child: Text('Informações'),)


*/
