import 'package:jetnews/src/data/posts_data.dart';
import 'package:jetnews/src/model/post.dart';
import 'package:collection/collection.dart';

class PostsRepository {

  Future<Post> getPost(String postId) {
    Post? post = allPosts.firstWhereOrNull((element) => element.id == postId);
    if (post == null) {
      return Future.error(ArgumentError("Post not found"));
    } else {
      return Future.value(post);
    }
  }

  Future<List<Post>> getPosts() {
    return Future.delayed(const Duration(milliseconds: 800), () {
      if (_shouldRandomlyFail()) {
        return Future.error(StateError('Fake error'));
      } else {
        return Future.value(allPosts);
      }
    });
  }

  // used to drive "random" failure in a predictable pattern, making the first
  // request always succeed
  int _requestCount = 0;

  /// Randomly fail some loads to simulate a real network.
  ///
  /// This will fail deterministically every 5 requests
  bool _shouldRandomlyFail() {
    return ++_requestCount % 5 == 0;
  }
}
