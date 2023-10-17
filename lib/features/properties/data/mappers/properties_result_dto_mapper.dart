import 'dart:developer';

import 'package:hotel_recreation/features/properties/data/mappers/guest_review_dto_mapper.dart';
import 'package:hotel_recreation/features/properties/data/models/properties_result/properties_result_dto.dart';
import 'package:hotel_recreation/features/properties/data/models/properties_result/remote/properties_result_remote_dto.dart';

class PropertiesResultDTOMapper {
  PropertiesResultDTOMapper(this._guestReviewDTOMapper);

  final GuestReviewDTOMapper _guestReviewDTOMapper;

  PropertiesResultDTO? fromRemote(
    PropertiesResultsRemoteDTO propertiesResultsRemoteDTO,
  ) {
    try {
      return PropertiesResultDTO(
        name: propertiesResultsRemoteDTO.name,
        id: propertiesResultsRemoteDTO.id,
        providerType: propertiesResultsRemoteDTO.providerType,
        starRating: propertiesResultsRemoteDTO.starRating,
        thumbnailUrl: propertiesResultsRemoteDTO.thumbnailUrl,
        coupon: propertiesResultsRemoteDTO.coupon,
        guestReviews: propertiesResultsRemoteDTO.guestReviews != null
            ? _guestReviewDTOMapper
                .fromRemote(propertiesResultsRemoteDTO.guestReviews!)
            : null,
        neighbourhood: propertiesResultsRemoteDTO.neighbourhood,
        pimmsAttributes: propertiesResultsRemoteDTO.pimmsAttributes,
        roomsLeft: propertiesResultsRemoteDTO.roomsLeft,
        supplierHotelId: propertiesResultsRemoteDTO.supplierHotelId,
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
