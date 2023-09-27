import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kinopoisk_bloc_four/ui/widgets/home_screen/home_screen.dart';
import 'package:kinopoisk_bloc_four/ui/widgets/kinopoisk_250_list/bloc/popular_movies_bloc.dart';
import 'package:kinopoisk_bloc_four/ui/widgets/loader_widget/loader_widget.dart';
import 'package:kinopoisk_bloc_four/ui/widgets/loader_widget/widget/loader_view_cubit.dart';
import 'package:kinopoisk_bloc_four/ui/widgets/main_screen/main_screen.dart';
import 'package:kinopoisk_bloc_four/ui/widgets/movie_details_screen/awards_bloc/awards_bloc.dart';
import 'package:kinopoisk_bloc_four/ui/widgets/movie_details_screen/movie_details_screen.dart';
import 'package:movie_awards_repository/movie_awards_repository.dart';
import 'package:search_movies_repository/search_movies_repository.dart';

class ScreenFactory {
  final SearchMoviesRepository searchMoviesRepository =
      SearchMoviesRepository();
  final MovieAwardsRepository movieAwardsRepository = MovieAwardsRepository();
  Widget makeMainScreen() {
    return const MainScreen();
  }

  Widget makeLoader() {
    return BlocProvider<LoaderViewCubit>(
      create: (_) => LoaderViewCubit(),
      child: const LoaderWidget(),
    );
  }

  Widget makePopularMoviesWidget() {
    return BlocProvider(
      create: (_) => PopularMoviesBloc(repository: searchMoviesRepository)
        ..add(PopularMoviesFetched()),
      child: const HomeScreen(),
    );
  }

  Widget makeMovieDetailsWidget({required MovieIdResponse movie}) {
    return BlocProvider(
      create: (context) =>
          AwardsBloc(repository: movieAwardsRepository, movieId: movie.id)
            ..add(AwardsFetched()),
      child: MovieDetailsScreen(movie: movie),
    );
  }
}
