import 'package:hotel_recreation/features/properties/data/models/properties_result/properties_result_dto.dart';
import 'package:hotel_recreation/features/properties/domain/entities/properties_result.dart';
import 'package:hotel_recreation/features/properties/domain/mapper/guest_review_mapper.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class PropertiesResultMapper {
  PropertiesResultMapper(GuestReviewMapper guestReviewMapper)
      : _guestReviewMapper = guestReviewMapper;
  final GuestReviewMapper _guestReviewMapper;
  PropertiesResultEntity fromModelToEntity(
    PropertiesResultDTO propertiesResultsModel,
  ) {
    return PropertiesResultEntity(
      id: propertiesResultsModel.id,
      name: propertiesResultsModel.name,
      thumbnailUrl: propertiesResultsModel.thumbnailUrl,
      guestReviews: _guestReviewMapper.fromModelToEntity(
        propertiesResultsModel.guestReviews,
      ),
    );
  }
}
