// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:json_annotation/json_annotation.dart';
import 'package:search_movies_repository/src/models/movie_id_classes/backdrop/backdrop.dart';
import 'package:search_movies_repository/src/models/movie_id_classes/external_id/external_id.dart';
import 'package:search_movies_repository/src/models/movie_id_classes/fees/fees.dart';
import 'package:search_movies_repository/src/models/movie_id_classes/rating/rating.dart';
import 'package:search_movies_repository/src/models/movie_id_classes/votes/votes.dart';
import 'package:search_movies_repository/src/models/movie_id_classes/images/images.dart';
import 'package:search_movies_repository/src/models/movie_id_classes/production_companies/production_companies.dart';
import 'package:search_movies_repository/src/models/movie_id_classes/spoken_languages/spoken_languages.dart';
import 'package:search_movies_repository/src/models/movie_id_classes/distributors/distributors.dart';
import 'package:search_movies_repository/src/models/movie_id_classes/premiere/premiere.dart';
import 'package:search_movies_repository/src/models/movie_id_classes/budget/budget.dart'; //
import 'package:search_movies_repository/src/models/movie_id_classes/poster/poster.dart';
import 'package:search_movies_repository/src/models/movie_id_classes/facts/facts.dart';
import 'package:search_movies_repository/src/models/movie_id_classes/genres/genres.dart';
import 'package:search_movies_repository/src/models/movie_id_classes/countries/countries.dart';
import 'package:search_movies_repository/src/models/movie_id_classes/videos/videos.dart';
import 'package:search_movies_repository/src/models/movie_id_classes/names/names.dart';
import 'package:search_movies_repository/src/models/movie_id_classes/images_info/images_info.dart';
import 'package:search_movies_repository/src/models/movie_id_classes/similar_movies/similar_movies.dart';
import 'package:search_movies_repository/src/models/movie_id_classes/technology/technology.dart';
import 'package:search_movies_repository/src/models/movie_id_classes/logo/logo.dart';
import 'package:search_movies_repository/src/models/movie_id_classes/watchability/watchability.dart';
import 'package:search_movies_repository/src/models/movie_id_classes/audience/audience.dart';

part 'movie_id_response.g.dart';

@JsonSerializable(explicitToJson: true)
class MovieIdResponse {
  final Fees? fees;
  final bool? status;
  final ExternalId? externalId;
  final Rating? rating;
  final Votes? votes;
  final Backdrop? backdrop;
  final int? movieLength;
  final Images? images;
  final List<ProductionCompanies?>? productionCompanies;
  final List<SpokenLanguages>? spokenLanguages;
  final int? id;
  final String? type;
  final String? name;
  final String? description;
  final Distributors? distributors;
  final Premiere? premiere;
  final String? slogan;
  final int? year;
  final Budget? budget;
  final Poster? poster;
  final List<Facts>? facts;
  final List<Genres>? genres;
  final List<Countries>? countries;
  final Videos? videos;
  final List<dynamic>? seasonsInfo;
  final List<dynamic>? persons;
  final List<dynamic>? lists;
  final int? typeNumber;
  final String? alternativeName;
  final String? enName;
  final List<Names>? names;
  final String? updatedAt;
  final ImagesInfo? imagesInfo;
  final List<SimilarMovies>? similarMovies;
  final String? ratingMpaa;
  final String? shortDescription;
  final Technology? technology;
  final bool? ticketsOnSale;
  final List<dynamic>? sequelsAndPrequels;
  final int? ageRating;
  final Logo? logo;
  final Watchability? watchability;
  final int? top10;
  final int? top250;
  final List<Audience>? audience;
  final int? deletedAt;
  final bool? isSeries;
  final double? seriesLength;
  final double? totalSeriesLength;
  MovieIdResponse({
    required this.fees,
    required this.status,
    required this.externalId,
    required this.rating,
    required this.backdrop,
    required this.movieLength,
    required this.images,
    required this.productionCompanies,
    required this.spokenLanguages,
    required this.id,
    required this.type,
    required this.name,
    required this.description,
    required this.distributors,
    required this.premiere,
    required this.slogan,
    required this.votes,
    required this.year,
    required this.budget,
    required this.poster,
    required this.facts,
    required this.genres,
    required this.countries,
    required this.videos,
    required this.seasonsInfo,
    required this.persons,
    required this.lists,
    required this.typeNumber,
    required this.alternativeName,
    required this.enName,
    required this.names,
    required this.updatedAt,
    required this.imagesInfo,
    required this.similarMovies,
    required this.ratingMpaa,
    required this.shortDescription,
    required this.technology,
    required this.ticketsOnSale,
    required this.sequelsAndPrequels,
    required this.ageRating,
    required this.logo,
    required this.watchability,
    required this.top10,
    required this.top250,
    required this.audience,
    required this.deletedAt,
    required this.isSeries,
    required this.seriesLength,
    required this.totalSeriesLength,
  });

  factory MovieIdResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieIdResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MovieIdResponseToJson(this);
}
