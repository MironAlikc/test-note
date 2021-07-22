import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}



int bottomSelectedIndex = 0;

class _HomePageState extends State<HomePage> {
  int _selectetedTeb = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
    ),
    Text(
      'Index 1: Business',
    ),
    Text(
      'Calendar',
    ),
  ];

  void onSelectTab(int index) {
    if (_selectetedTeb == index) return;
    setState(() {
      _selectetedTeb = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF89CAE6),
      appBar: AppBar(
        title: Text('Notes'),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(40),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text("Меню 1"),
              trailing: Icon(Icons.arrow_back),
            ),
            ListTile(
              title: Text("Меню 2"),
              trailing: Icon(Icons.arrow_downward),
            ),
          ],
        ),
      ),
      body: Center(
        child: _widgetOptions[_selectetedTeb],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40.0),
          topRight: Radius.circular(40.0),
        ),
        child: BottomNavigationBar(
            elevation: 0.0,
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectetedTeb,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notes),
                label: 'notes',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today_sharp),
                label: 'calendar',
              ),
            ],
            onTap: onSelectTab),
      ),
    );
  }
}
