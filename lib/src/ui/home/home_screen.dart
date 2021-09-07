import 'package:flutter/material.dart';
import 'package:jetnews/src/ui/article/article_screen.dart';
import 'package:jetnews/src/ui/home/home_model.dart';
import 'package:jetnews/src/ui/navigationDrawer.dart';
import 'package:provider/provider.dart';
import '../../model/post.dart';
import '../../ui/home/post_card_top.dart';
import '../../ui/home/post_card_your_network.dart';
import '../../ui/home/post_cards.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeModel(),
      child: Scaffold(
        appBar: AppBar(title: Text(AppLocalizations.of(context)!.app_name)),
        drawer: NavigationDrawer(),
        body: Consumer<HomeModel>(
            builder: (BuildContext context, homeModel, Widget? child) {
          return LoadingContent(
              empty: homeModel.initialLoad,
              emptyContent: FullScreenLoading(),
              loading: homeModel.loading,
              onRefreshPosts: homeModel.refreshPosts,
              child: HomeScreenErrorAndContent(
                  posts: homeModel.posts,
                  isShowingErrors: homeModel.errorMessages.isNotEmpty,
                  onRefresh: homeModel.refreshPosts));
        }),
      ),
    );
  }
}

// TODO snackbar
class LoadingContent extends StatelessWidget {
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
      GlobalKey<RefreshIndicatorState>();

  final bool empty;
  final Widget emptyContent;
  final bool loading;
  final VoidCallback onRefreshPosts;
  final Widget child;

  LoadingContent(
      {required this.empty,
      required this.emptyContent,
      required this.loading,
      required this.onRefreshPosts,
      required this.child});

  @override
  Widget build(BuildContext context) {
    if (empty) {
      return emptyContent;
    } else {
      if (loading) _refreshIndicatorKey.currentState?.show();

      return RefreshIndicator(
        key: _refreshIndicatorKey,
        onRefresh: () {
          onRefreshPosts();
          return Future.value();
        },
        child: child,
      );
    }
  }
}

class HomeScreenErrorAndContent extends StatelessWidget {
  final List<Post> posts;
  final bool isShowingErrors;
  final VoidCallback onRefresh;

  HomeScreenErrorAndContent(
      {required this.posts,
      required this.isShowingErrors,
      required this.onRefresh});

  @override
  Widget build(BuildContext context) {
    if (posts.isNotEmpty) {
      return ListView(
          physics: const AlwaysScrollableScrollPhysics(),
          children: [
            HomeScreenTopSection(posts[3]),
            HomeScreenSimpleSection(posts.sublist(0, 2)),
            HomeScreenPopularSection(posts.sublist(0, 4)),
            HomeScreenHistorySection(posts.sublist(0, 4))
          ]);
    } else if (!isShowingErrors) {
      return Text('Tap to load content');
    } else {
      return Text('Nothing to see here');
    }
  }
}

class FullScreenLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: CircularProgressIndicator());
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
              AppLocalizations.of(context)!.home_top_section_title,
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, ArticleScreen.routeName,
                arguments: post.id);
          },
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
      PostCardSimple(
        post: postsSimple[0],
        isFavorite: false,
        onToggleFavorite: () {},
      ),
      HomeScreenDivider(),
      PostCardSimple(
        post: postsSimple[1],
        isFavorite: false,
        onToggleFavorite: () {},
      ),
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
            AppLocalizations.of(context)!.home_popular_section_title,
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
        Container(
          height: 240,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: postsPopular.length,
            itemBuilder: (context, index) {
              return PostCardPopular(postsPopular[index]);
            },
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
