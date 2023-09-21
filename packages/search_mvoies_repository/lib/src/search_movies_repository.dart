import 'package:dio/dio.dart';
import 'package:search_movies_repository/search_movies_repository.dart';

class SearchMoviesRepository {
  final apiUrl = 'https://api.kinopoisk.dev/v1.3/movie';
  final _moviesLimit = '20';

  final _httpClient = Dio();
  Future<Movies250Response> onSearch([int startPage = 1]) async {
    try {
      final res = await _httpClient.get(
        apiUrl,
        queryParameters: {
          'page': startPage.toString(),
          'limit': _moviesLimit,
          'top250': '!null',
        },
        options: Options(
          headers: {
            'accept': 'application/json',
            'x-api-key': 'JZ7TN42-4QCMB0A-NBYHMJR-4X5CGM5',
          },
        ),
      );
      return Movies250Response.fromJson(res.data);
    } catch (e) {
      print(e);
      return Movies250Response.fromJson({});
    }
  }
}
