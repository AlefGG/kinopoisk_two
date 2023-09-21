import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:search_movies_repository/search_movies_repository.dart';
import 'package:stream_transform/stream_transform.dart';

part 'popular_movies_event.dart';
part 'popular_movies_state.dart';

const throttleDuration = Duration(milliseconds: 100);

EventTransformer<E> throttleDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.throttle(duration), mapper);
  };
}

class PopularMoviesBloc extends Bloc<PopularMoviesEvent, PopularMoviesState> {
  final SearchMoviesRepository repository;
  PopularMoviesBloc({required this.repository})
      : super(const PopularMoviesState()) {
    on<PopularMoviesFetched>(
      _onPopularMoviesFetched,
      transformer: throttleDroppable(throttleDuration),
    );
  }

  Future<void> _onPopularMoviesFetched(
    PopularMoviesFetched event,
    Emitter<PopularMoviesState> emit,
  ) async {
    final nextPage = state.movies.length ~/ 20 + 1;

    if (state.hasReachedMax) return;
    try {
      if (state.status == PopularMoviesStatus.initial) {
        final movies = await repository.onSearch();
        return emit(
          state.copyWith(
            status: PopularMoviesStatus.success,
            movies: movies.movies,
            hasReachedMax: false,
          ),
        );
      }
      final movies = await repository.onSearch(nextPage);
      state.movies.isEmpty || state.movies.length == 250
          ? emit(state.copyWith(hasReachedMax: true))
          : emit(state.copyWith(
              status: PopularMoviesStatus.success,
              movies: List.of(state.movies)..addAll(movies.movies),
              hasReachedMax: false,
            ));
    } catch (_) {
      emit(state.copyWith(status: PopularMoviesStatus.failure));
    }
  }
}
