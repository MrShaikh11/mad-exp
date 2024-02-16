import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  int _selectedIndex = 0;

  // static List<Widget> _widgetOptions = <Widget>[
  //   HomePage(),
  //   ProfilePage(),
  // ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("Basic Widget"),
          ),
          drawer: Drawer(
            child: ListView(
              children: <Widget>[
                DrawerHeader(child: Text('Maaz')),
                ListTile(
                  title: Text('HOME'),
                  onTap: () => {},
                ),
                ListTile(
                  title: Text('ABOUT US'),
                  onTap: () => {},
                ),
                ListTile(
                  title: Text('CONTACT'),
                  onTap: () => {},
                ),
              ],
            ),
          ),
          body: Center(
            child: Column(
              children: [
                Image.asset('assets/error.png'),
                SizedBox(
                  height: 20,
                ),
                Text('page not found')
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.blue,
            onTap: _onItemTapped,
          )),
    );
  }
}
