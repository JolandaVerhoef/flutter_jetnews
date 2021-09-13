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

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jetnews/src/model/post.dart';

class PostCardTop extends StatelessWidget {
  final Post post;

  PostCardTop(this.post);

  @override
  Widget build(BuildContext context) {
    final typography = Theme.of(context).textTheme;
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(minHeight: 180),
            child: ClipRRect(
              // TODO Use Material shape
              borderRadius: BorderRadius.all(Radius.circular(4.0)),
              child: Image.asset(post.imageId!, fit: BoxFit.cover),
            ),
          ),
          SizedBox(height: 16),
          Text(
            post.title,
            style: typography.headline6?.copyWith(
                color: typography.headline6?.color?.withOpacity(0.87)),
          ),
          SizedBox(height: 8),
          Text(
            post.metadata.author.name,
            style: typography.subtitle2,
          ),
          SizedBox(height: 4),
          Text(
            "${post.metadata.date} - ${post.metadata.readTimeMinutes} min read",
            style: typography.subtitle2?.copyWith(
                color: typography.bodyText1?.color?.withOpacity(0.6)),
          ),
        ],
      ),
    );
  }
}
