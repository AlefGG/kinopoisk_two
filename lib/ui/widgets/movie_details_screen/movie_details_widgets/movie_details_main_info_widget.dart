import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kinopoisk_bloc_four/ui/widgets/movie_details_screen/awards_bloc/awards_bloc.dart';
import 'package:movie_awards_repository/movie_awards_repository.dart';
import 'package:search_movies_repository/search_movies_repository.dart';

class MovieDetailsMainInfoWidget extends StatelessWidget {
  final MovieIdResponse movie;
  const MovieDetailsMainInfoWidget({Key? key, required this.movie})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isAwardError = false;
    bool isAwardLoading = true;
    bool isAwardEmpty = true;
    return BlocBuilder<AwardsBloc, AwardsState>(
      builder: (context, state) {
        switch (state.status) {
          case AwardsStatus.initial:
            isAwardLoading = true;
          case AwardsStatus.failure:
            isAwardError = true;
          case AwardsStatus.loading:
            isAwardError = true;
          case AwardsStatus.success:
            isAwardLoading = false;
            isAwardError = false;
        }
        isAwardEmpty = state.awards.isEmpty;
        return isAwardLoading
            ? const BottomLoader()
            : Column(
                children: [
                  MovieMainInfoWidget(
                    movie: movie,
                    awards: isAwardEmpty ? [] : state.awards,
                  ),
                ],
              );
      },
    );
  }
}

class MovieMainInfoWidget extends StatelessWidget {
  final List<MovieAwards> awards;
  const MovieMainInfoWidget({
    super.key,
    required this.movie,
    required this.awards,
  });

  final MovieIdResponse movie;

  @override
  Widget build(BuildContext context) {
    final isAwardEmpty = awards.isEmpty;
    return Column(
      children: [
        Text(
          isAwardEmpty ? 'no awards' : '${awards[0].movieId.toString()}, hello',
        ),
        Text(movie.id.toString()),
      ],
    );
  }
}

class BottomLoader extends StatelessWidget {
  const BottomLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        height: 24,
        width: 24,
        child: CircularProgressIndicator(),
      ),
    );
  }
}
