import 'dart:developer';

import 'package:hotel_recreation/features/properties/data/models/guest_review/guest_review_dto.dart';
import 'package:hotel_recreation/features/properties/data/models/guest_review/remote/guest_review_remote_dto.dart';

class GuestReviewDTOMapper {
  GuestReviewDTO? fromRemote(GuestReviewRemoteDTO guestReviewRemoteDTO) {
    try {
      return GuestReviewDTO(
        rating: guestReviewRemoteDTO.rating,
        totalReviews: guestReviewRemoteDTO.totalReviews,
      );
    } catch (e, s) {
      log(
        e.toString(),
        stackTrace: s,
      );
      return null;
    }
  }
}
