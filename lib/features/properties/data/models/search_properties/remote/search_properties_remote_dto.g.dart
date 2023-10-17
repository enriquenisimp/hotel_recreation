// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_properties_remote_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchPropertiesRemoteDTO _$$_SearchPropertiesRemoteDTOFromJson(
        Map<String, dynamic> json) =>
    _$_SearchPropertiesRemoteDTO(
      totalCount: json['totalCount'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) =>
              PropertiesResultsRemoteDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SearchPropertiesRemoteDTOToJson(
        _$_SearchPropertiesRemoteDTO instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'results': instance.results,
    };
