import 'package:hotel_recreation/features/properties/data/models/guest_review/guest_review_dto.dart';
import 'package:hotel_recreation/features/properties/domain/entities/guest_review.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class GuestReviewMapper {
  GuestReviewEntity? fromModelToEntity(GuestReviewDTO? guestReviewModel) {
    if (guestReviewModel != null) {
      return GuestReviewEntity(
        rating: guestReviewModel.rating,
        totalReviews: guestReviewModel.totalReviews,
      );
    }
    return null;
  }
}
