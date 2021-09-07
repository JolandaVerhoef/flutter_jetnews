
import 'package:flutter/material.dart';

class ArticleScreen extends StatelessWidget {
  static const String routeName = '/post';

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
        appBar: AppBar(title: const Text("Jetnews")),
        body: Text("Article $id")
    );
  }
}