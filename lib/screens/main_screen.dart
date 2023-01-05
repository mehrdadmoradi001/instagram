import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedBottomNavigationBar = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedBottomNavigationBar,
        onTap: (int index) {
          setState(() {
            _selectedBottomNavigationBar = index;
          });
        },
        selectedFontSize: 20,
        selectedIconTheme: IconThemeData(color: Colors.red),
        selectedItemColor: Colors.black,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        //
        unselectedFontSize: 12,
        unselectedItemColor: Colors.white,
        //
        showSelectedLabels: false,
        showUnselectedLabels: false,

        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.green,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.ice_skating), label: 'Label1'), //
          BottomNavigationBarItem(
              icon: Icon(Icons.ice_skating), label: 'Label2'),
          BottomNavigationBarItem(
              icon: Icon(Icons.ice_skating), label: 'Label3'),
          BottomNavigationBarItem(
              icon: Icon(Icons.ice_skating), label: 'Label4'),
        ],
      ),
      body: IndexedStack(
        index: _selectedBottomNavigationBar,
        children: getLayout(),
      ),
    );
  }

  List<Widget> getLayout() => <Widget>[
        Container(
          color: Colors.red,
          child: Center(child: TextField()),
        ),
        Container(
          color: Colors.blue,
        ),
        Container(
          color: Colors.amber,
        ),
        Container(
          color: Colors.green,
        ),
      ];
}
