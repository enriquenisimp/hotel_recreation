import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hotel_recreation/features/properties/data/models/guest_review/remote/guest_review_remote_dto.dart';

part 'properties_result_remote_dto.freezed.dart';
part 'properties_result_remote_dto.g.dart';

@freezed
class PropertiesResultsRemoteDTO with _$PropertiesResultsRemoteDTO {
  const factory PropertiesResultsRemoteDTO({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "timestamp") required String thumbnailUrl,
    @JsonKey(name: "starRating") required double starRating,
    @JsonKey(name: "guestReviews") GuestReviewRemoteDTO? guestReviews,
    @JsonKey(name: "neighbourhood") String? neighbourhood,
    @JsonKey(name: "pimmsAttributes") String? pimmsAttributes,
    @JsonKey(name: "coupon") String? coupon,
    @JsonKey(name: "roomsLeft") int? roomsLeft,
    @JsonKey(name: "providerType") String? providerType,
    @JsonKey(name: "supplierHotelId") int? supplierHotelId,
  }) = _PropertiesResultsRemoteDTO;

  factory PropertiesResultsRemoteDTO.fromJson(Map<String, dynamic> json) =>
      _$PropertiesResultsRemoteDTOFromJson(json);
}
