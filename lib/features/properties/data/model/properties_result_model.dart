import 'package:hotel_recreation/features/properties/data/model/guest_review_model.dart';
import 'package:hotel_recreation/features/properties/domain/entities/guest_review.dart';
import 'package:hotel_recreation/features/properties/domain/entities/properties_result.dart';

class PropertiesResultsModel extends PropertiesResult {
  PropertiesResultsModel({
    required int id,
    required String name,
    required String thumbnailUrl,
    required double starRating,
    // Address? address;
    required GuestReview guestReviews,
    // TripAdvisorGuestReviews? tripAdvisorGuestReviews;
    // List<Landmarks>? landmarks;
    //RatePlan? ratePlan;
    String? neighbourhood,
    // Deals? deals;
    // Messaging? messaging;
    // Badging? badging;
    String? pimmsAttributes,
    String? coupon,
    // Coordinate? coordinate;
    int? roomsLeft,
    String? providerType,
    int? supplierHotelId,
  }) : super(
            id: id,
            name: name,
            thumbnailUrl: thumbnailUrl,
            guestReviews:guestReviews,
            starRating: starRating,
            neighbourhood: neighbourhood,
            pimmsAttributes: pimmsAttributes,
            coupon: coupon,
            roomsLeft: roomsLeft,
            providerType: providerType,
            supplierHotelId: supplierHotelId);


  factory PropertiesResultsModel.fromJson(Map<String, dynamic> json) {
    return PropertiesResultsModel(
      id: json['id']??"",
      name: json['name']??"",
      thumbnailUrl: json['optimizedThumbUrls']["srpDesktop"]??"",
      starRating: json['starRating']??0.0,
      neighbourhood: json['neighbourhood'],
      pimmsAttributes: json['pimmsAttributes'],
      coupon: json['coupon'],
      roomsLeft: json['roomsLeft'],
      providerType: json['providerType'],
      supplierHotelId: json['supplierHotelId'],
      guestReviews:GuestReviewModel.fromJson(json['guestReviews'])
    );
  }
}
