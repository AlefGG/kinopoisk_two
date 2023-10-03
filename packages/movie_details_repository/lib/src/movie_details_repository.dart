import 'package:dio/dio.dart';
import 'package:movie_details_repository/movie_details_repository.dart';

class MovieDetailsRepository {
  final _httpClient = Dio();

  Future<MovieDetailsResponse> onSearch({required int? movieId}) async {
    final apiUrl = 'https://api.kinopoisk.dev/v1.3/movie/$movieId';

    try {
      final res = await _httpClient.get(
        apiUrl,
        options: Options(
          headers: {
            'accept': 'application/json',
            'x-api-key': 'JZ7TN42-4QCMB0A-NBYHMJR-4X5CGM5',
          },
        ),
      );
      return MovieDetailsResponse.fromJson(res.data);
    } catch (e) {
      throw Exception(e);
    }
  }
}
