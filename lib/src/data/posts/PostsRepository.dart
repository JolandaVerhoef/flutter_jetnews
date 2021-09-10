/*
 * Copyright 2020 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

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
