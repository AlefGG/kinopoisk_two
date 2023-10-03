// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieDetailsResponse _$MovieDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    MovieDetailsResponse(
      fees: json['fees'] == null
          ? null
          : Fees.fromJson(json['fees'] as Map<String, dynamic>),
      status: json['status'] as String?,
      externalId: json['externalId'] == null
          ? null
          : ExternalId.fromJson(json['externalId'] as Map<String, dynamic>),
      rating: json['rating'] == null
          ? null
          : Rating.fromJson(json['rating'] as Map<String, dynamic>),
      votes: json['votes'] == null
          ? null
          : Votes.fromJson(json['votes'] as Map<String, dynamic>),
      backDrop: json['backDrop'] == null
          ? null
          : Backdrop.fromJson(json['backDrop'] as Map<String, dynamic>),
      movieLength: json['movieLength'] as int?,
      images: json['images'] == null
          ? null
          : Images.fromJson(json['images'] as Map<String, dynamic>),
      productionCompanies: (json['productionCompanies'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : ProductionCompanies.fromJson(e as Map<String, dynamic>))
          .toList(),
      spokenLanguages: (json['spokenLanguages'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : SpokenLanguages.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as int?,
      type: json['type'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      distributors: json['distributors'] == null
          ? null
          : Distributors.fromJson(json['distributors'] as Map<String, dynamic>),
      premiere: json['premiere'] == null
          ? null
          : Premiere.fromJson(json['premiere'] as Map<String, dynamic>),
      slogan: json['slogan'] as String?,
      year: json['year'] as int?,
      budget: json['budget'] == null
          ? null
          : Budget.fromJson(json['budget'] as Map<String, dynamic>),
      poster: json['poster'] == null
          ? null
          : Poster.fromJson(json['poster'] as Map<String, dynamic>),
      facts: (json['facts'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Facts.fromJson(e as Map<String, dynamic>))
          .toList(),
      genres: (json['genres'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Genres.fromJson(e as Map<String, dynamic>))
          .toList(),
      countries: (json['countries'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Countries.fromJson(e as Map<String, dynamic>))
          .toList(),
      videos: json['videos'] == null
          ? null
          : Videos.fromJson(json['videos'] as Map<String, dynamic>),
      seasonInfo: (json['seasonInfo'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : SeasonsInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      persons: (json['persons'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Persons.fromJson(e as Map<String, dynamic>))
          .toList(),
      lists:
          (json['lists'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      typeNumber: json['typeNumber'] as int?,
      alternativeName: json['alternativeName'] as String?,
      enName: json['enName'] as String?,
      names: (json['names'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Names.fromJson(e as Map<String, dynamic>))
          .toList(),
      updatedAt: json['updatedAt'] as String?,
      imagesInfo: json['imagesInfo'] == null
          ? null
          : ImagesInfo.fromJson(json['imagesInfo'] as Map<String, dynamic>),
      similarMovies: (json['similarMovies'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : SimilarMovies.fromJson(e as Map<String, dynamic>))
          .toList(),
      ratingMpaa: json['ratingMpaa'] as String?,
      shortDescription: json['shortDescription'] as String?,
      technology: json['technology'] == null
          ? null
          : Technology.fromJson(json['technology'] as Map<String, dynamic>),
      ticketsOnSale: json['ticketsOnSale'] as bool?,
      sequelsAndPrequels: (json['sequelsAndPrequels'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : SequelsAndPrequels.fromJson(e as Map<String, dynamic>))
          .toList(),
      ageRating: json['ageRating'] as int?,
      logo: json['logo'] == null
          ? null
          : Logo.fromJson(json['logo'] as Map<String, dynamic>),
      watchability: json['watchability'] == null
          ? null
          : Watchability.fromJson(json['watchability'] as Map<String, dynamic>),
      top10: json['top10'] as int?,
      top250: json['top250'] as int?,
      audience: (json['audience'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Audience.fromJson(e as Map<String, dynamic>))
          .toList(),
      deletedAt: json['deletedAt'] as String?,
      isSeries: json['isSeries'] as bool?,
      seriesLength: json['seriesLength'] as int?,
      totalSeriesLength: json['totalSeriesLength'] as int?,
    );

Map<String, dynamic> _$MovieDetailsResponseToJson(
        MovieDetailsResponse instance) =>
    <String, dynamic>{
      'fees': instance.fees?.toJson(),
      'status': instance.status,
      'externalId': instance.externalId?.toJson(),
      'rating': instance.rating?.toJson(),
      'votes': instance.votes?.toJson(),
      'backDrop': instance.backDrop?.toJson(),
      'movieLength': instance.movieLength,
      'images': instance.images?.toJson(),
      'productionCompanies':
          instance.productionCompanies?.map((e) => e?.toJson()).toList(),
      'spokenLanguages':
          instance.spokenLanguages?.map((e) => e?.toJson()).toList(),
      'id': instance.id,
      'type': instance.type,
      'name': instance.name,
      'description': instance.description,
      'distributors': instance.distributors?.toJson(),
      'premiere': instance.premiere?.toJson(),
      'slogan': instance.slogan,
      'year': instance.year,
      'budget': instance.budget?.toJson(),
      'poster': instance.poster?.toJson(),
      'facts': instance.facts?.map((e) => e?.toJson()).toList(),
      'genres': instance.genres?.map((e) => e?.toJson()).toList(),
      'countries': instance.countries?.map((e) => e?.toJson()).toList(),
      'videos': instance.videos?.toJson(),
      'seasonInfo': instance.seasonInfo?.map((e) => e?.toJson()).toList(),
      'persons': instance.persons?.map((e) => e?.toJson()).toList(),
      'lists': instance.lists,
      'typeNumber': instance.typeNumber,
      'alternativeName': instance.alternativeName,
      'enName': instance.enName,
      'names': instance.names?.map((e) => e?.toJson()).toList(),
      'updatedAt': instance.updatedAt,
      'imagesInfo': instance.imagesInfo?.toJson(),
      'similarMovies': instance.similarMovies?.map((e) => e?.toJson()).toList(),
      'ratingMpaa': instance.ratingMpaa,
      'shortDescription': instance.shortDescription,
      'technology': instance.technology?.toJson(),
      'ticketsOnSale': instance.ticketsOnSale,
      'sequelsAndPrequels':
          instance.sequelsAndPrequels?.map((e) => e?.toJson()).toList(),
      'ageRating': instance.ageRating,
      'logo': instance.logo?.toJson(),
      'watchability': instance.watchability?.toJson(),
      'top10': instance.top10,
      'top250': instance.top250,
      'audience': instance.audience?.map((e) => e?.toJson()).toList(),
      'deletedAt': instance.deletedAt,
      'isSeries': instance.isSeries,
      'seriesLength': instance.seriesLength,
      'totalSeriesLength': instance.totalSeriesLength,
    };
