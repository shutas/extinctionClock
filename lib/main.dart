import 'package:flutter/material.dart';

void main() => runApp(extinctionApp());

class extinctionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text(
            'Human Extinction Countdown',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 28.0,
            ),
          ),
          backgroundColor: Colors.red,
        ),
        bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
            labelTextStyle: MaterialStateProperty.resolveWith<TextStyle>(
              (Set<MaterialState> states) => states.contains(MaterialState.selected)
                ? const TextStyle(color: Colors.red)
                : const TextStyle(color: Colors.white),
            ),
          ),
        child: NavigationBar(
          backgroundColor: Colors.black,
          indicatorColor: Colors.red[900],
          destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(
              Icons.timer,
              color: Colors.white,
            ),
            label: 'Countdown'
          ),
            NavigationDestination(
                icon: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                label: 'Settings'
            ),]
        ),
      ),
    ));
  }
}