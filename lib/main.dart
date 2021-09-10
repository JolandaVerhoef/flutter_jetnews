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
