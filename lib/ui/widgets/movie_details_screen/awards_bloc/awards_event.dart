part of 'awards_bloc.dart';

sealed class AwardsEvent extends Equatable {
  const AwardsEvent();

  @override
  List<Object> get props => [];
}

final class AwardsFetched extends AwardsEvent {}
