
import 'package:hotel_recreation/features/properties/data/model/properties_result_model.dart';
import 'package:hotel_recreation/features/properties/domain/entities/properties_result.dart';
import 'package:hotel_recreation/features/properties/domain/entities/search_properties.dart';

class SearchPropertiesModel extends SearchProperties{
  SearchPropertiesModel({required int totalCount, required List<PropertiesResult> results}):super(totalCount: totalCount, results: results);

  factory SearchPropertiesModel.fromJson(Map<String, dynamic> json) {
    final properties = <PropertiesResult>[];
    if (json['results'] != null) {
      json['results'].forEach((v) {
        properties.add(PropertiesResultsModel.fromJson(v));
      });
    }
    return SearchPropertiesModel(
      totalCount: (json['totalCount']??0) as int,
      results: properties
    );
  }
}
