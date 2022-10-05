import 'package:hotel_recreation/features/properties/data/model/search_result_model.dart';
import 'package:hotel_recreation/features/properties/domain/entities/search_properties.dart';

class PropertiesListWrapperModel {
  final PropertiesListData data;

  const PropertiesListWrapperModel({required this.data});

  factory PropertiesListWrapperModel.fromJson(Map<String, dynamic> json) {
    return PropertiesListWrapperModel(
        data:  PropertiesListData.fromJson(json['data']));
  }
}

class PropertiesListData {
  final PropertiesListBody body;

  const PropertiesListData({required this.body});

  factory PropertiesListData.fromJson(Map<String, dynamic> json) {
    return PropertiesListData(
        body: PropertiesListBody.fromJson(json['body']));
  }
}

class PropertiesListBody {
  final SearchProperties searchProperties;

  const PropertiesListBody({
   required this.searchProperties,
  });

  factory PropertiesListBody.fromJson(Map<String, dynamic> json) {
    return PropertiesListBody(
        searchProperties: SearchPropertiesModel.fromJson(json['searchResults']));
  }
}
