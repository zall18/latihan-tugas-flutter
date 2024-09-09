import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:tugas_flutter/Home.dart';
import 'package:tugas_flutter/profile.dart';

class BottomNavBar extends StatefulWidget {
  int id;
  BottomNavBar({super.key, required this.id});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  var index = 0;

  @override
  void initState() {
    // TODO: implement initState
    index = widget.id;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: SalomonBottomBar(
        items: [
          SalomonBottomBarItem(icon: Icon(Icons.home), title: Text("Home")),
          SalomonBottomBarItem(
              icon: Icon(Icons.settings), title: Text("Setting"))
        ],
        currentIndex: index,
        onTap: (selectionIndex) {
          setState(() {
            index = selectionIndex;
          }); // Update the state here
        },
      ),
      body: Container(
        color: Colors.white,
        child: getselectedIndex(id: index),
      ),
    );
  }

  Widget getselectedIndex({required int id}) {
    Widget widget;
    switch (id) {
      case 0:
        widget = const HomePage();
        break;
      case 1:
        widget = const Profile();
        break;
      default:
        widget = const HomePage();
    }
    return widget;
  }
}
