import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:movie_details_repository/movie_details_repository.dart';

part 'movie_details_event.dart';
part 'movie_details_state.dart';

class MovieDetailsBloc extends Bloc<MovieDetailsEvent, MovieDetailsState> {
  final int? movieId;
  final MovieDetailsRepository repository;
  MovieDetailsBloc({required this.repository, required this.movieId})
      : super(MovieDetailsState()) {
    on<MovieDetailsFetched>(
      _onMovieDetailsFetched,
    );
  }

  Future<void> _onMovieDetailsFetched(
    MovieDetailsEvent event,
    Emitter<MovieDetailsState> emit,
  ) async {
    try {
      if (state.status == MovieDetailsStatus.initial) {
        emit(state.copyWith(status: MovieDetailsStatus.loading));
        final movieDetails = await repository.onSearch(movieId: movieId);
        final movieDetailsList = [movieDetails];
        return emit(
          state.copyWith(
            movieDetails: movieDetailsList,
            status: MovieDetailsStatus.success,
          ),
        );
      }
    } catch (e) {
      print(e);
      emit(state.copyWith(status: MovieDetailsStatus.failure));
    }
  }
}
