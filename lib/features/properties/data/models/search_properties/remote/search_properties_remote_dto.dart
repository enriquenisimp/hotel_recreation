import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotel_recreation/features/properties/data/models/properties_result/remote/properties_result_remote_dto.dart';

part 'search_properties_remote_dto.freezed.dart';
part 'search_properties_remote_dto.g.dart';

@freezed
class SearchPropertiesRemoteDTO with _$SearchPropertiesRemoteDTO {
  const factory SearchPropertiesRemoteDTO({
    @JsonKey(name: "totalCount") required int totalCount,
    @JsonKey(name: "results") required List<PropertiesResultsRemoteDTO> results,
  }) = _SearchPropertiesRemoteDTO;

  factory SearchPropertiesRemoteDTO.fromJson(Map<String, dynamic> json) =>
      _$SearchPropertiesRemoteDTOFromJson(json);
}
