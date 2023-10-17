import 'package:hotel_recreation/features/properties/data/models/search_properties/remote/search_properties_remote_dto.dart';

class PropertiesListWrapperRemoteDTO {
  const PropertiesListWrapperRemoteDTO({required this.data});

  factory PropertiesListWrapperRemoteDTO.fromJson(Map<String, dynamic> json) {
    return PropertiesListWrapperRemoteDTO(
      data: PropertiesListRemoteDTO.fromJson(
        json['data'] as Map<String, dynamic>,
      ),
    );
  }
  final PropertiesListRemoteDTO data;
}

class PropertiesListRemoteDTO {
  const PropertiesListRemoteDTO({required this.body});

  factory PropertiesListRemoteDTO.fromJson(Map<String, dynamic> json) {
    return PropertiesListRemoteDTO(
      body: PropertiesListBodyRemoteDTO.fromJson(
        json['body'] as Map<String, dynamic>,
      ),
    );
  }
  final PropertiesListBodyRemoteDTO body;
}

class PropertiesListBodyRemoteDTO {
  const PropertiesListBodyRemoteDTO({
    required this.searchProperties,
  });

  factory PropertiesListBodyRemoteDTO.fromJson(Map<String, dynamic> json) {
    return PropertiesListBodyRemoteDTO(
      searchProperties: SearchPropertiesRemoteDTO.fromJson(
        json['searchResults'] as Map<String, dynamic>,
      ),
    );
  }
  final SearchPropertiesRemoteDTO searchProperties;
}
