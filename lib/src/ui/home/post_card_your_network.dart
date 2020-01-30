import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../model/post.dart';

class PostCardPopular extends StatelessWidget {
  final Post post;

  PostCardPopular(this.post);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: InkWell(
            onTap: () {},
            child: Container(width: 280, height: 240, child: Column(
              children: <Widget>[
                Image.asset(post.imageId ?? "images/placeholder_4_3.png", height: 100),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    children: <Widget>[
                      Text(post.title),
                      Text(post.metadata.author.name),
                      Text("${post.metadata.readTimeMinutes} min read")
                    ],
                  ),
                ),
              ],
            ))));
  }
}
