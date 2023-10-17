import 'package:hotel_recreation/features/properties/data/models/guest_review/guest_review_dto.dart';

class PropertiesResultDTO {
  PropertiesResultDTO({
    required this.id,
    required this.name,
    required this.thumbnailUrl,
    required this.starRating,
    this.guestReviews,
    this.neighbourhood,
    this.pimmsAttributes,
    this.coupon,
    this.roomsLeft,
    this.providerType,
    this.supplierHotelId,
  });

  final int id;
  final String name;
  final String thumbnailUrl;
  final double starRating;
  final GuestReviewDTO? guestReviews;
  final String? neighbourhood;
  final String? pimmsAttributes;
  final String? coupon;
  final int? roomsLeft;
  final String? providerType;
  final int? supplierHotelId;
}
