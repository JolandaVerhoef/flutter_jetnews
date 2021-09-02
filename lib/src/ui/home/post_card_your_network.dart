import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jetnews/src/ui/article/article_screen.dart';
import '../../model/post.dart';

class PostCardPopular extends StatelessWidget {
  final Post post;

  PostCardPopular(this.post);

  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: InkWell(
            onTap: () => Navigator.pushNamed(context, ArticleScreen.routeName),
            child: Container(
                width: 280,
                child: Column(
                  children: <Widget>[
                    ConstrainedBox(
                      constraints: BoxConstraints(minHeight: 100),
                      child: Image.asset(post.imageId!, fit: BoxFit.cover),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            post.title,
                            style: Theme.of(context).textTheme.headline6,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            post.metadata.author.name,
                            style: Theme.of(context).textTheme.bodyText2,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            "${post.metadata.date} - ${post.metadata.readTimeMinutes} min read",
                            style: Theme.of(context).textTheme.bodyText2,
                          )
                        ],
                      ),
                    ),
                  ],
                ))));
  }
}
