import 'package:flutter/material.dart';
import 'package:kinopoisk_bloc_four/domain/factories/screen_factory.dart';
import 'package:search_movies_repository/search_movies_repository.dart';

abstract class MainNavigationRouteNames {
  static const loaderWidget = '/';
  static const mainScreen = '/main_screen';
  static const movieDetails = '/main_screen/movie_details';
}

class MainNavigation {
  static final _screenFactory = ScreenFactory();
  final routes = <String, Widget Function(BuildContext)>{
    MainNavigationRouteNames.loaderWidget: (_) => _screenFactory.makeLoader(),
    MainNavigationRouteNames.mainScreen: (context) =>
        _screenFactory.makeMainScreen(),
    MainNavigationRouteNames.movieDetails: (context) =>
        _screenFactory.makeMovieDetailsWidget(
          movie: ModalRoute.of(context)!.settings.arguments as MovieIdResponse,
        ),
  };

  Route<Object> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (_) => const Text('nav error'));
  }

  static void resetNavigation(BuildContext context) =>
      Navigator.of(context).pushNamedAndRemoveUntil(
          MainNavigationRouteNames.mainScreen, (route) => false);
}
