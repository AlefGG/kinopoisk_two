import 'package:json_annotation/json_annotation.dart';

import 'movie_details_classes/audience.dart';
import 'movie_details_classes/backdrop.dart';
import 'movie_details_classes/budget.dart';
import 'movie_details_classes/countries.dart';
import 'movie_details_classes/distributors.dart';
import 'movie_details_classes/external_id.dart';
import 'movie_details_classes/facts.dart';
import 'movie_details_classes/fees/fees.dart';
import 'movie_details_classes/genres.dart';
import 'movie_details_classes/images.dart';
import 'movie_details_classes/images_info.dart';
import 'movie_details_classes/logo.dart';
import 'movie_details_classes/names.dart';
import 'movie_details_classes/persons.dart';
import 'movie_details_classes/poster.dart';
import 'movie_details_classes/premiere.dart';
import 'movie_details_classes/production_companies.dart';
import 'movie_details_classes/rating.dart';
import 'movie_details_classes/seasons_info.dart';
import 'movie_details_classes/sequels_and_prequels.dart';
import 'movie_details_classes/similar_movies/similar_movies.dart';
import 'movie_details_classes/spoken_languages.dart';
import 'movie_details_classes/technology.dart';
import 'movie_details_classes/videos/videos.dart';
import 'movie_details_classes/votes.dart';
import 'movie_details_classes/watchabiltiy/watchability.dart';

part 'movie_details_response.g.dart';

@JsonSerializable(explicitToJson: true)
class MovieDetailsResponse {
  final Fees? fees;
  final String? status;
  final ExternalId? externalId;
  final Rating? rating;
  final Votes? votes;
  final Backdrop? backDrop;
  final int? movieLength;
  final Images? images;
  final List<ProductionCompanies?>? productionCompanies;
  final List<SpokenLanguages?>? spokenLanguages;
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
  final List<Facts?>? facts;
  final List<Genres?>? genres;
  final List<Countries?>? countries;
  final Videos? videos;
  final List<SeasonsInfo?>? seasonInfo;
  final List<Persons?>? persons;
  final List<String?>? lists;
  final int? typeNumber;
  final String? alternativeName;
  final String? enName;
  final List<Names?>? names;
  final String? updatedAt;
  final ImagesInfo? imagesInfo;
  final List<SimilarMovies?>? similarMovies;
  final String? ratingMpaa;
  final String? shortDescription;
  final Technology? technology;
  final bool? ticketsOnSale;
  final List<SequelsAndPrequels?>? sequelsAndPrequels;
  final int? ageRating;
  final Logo? logo;
  final Watchability? watchability;
  final int? top10;
  final int? top250;
  final List<Audience?>? audience;
  final String? deletedAt;
  final bool? isSeries;
  final int? seriesLength;
  final int? totalSeriesLength;

  MovieDetailsResponse({
    required this.fees,
    required this.status,
    required this.externalId,
    required this.rating,
    required this.votes,
    required this.backDrop,
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
    required this.year,
    required this.budget,
    required this.poster,
    required this.facts,
    required this.genres,
    required this.countries,
    required this.videos,
    required this.seasonInfo,
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

  factory MovieDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MovieDetailsResponseToJson(this);
}
//write initial of MovieDetailsResponse class


