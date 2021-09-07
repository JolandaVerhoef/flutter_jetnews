import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/widgets.dart';
import 'package:jetnews/src/ui/article/article_screen.dart';
import '../../model/post.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AuthorAndReadTime extends StatelessWidget {
  final Post post;

  AuthorAndReadTime(this.post);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(
        AppLocalizations.of(context)!.home_post_min_read(
            post.metadata.author.name, post.metadata.readTimeMinutes),
        style: Theme.of(context).textTheme.bodyText2,
      ),
    ]);
  }
}

class PostImage extends StatelessWidget {
  final Post post;

  PostImage(this.post);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
        child:
            Image(image: AssetImage(post.imageThumbId), width: 40, height: 40));
  }
}

class PostTitle extends StatelessWidget {
  final Post post;

  PostTitle(this.post);

  @override
  Widget build(BuildContext context) {
    return Text(
      post.title,
      style: Theme.of(context).textTheme.subtitle1,
    );
  }
}

class PostCardSimple extends StatelessWidget {
  final Post post;
  final bool isFavorite;
  final VoidCallback onToggleFavorite;

  PostCardSimple(
      {required this.post,
      required this.isFavorite,
      required this.onToggleFavorite});

  @override
  Widget build(BuildContext context) {
    return Semantics(
      customSemanticsActions: {
        CustomSemanticsAction(
            label: isFavorite
                ? AppLocalizations.of(context)!.unbookmark
                : AppLocalizations.of(context)!.bookmark): onToggleFavorite
      },
      child: InkWell(
        onTap: () => Navigator.pushNamed(context, ArticleScreen.routeName, arguments: post.id),
        child: Padding(
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
              BookmarkButton(
                isBookmarked: isFavorite,
                onClick: onToggleFavorite,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BookmarkButton extends StatelessWidget {
  final bool isBookmarked;
  final VoidCallback onClick;

  BookmarkButton({required this.isBookmarked, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(isBookmarked ? Icons.bookmark : Icons.bookmark_border),
      tooltip: isBookmarked
          ? AppLocalizations.of(context)!.unbookmark
          : AppLocalizations.of(context)!.bookmark,
      onPressed: onClick,
    );
  }
}
