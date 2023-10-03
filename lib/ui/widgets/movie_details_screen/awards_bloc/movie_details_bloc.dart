import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:movie_awards_repository/movie_awards_repository.dart';

part 'movie_details_state.dart';
part 'movie_details_event.dart';

class MovieAwardsBloc extends Bloc<MovieDetailsEvent, AwardsState> {
  final int? movieId;
  final MovieAwardsRepository repository;
  MovieAwardsBloc({required this.repository, required this.movieId})
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
      if (state.status == MovieDetailsStatus.initial) {
        emit(state.copyWith(status: MovieDetailsStatus.loading));
        final awards = await repository.getMovieAwards(movieId: movieId);
        return emit(
          state.copyWith(
            awards: awards.movieAwards,
            status: MovieDetailsStatus.success,
          ),
        );
      }
    } catch (_) {
      emit(state.copyWith(status: MovieDetailsStatus.failure));
    }
  }
}
