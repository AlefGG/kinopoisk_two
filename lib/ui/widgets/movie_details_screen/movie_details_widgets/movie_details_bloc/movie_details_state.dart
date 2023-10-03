part of 'movie_details_bloc.dart';

enum MovieDetailsStatus { success, failure, loading, initial }

final class MovieDetailsState extends Equatable {
  final MovieDetailsStatus status;
  final List<MovieDetailsResponse> movieDetails;

  const MovieDetailsState({
    this.status = MovieDetailsStatus.initial,
    this.movieDetails = const <MovieDetailsResponse>[],
  });

  //write copywith

  MovieDetailsState copyWith({
    MovieDetailsStatus? status,
    List<MovieDetailsResponse>? movieDetails,
  }) {
    return MovieDetailsState(
      status: status ?? this.status,
      movieDetails: movieDetails ?? this.movieDetails,
    );
  }

  @override
  List<Object> get props => [status, movieDetails];
}
