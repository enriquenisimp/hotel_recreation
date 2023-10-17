import 'package:hotel_recreation/features/properties/data/mappers/properties_result_dto_mapper.dart';
import 'package:hotel_recreation/features/properties/data/models/properties_result/properties_result_dto.dart';
import 'package:hotel_recreation/features/properties/data/models/search_properties/remote/search_properties_remote_dto.dart';
import 'package:hotel_recreation/features/properties/data/models/search_properties/search_properties_dto.dart';

class SearchPropertiesDTOMapper {
  SearchPropertiesDTOMapper(this._propertiesResultDTOMapper);

  final PropertiesResultDTOMapper _propertiesResultDTOMapper;
  SearchPropertiesDTO fromRemote(
    SearchPropertiesRemoteDTO searchPropertiesRemoteDTO,
  ) {
    final propertiesResultList = <PropertiesResultDTO>[];
    for (final remoteProperty in searchPropertiesRemoteDTO.results) {
      final propertyResult = _propertiesResultDTOMapper.fromRemote(
        remoteProperty,
      );
      if (propertyResult != null) {
        propertiesResultList.add(
          propertyResult,
        );
      }
    }

    return SearchPropertiesDTO(
      totalCount: searchPropertiesRemoteDTO.totalCount,
      propertiesResult: propertiesResultList,
    );
  }
}
