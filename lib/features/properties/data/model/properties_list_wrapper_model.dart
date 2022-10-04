import 'package:hotel_recreation/features/properties/data/model/search_result_model.dart';
import 'package:hotel_recreation/features/properties/domain/entities/search_properties.dart';

class PropertiesListWrapperModel {
  Data data;

  PropertiesListWrapperModel({required this.data});

  factory PropertiesListWrapperModel.fromJson(Map<String, dynamic> json) {
    return PropertiesListWrapperModel(
        data:  Data.fromJson(json['data']));
  }
}

class Data {
  Body body;

  Data({required this.body});

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
        body: Body.fromJson(json['body']));
  }
}

class Body {
  SearchProperties searchProperties;

  Body({
   required this.searchProperties,
  });

  factory Body.fromJson(Map<String, dynamic> json) {
    print("psss");
    return Body(
        searchProperties: SearchPropertiesModel.fromJson(json['searchResults']));
  }
}
