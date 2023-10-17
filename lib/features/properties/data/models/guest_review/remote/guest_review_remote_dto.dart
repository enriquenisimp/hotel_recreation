import 'package:freezed_annotation/freezed_annotation.dart';

part 'guest_review_remote_dto.freezed.dart';
part 'guest_review_remote_dto.g.dart';

@freezed
class GuestReviewRemoteDTO with _$GuestReviewRemoteDTO {
  const factory GuestReviewRemoteDTO({
    @JsonKey(name: "rating") required String rating,
    @JsonKey(name: "total") required int totalReviews,
  }) = _GuestReviewRemoteDTO;

  factory GuestReviewRemoteDTO.fromJson(Map<String, dynamic> json) =>
      _$GuestReviewRemoteDTOFromJson(json);
}
