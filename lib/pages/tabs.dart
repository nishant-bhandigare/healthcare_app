import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:healthcare_app/pages/activity_tracking.dart';
import 'package:healthcare_app/pages/home.dart';
import 'package:healthcare_app/pages/leaderboard.dart';
import 'package:healthcare_app/pages/workout.dart';

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const ActivityTrackingPage(),
    const Leaderboard(),
    const MentalHealth(),
    const WorkoutPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Color themeColour = const Color.fromARGB(255, 34, 50, 99);

    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: themeColour,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: FaIcon(
              _selectedIndex == 0
                  ? FontAwesomeIcons.home
                  : FontAwesomeIcons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              _selectedIndex == 1
                  ? FontAwesomeIcons.personRunning
                  : FontAwesomeIcons.personRunning,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              _selectedIndex == 2
                  ? FontAwesomeIcons.solidChessKing
                  : FontAwesomeIcons.chessKing,
            ),
            label: 'Favourites',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              _selectedIndex == 3
                  ? FontAwesomeIcons.heart
                  : FontAwesomeIcons.heart,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              _selectedIndex == 4
                  ? FontAwesomeIcons.dumbbell
                  : FontAwesomeIcons.dumbbell,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

class MentalHealth extends StatelessWidget {
  const MentalHealth({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('MentalHealth Page', style: TextStyle(fontSize: 24)),
    );
  }
}