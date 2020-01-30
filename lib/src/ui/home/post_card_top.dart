import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../model/post.dart';

class PostCardTop extends StatelessWidget {
  final Post post;

  PostCardTop(this.post);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (post.imageId != null)
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(4.0)),
                child: Image.asset(post.imageId),
              ),
            ),
          SizedBox(height: 16.0),
          Text(
            post.title,
            style: textTheme.title
                .copyWith(color: textTheme.title.color.withOpacity(0.87)),
          ),
          Text(
            post.metadata.author.name,
            style: textTheme.body1
                .copyWith(color: textTheme.body1.color.withOpacity(0.87)),
          ),
          Text(
            "${post.metadata.date} - ${post.metadata.readTimeMinutes} min read",
            style: textTheme.body1
                .copyWith(color: textTheme.body1.color.withOpacity(0.6)),
          ),
        ],
      ),
    );
  }
}
