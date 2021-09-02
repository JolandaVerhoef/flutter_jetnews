import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jetnews/src/model/post.dart';

class PostCardTop extends StatelessWidget {
  final Post post;

  PostCardTop(this.post);

  @override
  Widget build(BuildContext context) {
    final typography = Theme.of(context).textTheme;
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(minHeight: 180),
            child: ClipRRect(
              // TODO Use Material shape
              borderRadius: BorderRadius.all(Radius.circular(4.0)),
              child: Image.asset(post.imageId!, fit: BoxFit.cover),
            ),
          ),
          SizedBox(height: 16),
          Text(
            post.title,
            style: typography.headline6?.copyWith(
                color: typography.headline6?.color?.withOpacity(0.87)),
          ),
          SizedBox(height: 8),
          Text(
            post.metadata.author.name,
            style: typography.subtitle2,
          ),
          SizedBox(height: 4),
          Text(
            "${post.metadata.date} - ${post.metadata.readTimeMinutes} min read",
            style: typography.subtitle2?.copyWith(
                color: typography.bodyText1?.color?.withOpacity(0.6)),
          ),
        ],
      ),
    );
  }
}
