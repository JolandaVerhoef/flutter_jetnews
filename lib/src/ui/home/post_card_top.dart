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
                child: Image(image: AssetImage(post.imageId ?? "images/placeholder_4_3.png")),
              ),
            ),
          SizedBox(height: 16.0),
          Text(
            post.title,
            style: textTheme.headline6
                ?.copyWith(color: textTheme.headline6?.color?.withOpacity(0.87)),
          ),
          Text(
            post.metadata.author.name,
            style: textTheme.bodyText1
                ?.copyWith(color: textTheme.bodyText1?.color?.withOpacity(0.87)),
          ),
          Text(
            "${post.metadata.date} - ${post.metadata.readTimeMinutes} min read",
            style: textTheme.bodyText1
                ?.copyWith(color: textTheme.bodyText1?.color?.withOpacity(0.6)),
          ),
        ],
      ),
    );
  }
}
