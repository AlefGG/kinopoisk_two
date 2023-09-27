part of 'awards_bloc.dart';

enum AwardsStatus { initial, success, failure, loading }

final class AwardsState extends Equatable {
  const AwardsState({
    this.status = AwardsStatus.initial,
    this.awards = const <MovieAwards>[],
  });

  final AwardsStatus status;
  final List<MovieAwards> awards;

  AwardsState copyWith({
    AwardsStatus? status,
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
