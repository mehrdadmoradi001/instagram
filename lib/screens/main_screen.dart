import 'package:flutter/material.dart';
import 'package:instagram/data/constants/constant_colors.dart';

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
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: deepColor,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('images/icon_home.png'),
            activeIcon: Image.asset('images/icon_active_home.png'),
            label: 'Label1',
          ),
          BottomNavigationBarItem(
              icon: Image.asset('images/icon_search_navigation.png'),
              activeIcon: Image.asset('images/icon_search_navigation_active.png'),
              label: 'Label2'),
          BottomNavigationBarItem(
              icon: Image.asset('images/icon_add_navigation.png'),
              activeIcon: Image.asset('images/icon_add_navigation_active.png'),
              label: 'Label3'),
          BottomNavigationBarItem(
              icon: Image.asset('images/icon_activity_navigation.png'),
              activeIcon: Image.asset('images/icon_activity_navigation_active.png'),
              label: 'Label4'),
          BottomNavigationBarItem(
              icon: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: grayColor),
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(6),
                  ),
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: Image.asset('images/phototest.jpg'),
                  ),
                ),
              ),
              activeIcon: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: grayColor),
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(6),
                  ),
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: Image.asset('images/phototest.jpg'),
                  ),
                ),
              ),
              label: 'Label5'),
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
