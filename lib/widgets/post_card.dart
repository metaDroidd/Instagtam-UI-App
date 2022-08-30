// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final ImageProvider image;
  const PostCard({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: image,
                ),
                SizedBox(width: 10),
                Text(
                  "imma_culate",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Icon(Icons.more_vert),
              ],
            ),
          ),
          Image(
            image: image,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                Icon(
                  Icons.favorite_outline_outlined,
                  size: 28,
                ),
                SizedBox(width: 10),
                Icon(
                  Icons.add_comment_outlined,
                  size: 28,
                ),
                SizedBox(width: 10),
                Icon(
                  Icons.send,
                  size: 28,
                ),
                Spacer(),
                Icon(
                  Icons.bookmark_border_outlined,
                  size: 28,
                ),
              ],
            ),
          ),
          Text(
            "209 likes",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Text(
                "imma_culate",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 5),
              Text(
                "Hello everyone!",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
