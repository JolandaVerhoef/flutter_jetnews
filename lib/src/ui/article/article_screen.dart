
import 'package:flutter/material.dart';

class ArticleScreen extends StatelessWidget {
  static const String routeName = '/post';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Jetnews")),
        body: Text("Hello world")
    );
  }
}