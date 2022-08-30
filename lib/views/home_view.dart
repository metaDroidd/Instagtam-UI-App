// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/widgets/top_bar.dart';
import 'package:instagram_ui_clone/widgets/post_card.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            TopBar(),
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    PostCard(
                      image: AssetImage("assets/images/photo1.jpeg"),
                    ),
                    PostCard(
                      image: AssetImage("assets/images/photo2.jpeg"),
                    ),
                    PostCard(
                      image: AssetImage("assets/images/photo3.jpeg"),
                    ),
                    PostCard(
                      image: AssetImage("assets/images/photo4.jpeg"),
                    ),
                    PostCard(
                      image: AssetImage("assets/images/photo5.jpeg"),
                    ),
                    PostCard(
                      image: AssetImage("assets/images/photo6.jpeg"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
