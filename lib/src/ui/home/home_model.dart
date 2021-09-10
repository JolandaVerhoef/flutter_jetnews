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
