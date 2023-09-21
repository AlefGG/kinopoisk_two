part of 'popular_movies_bloc.dart';

sealed class PopularMoviesEvent extends Equatable {
  @override
  List<Object> get props => [];
}

final class PopularMoviesFetched extends PopularMoviesEvent {}
