import 'package:hotel_recreation/features/properties/domain/entities/guest_review.dart';

class GuestReviewModel extends GuestReview {
  GuestReviewModel({required String rating, required int totalReviews})
      : super(rating: rating, totalReviews: totalReviews);

  factory GuestReviewModel.fromJson(Map<String, dynamic>? json) {
    if (json != null) {
      return GuestReviewModel(
        rating: json["rating"],
        totalReviews: json['total'],
      );
    }else{
      return GuestReviewModel(
        rating: "0",
        totalReviews: 0,
      );
    }
  }
}
