import 'package:dio/dio.dart';
import 'package:movie_awards_repository/src/models/movie_awards_response.dart';

class MovieAwardsRepository {
  final apiUrl = 'https://api.kinopoisk.dev/v1.1/movie/awards';

  final _httpClient = Dio();
  Future<MovieAwardsResponse> getMovieAwards({
    required int? movieId,
    int limit = 10,
    int page = 1,
  }) async {
    try {
      final res = await _httpClient.get(
        apiUrl,
        queryParameters: {
          'limit': limit,
          'movieId': movieId,
          'page': page,
        },
        options: Options(
          headers: {
            'accept': 'application/json',
            'x-api-key': 'JZ7TN42-4QCMB0A-NBYHMJR-4X5CGM5',
          },
        ),
      );
      return MovieAwardsResponse.fromJson(res.data);
    } catch (e) {
      return MovieAwardsResponse(
        movieAwards: [],
        total: 0,
        limit: 0,
        page: 0,
        pages: 0,
      );
    }
  }
}
