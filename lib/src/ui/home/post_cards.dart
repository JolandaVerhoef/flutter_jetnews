import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../model/post.dart';

class AuthorAndReadTime extends StatelessWidget {
  final Post post;

  AuthorAndReadTime(this.post);

  @override
  Widget build(BuildContext context) {
    var textStyle = Theme.of(context).textTheme.body1;
    return Row(
      children: [
        Flexible(
          child: Opacity(
              opacity: 0.6,
              child: Text("${post.metadata.author.name}", style: textStyle)),
        ),
        Opacity(
            opacity: 0.6,
            child: Text(" - ${post.metadata.readTimeMinutes} min read",
                style: textStyle))
      ],
    );
  }
}

class PostImage extends StatelessWidget {
  final Post post;

  PostImage(this.post);

  @override
  Widget build(BuildContext context) {
    return Image.asset(post.imageThumbId ?? "images/placeholder_1_1.png",
        width: 40, height: 40);
  }
}

class PostTitle extends StatelessWidget {
  final Post post;

  PostTitle(this.post);

  @override
  Widget build(BuildContext context) {
    return Opacity(
        opacity: 0.87,
        child: Text(
          post.title,
          style: Theme.of(context).textTheme.subtitle,
        ));
  }
}

class PostCardSimple extends StatelessWidget {
  final Post post;

  PostCardSimple(this.post);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: PostImage(post),
          ),
          Flexible(
            child: Column(
              children: <Widget>[
                PostTitle(post),
                AuthorAndReadTime(post),
              ],
            ),
          ),
          Text("Bookmark"),
        ],
      ),
    );
  }
}

