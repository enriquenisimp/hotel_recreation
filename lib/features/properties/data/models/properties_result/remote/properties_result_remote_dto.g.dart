// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'properties_result_remote_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PropertiesResultsRemoteDTO _$$_PropertiesResultsRemoteDTOFromJson(
        Map<String, dynamic> json) =>
    _$_PropertiesResultsRemoteDTO(
      id: json['id'] as int,
      name: json['name'] as String,
      thumbnailUrl: json['timestamp'] as String,
      starRating: (json['starRating'] as num).toDouble(),
      guestReviews: json['guestReviews'] == null
          ? null
          : GuestReviewRemoteDTO.fromJson(
              json['guestReviews'] as Map<String, dynamic>),
      neighbourhood: json['neighbourhood'] as String?,
      pimmsAttributes: json['pimmsAttributes'] as String?,
      coupon: json['coupon'] as String?,
      roomsLeft: json['roomsLeft'] as int?,
      providerType: json['providerType'] as String?,
      supplierHotelId: json['supplierHotelId'] as int?,
    );

Map<String, dynamic> _$$_PropertiesResultsRemoteDTOToJson(
        _$_PropertiesResultsRemoteDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'timestamp': instance.thumbnailUrl,
      'starRating': instance.starRating,
      'guestReviews': instance.guestReviews,
      'neighbourhood': instance.neighbourhood,
      'pimmsAttributes': instance.pimmsAttributes,
      'coupon': instance.coupon,
      'roomsLeft': instance.roomsLeft,
      'providerType': instance.providerType,
      'supplierHotelId': instance.supplierHotelId,
    };
