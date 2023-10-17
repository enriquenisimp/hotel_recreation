// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guest_review_remote_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GuestReviewRemoteDTO _$$_GuestReviewRemoteDTOFromJson(
        Map<String, dynamic> json) =>
    _$_GuestReviewRemoteDTO(
      rating: json['rating'] as String,
      totalReviews: json['total'] as int,
    );

Map<String, dynamic> _$$_GuestReviewRemoteDTOToJson(
        _$_GuestReviewRemoteDTO instance) =>
    <String, dynamic>{
      'rating': instance.rating,
      'total': instance.totalReviews,
    };
