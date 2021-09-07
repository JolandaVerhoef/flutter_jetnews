import 'package:flutter/material.dart';
import 'package:jetnews/src/ui/article/article_screen.dart';
import 'package:jetnews/src/ui/home/home_screen.dart';
import 'package:jetnews/src/ui/interests/interests_screen.dart';
import 'package:jetnews/src/ui/theme/theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() => runApp(JetnewsApp());

class JetnewsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
    );
  }
}
