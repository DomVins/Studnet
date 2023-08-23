import 'package:flutter/material.dart';
import 'constants/colors.dart';
import 'pages/chats.dart';
import 'pages/hub.dart';
import 'pages/home.dart';

class Frame extends StatefulWidget {
  const Frame({super.key, required this.title});

  final String title;

  @override
  State<Frame> createState() => _FrameState();
}

class _FrameState extends State<Frame> {
  int index = 0;

  final screens = const [
    Home(),
    Gallery(),
    Center(
      child: Text("Schools"),
    ),
    Center(
      child: Text("Messages"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    const double iconSizeSelected = 25;
    const double iconSizeUnselected = 25;
    return Scaffold(
      // backgroundColor: backgroundColor,
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
            labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
            indicatorColor: appColor,
            labelTextStyle: MaterialStateProperty.all(const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.black))),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          child: NavigationBar(
            height: 60,
            backgroundColor: Colors.grey.shade300,
            selectedIndex: index,
            onDestinationSelected: (value) => setState(() {
              index = value;
            }),
            destinations: const [
              NavigationDestination(
                  selectedIcon: Icon(
                    Icons.home,
                    color: Colors.white70,
                  ),
                  icon: Icon(
                    Icons.home_outlined,
                    color: Colors.black87,
                  ),
                  label: 'Home'),
              NavigationDestination(
                  selectedIcon: Icon(
                    Icons.hub,
                    color: Colors.white70,
                  ),
                  icon: Icon(
                    Icons.hub_outlined,
                    color: Colors.black87,
                  ),
                  label: 'Hub'),
              NavigationDestination(
                  selectedIcon: Icon(
                    Icons.school,
                    color: Colors.white70,
                  ),
                  icon: Icon(
                    Icons.school_outlined,
                    color: Colors.black87,
                  ),
                  label: 'Schools'),
              NavigationDestination(
                  selectedIcon: Icon(
                    Icons.chat,
                    color: Colors.white70,
                  ),
                  icon: Icon(
                    Icons.chat_outlined,
                    color: Colors.black87,
                  ),
                  label: 'Messages'),
            ],
          ),
        ),
      ),
    );
  }
}
