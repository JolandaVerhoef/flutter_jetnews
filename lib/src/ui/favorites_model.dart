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

import 'dart:collection';

import 'package:flutter/foundation.dart';

class FavoritesModel extends ChangeNotifier {
  /// Internal, private state of the cart.
  final Set<String> _favorites = {};

  /// An unmodifiable view of the items in the cart.
  UnmodifiableSetView<String> get favorites => UnmodifiableSetView(_favorites);

  /// Adds or removes [postId] to favorites.
  void toggleFavorite(String postId) {
    if(!_favorites.add(postId)) {
      _favorites.remove(postId);
    }
    // This call tells the widgets that are listening to this model to rebuild.
    notifyListeners();
  }
}