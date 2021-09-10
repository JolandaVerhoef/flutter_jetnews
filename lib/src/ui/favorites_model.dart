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