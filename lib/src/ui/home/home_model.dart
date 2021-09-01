import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:jetnews/src/data/posts/PostsRepository.dart';
import 'package:jetnews/src/data/posts_data.dart';
import 'package:jetnews/src/model/post.dart';
import 'package:jetnews/src/utils/ErrorMessage.dart';
import 'package:uuid/uuid.dart';

class HomeModel extends ChangeNotifier {
  List<Post> posts = [];
  Set<String> favorites = {};
  bool loading = false;
  List<ErrorMessage> errorMessages = [];

  PostsRepository _postsRepository = PostsRepository();

  bool get initialLoad {
    return posts.isEmpty &&
        favorites.isEmpty &&
        errorMessages.isEmpty &&
        loading;
  }

  HomeModel() {
    refreshPosts();
  }

  void refreshPosts() {
    loading = true;
    notifyListeners();

    _postsRepository.getPosts().then((value) {
      posts = value;
      loading = false;
    }, onError: (error) {
      errorMessages.add(ErrorMessage(Uuid().v4(), "Can't update latest news"));
    }).whenComplete(() => notifyListeners());
  }
}
