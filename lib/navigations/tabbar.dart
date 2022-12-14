// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/views/home_view.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({Key? key}) : super(key: key);

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  int _selectedTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            _selectedTab = index;
          });
        },
        currentIndex: _selectedTab,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_rounded),
            label: "Add",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            label: "Marketplace",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
      body: _selectedTab == 0
          ? HomeView()
          : _selectedTab == 1
              ? Center(
                  child: Text("Search View"),
                )
              : _selectedTab == 2
                  ? Center(
                      child: Text("Add a Post"),
                    )
                  : _selectedTab == 3
                      ? Center(
                          child: Text("Marketplace View"),
                        )
                      : Center(
                          child: Text("Profile View"),
                        ),
    );
  }
}
