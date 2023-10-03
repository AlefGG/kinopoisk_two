import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_awards_repository/movie_awards_repository.dart';
import 'package:movie_details_repository/movie_details_repository.dart';
import 'package:search_movies_repository/search_movies_repository.dart';

import 'movie_details_bloc/movie_details_bloc.dart';

class MovieDetailsMainInfoWidget extends StatelessWidget {
  final MovieIdResponse movie;
  const MovieDetailsMainInfoWidget({Key? key, required this.movie})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);

    final height = MediaQuery.of(context).size.height * 2;
    final movieImgUrl = movie.poster?.previewUrl;
    bool isDetailsLoading = true;
    bool isDetailsEmpty = true;
    bool isDetailsError = false;
    return BlocBuilder<MovieDetailsBloc, MovieDetailsState>(
      builder: (context, state) {
        switch (state.status) {
          case MovieDetailsStatus.initial:
            isDetailsLoading = true;
            isDetailsError = false;
          case MovieDetailsStatus.loading:
            isDetailsLoading = true;
            isDetailsError = false;
          case MovieDetailsStatus.success:
            isDetailsLoading = false;
            isDetailsError = false;
          case MovieDetailsStatus.failure:
            isDetailsLoading = false;
            isDetailsError = true;
        }
        if (isDetailsLoading) {
          return const _BottomLoader();
        } else if (isDetailsError) {
          return const Center(child: Text('Ошибка'));
        } else {
          return Column(
            children: [
              _MovieMainInfoWidget(
                movie: movie,
                movieDetails: state.movieDetails[0],
              ),
              _MovieMainInfoButtonsWidget(
                movieImgUrl: movieImgUrl ?? '',
                movieName: movie.name ?? '',
                releaseDate: movie.year.toString(),
              ),
            ],
          );
        }
      },
    );
  }
}

class _MovieMainInfoWidget extends StatelessWidget {
  const _MovieMainInfoWidget({
    super.key,
    required this.movie,
    required this.movieDetails,
  });

  final MovieDetailsResponse? movieDetails;
  final MovieIdResponse movie;

  @override
  Widget build(BuildContext context) {
    final movieLength = movie.movieLength ?? 0;
    final movieLengthHours = movieLength ~/ 60;
    final movieLengthMinutes = movieLength % 60;
    return Column(
      children: [
        // Text(
        //   '${movie.name}',
        //   style: const TextStyle(
        //     fontSize: 20,
        //     fontWeight: FontWeight.bold,
        //   ),
        // ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              textAlign: TextAlign.center,
              maxLines: 3,
              text: TextSpan(
                text: '${movie.rating?.kp} ',
                style: DefaultTextStyle.of(context).style,
                children: <TextSpan>[
                  TextSpan(text: '${movie.votes?.kp} '),
                  TextSpan(text: '${movie.alternativeName}\n'),
                  TextSpan(text: '${movie.year}, '),
                  TextSpan(text: '${movie.genres?[0].name ?? ''}, '),
                  TextSpan(text: '${movie.genres?[1].name ?? ''}\n'),
                  TextSpan(text: '${movie.countries?[0].name ?? ''}'),
                  TextSpan(
                      text: '$movieLengthHours ч. $movieLengthMinutes мин, '),
                  TextSpan(text: '${movieDetails?.ageRating ?? '0'}'),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}

class _MovieMainInfoButtonsWidget extends StatelessWidget {
  final String movieImgUrl;
  final String movieName;
  final String releaseDate;
  const _MovieMainInfoButtonsWidget({
    Key? key,
    required this.movieImgUrl,
    required this.movieName,
    required this.releaseDate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _MovieMainInfoButtonsWidgetButton(
            icon: const Icon(Icons.star_border_outlined),
            label: 'Оценить',
            onPressed: () {
              showModalBottomSheet<void>(
                context: context,
                isScrollControlled: true,
                builder: (BuildContext context) {
                  return _ModalButtomSheetRateMovieWidget(
                    movieImgUrl: movieImgUrl,
                    movieName: movieName,
                    releaseDate: releaseDate,
                  );
                },
              );
            },
          ),
          _MovieMainInfoButtonsWidgetButton(
            icon: const Icon(Icons.bookmark_add_outlined),
            label: 'Буду смотреть',
            onPressed: () {},
          ),
          _MovieMainInfoButtonsWidgetButton(
            icon: const Icon(Icons.share),
            label: 'Поделиться',
            onPressed: () {},
          ),
          _MovieMainInfoButtonsWidgetButton(
            icon: const Icon(Icons.more_horiz),
            label: 'Ещё',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class _ModalButtomSheetRateMovieWidget extends StatelessWidget {
  final String movieImgUrl;
  final String movieName;
  final String releaseDate;
  const _ModalButtomSheetRateMovieWidget({
    super.key,
    required this.movieImgUrl,
    required this.movieName,
    required this.releaseDate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.95,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Center(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Opacity(
                  opacity: 0,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.close),
                  ),
                ),
                const Text('Оценить'),
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(Icons.close),
                ),
              ],
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: 200,
              child: Image.network(movieImgUrl),
            ),
            SizedBox(height: 15),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: '$movieName \n',
                children: <TextSpan>[
                  TextSpan(text: releaseDate),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _MovieMainInfoButtonsWidgetButton extends StatelessWidget {
  final Icon icon;
  final String label;
  final VoidCallback onPressed;
  const _MovieMainInfoButtonsWidgetButton({
    super.key,
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15),
      child: Material(
        child: InkWell(
          overlayColor: MaterialStateProperty.all(Colors.transparent),
          onTap: onPressed,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon,
              Text(
                label,
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _BottomLoader extends StatelessWidget {
  const _BottomLoader({super.key});

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
