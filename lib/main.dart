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
import 'package:jetnews/src/ui/article/article_screen.dart';
import 'package:jetnews/src/ui/favorites_model.dart';
import 'package:jetnews/src/ui/home/home_screen.dart';
import 'package:jetnews/src/ui/interests/interests_screen.dart';
import 'package:jetnews/src/ui/theme/theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() => runApp(JetnewsApp());

class JetnewsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      // both home and article screen consume favorites, so provide at top level
      create: (context) => FavoritesModel(),
      child: MaterialApp(
        onGenerateTitle: (BuildContext context) =>
            AppLocalizations.of(context)!.app_name,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        theme: JetnewsThemeData.lightThemeData,
        darkTheme: JetnewsThemeData.darkThemeData,
        routes: <String, WidgetBuilder>{
          HomeScreen.routeName: (BuildContext context) => HomeScreen(),
          ArticleScreen.routeName: (BuildContext context) => ArticleScreen(),
          InterestsScreen.routeName: (BuildContext context) => InterestsScreen(),
        },
      ),
    );
  }
}
