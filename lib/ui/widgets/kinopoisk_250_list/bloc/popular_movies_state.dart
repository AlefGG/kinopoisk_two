part of 'popular_movies_bloc.dart';

enum PopularMoviesStatus { initial, success, failure }

final class PopularMoviesState extends Equatable {
  final PopularMoviesStatus status;
  final List<MovieIdResponse> movies;
  final bool hasReachedMax;

  const PopularMoviesState({
    this.status = PopularMoviesStatus.initial,
    this.movies = const <MovieIdResponse>[],
    this.hasReachedMax = false,
  });

  //copywith
  PopularMoviesState copyWith({
    PopularMoviesStatus? status,
    List<MovieIdResponse>? movies,
    bool? hasReachedMax,
  }) {
    return PopularMoviesState(
      status: status ?? this.status,
      movies: movies ?? this.movies,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
    );
  }

  @override
  String toString() {
    return '''PostState { status: $status, hasReachedMax: $hasReachedMax, movies: ${movies.length}''';
  }

  @override
  List<Object?> get props => [status, movies, hasReachedMax];
}

final class PopularMoviesInitial extends PopularMoviesState {}
