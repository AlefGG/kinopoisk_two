import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kinopoisk_bloc_four/ui/navigation/main_navigation.dart';

const TextTheme _textTheme = TextTheme(
  displayMedium: TextStyle(fontSize: 41),
  displaySmall: TextStyle(fontSize: 36),
  labelSmall: TextStyle(fontSize: 11, letterSpacing: 0.5),
);

final String? _fontFamily = GoogleFonts.notoSans().fontFamily;

class MyApp extends StatelessWidget {
  static final mainNavigation = MainNavigation();
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: FlexThemeData.dark(
        scheme: FlexScheme.purpleM3,
        appBarElevation: 2,
        useMaterial3: true,
        typography: Typography.material2021(platform: defaultTargetPlatform),
        textTheme: _textTheme,
        fontFamily: _fontFamily,
      ),
      themeMode: ThemeMode.dark,
      routes: mainNavigation.routes,
      initialRoute: MainNavigationRouteNames.loaderWidget,
      onGenerateRoute: mainNavigation.onGenerateRoute,
    );
  }
}
