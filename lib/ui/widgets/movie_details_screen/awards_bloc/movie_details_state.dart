part of 'movie_details_bloc.dart';

enum MovieDetailsStatus { initial, success, failure, loading }

final class AwardsState extends Equatable {
  const AwardsState({
    this.status = MovieDetailsStatus.initial,
    this.awards = const <MovieAwards>[],
  });

  final MovieDetailsStatus status;
  final List<MovieAwards> awards;

  AwardsState copyWith({
    MovieDetailsStatus? status,
    List<MovieAwards>? awards,
  }) {
    return AwardsState(
      status: status ?? this.status,
      awards: awards ?? this.awards,
    );
  }

  @override
  List<Object> get props => [status, awards];
}
