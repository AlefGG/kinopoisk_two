import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:movie_awards_repository/movie_awards_repository.dart';

part 'awards_event.dart';
part 'awards_state.dart';

class AwardsBloc extends Bloc<AwardsEvent, AwardsState> {
  final int? movieId;
  final MovieAwardsRepository repository;
  AwardsBloc({required this.repository, required this.movieId})
      : super(const AwardsState()) {
    on<AwardsFetched>(
      _onAwardsFetched,
    );
  }

  Future<void> _onAwardsFetched(
    AwardsFetched event,
    Emitter<AwardsState> emit,
  ) async {
    try {
      if (state.status == AwardsStatus.initial) {
        emit(state.copyWith(status: AwardsStatus.loading));
        final awards = await repository.getMovieAwards(movieId: movieId);
        return emit(
          state.copyWith(
            awards: awards.movieAwards,
            status: AwardsStatus.success,
          ),
        );
      }
    } catch (_) {
      emit(state.copyWith(status: AwardsStatus.failure));
    }
  }
}
