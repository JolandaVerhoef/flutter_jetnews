import 'package:flutter/material.dart';
import '../../data/posts_data.dart';
import '../../model/post.dart';
import '../../ui/home/post_card_top.dart';
import '../../ui/home/post_card_your_network.dart';
import '../../ui/home/post_cards.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final postTop = post1;
    final postsSimple = [post1, post1];
    final postsPopular = [post1, post1, post1, post1, post1];
    final postsHistory = [post1, post1, post1];

    return ListView(
      children: <Widget>[
        HomeScreenTopSection(postTop),
        HomeScreenSimpleSection(postsSimple),
        HomeScreenPopularSection(postsPopular),
        HomeScreenHistorySection(postsHistory)
      ],
    );
  }
}

class HomeScreenTopSection extends StatelessWidget {
  final Post post;

  HomeScreenTopSection(this.post);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
          child: Opacity(
            opacity: 0.87,
            child: Text(
              "Top stories for you",
              style: Theme.of(context).textTheme.subtitle,
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: PostCardTop(post),
        ),
        HomeScreenDivider(),
      ],
    );
  }
}

class HomeScreenSimpleSection extends StatelessWidget {
  final List<Post> postsSimple;

  HomeScreenSimpleSection(this.postsSimple);

  @override
  Widget build(BuildContext context) {
//    postsSimple.map((Post post) {
//      Column(
//        children: <Widget>[PostCardSimple(post), HomeScreenDivider()],
//      );
//    });
    return Column(children: [
      PostCardSimple(postsSimple[0]),
      HomeScreenDivider(),
      PostCardSimple(postsSimple[1]),
      HomeScreenDivider(),
    ]);
  }
}

class HomeScreenPopularSection extends StatelessWidget {
  final List<Post> postsPopular;

  HomeScreenPopularSection(this.postsPopular);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            "Popular on Jetnews",
            style: Theme.of(context).textTheme.subtitle,
          ),
        ),
        Container(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              PostCardPopular(postsPopular[0]),
              PostCardPopular(postsPopular[1]),
              PostCardPopular(postsPopular[2]),
              PostCardPopular(postsPopular[3]),
            ],
          ),
        )
      ],
    );
  }
}

class HomeScreenHistorySection extends StatelessWidget {
  final List<Post> postsHistory;

  HomeScreenHistorySection(this.postsHistory);

  @override
  Widget build(BuildContext context) {
    return Text("HomeScreenHistorySection");
  }
}

class HomeScreenDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 14.0, right: 14.0),
      child: Opacity(
        opacity: 0.08,
        child: Divider(),
      ),
    );
  }
}
