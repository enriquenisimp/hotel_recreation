import 'dart:developer';

import 'package:hotel_recreation/features/properties/data/models/search_properties/search_properties_dto.dart';
import 'package:hotel_recreation/features/properties/domain/entities/properties_result.dart';
import 'package:hotel_recreation/features/properties/domain/entities/search_properties.dart';
import 'package:hotel_recreation/features/properties/domain/mapper/properties_result_mapper.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class SearchPropertiesMapper {
  SearchPropertiesMapper(PropertiesResultMapper propertiesResultMapper)
      : _propertiesResultMapper = propertiesResultMapper;
  final PropertiesResultMapper _propertiesResultMapper;

  SearchPropertiesEntity fromModelToEntity(
    SearchPropertiesDTO searchPropertiesModel,
  ) {
    final propertiesList = <PropertiesResultEntity>[];
    try {
      for (final property in searchPropertiesModel.propertiesResult) {
        propertiesList.add(
          _propertiesResultMapper.fromModelToEntity(
            property,
          ),
        );
      }
    } catch (e, s) {
      log(e.toString(), stackTrace: s);
    }
    return SearchPropertiesEntity(
      totalCount: searchPropertiesModel.totalCount,
      listOfProperties: propertiesList,
    );
  }
}
