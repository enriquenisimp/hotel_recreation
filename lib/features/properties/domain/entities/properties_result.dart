import 'package:hotel_recreation/features/properties/domain/entities/guest_review.dart';

class PropertiesResult {
  final int id;
  final String name;
  final String thumbnailUrl;
  final double? starRating;
  // Address? address;
  GuestReview guestReviews;
  // TripAdvisorGuestReviews? tripAdvisorGuestReviews;
  // List<Landmarks>? landmarks;
  //RatePlan? ratePlan;
  String? neighbourhood;
  // Deals? deals;
  // Messaging? messaging;
  // Badging? badging;
  String? pimmsAttributes;
  String? coupon;
  // Coordinate? coordinate;
  int? roomsLeft;
  String? providerType;
  int? supplierHotelId;

  PropertiesResult({
    required this.id,
    required this.name,
    required this.thumbnailUrl,
    required this.guestReviews,
    this.starRating,
    this.neighbourhood,
    this.pimmsAttributes,
    this.coupon,
    this.roomsLeft,
    this.providerType,
    this.supplierHotelId,
  });
}
