import 'package:hotel_recreation/features/properties/data/models/properties_result/properties_result_dto.dart';

class SearchPropertiesDTO {
  SearchPropertiesDTO({
    required this.totalCount,
    required this.propertiesResult,
  });

  final int totalCount;
  final List<PropertiesResultDTO> propertiesResult;
}
