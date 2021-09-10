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

import 'package:jetnews/src/ui/article/article_screen.dart';
import 'package:jetnews/src/ui/home/home_screen.dart';
import 'package:jetnews/src/ui/interests/interests_screen.dart';

class PageRoutes {
  static const String home = HomeScreen.routeName;
  static const String interests = InterestsScreen.routeName;
  static const String article = ArticleScreen.routeName;
}