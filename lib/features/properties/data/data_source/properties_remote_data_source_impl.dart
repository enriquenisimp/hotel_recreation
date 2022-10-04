import 'package:dio/dio.dart';
import 'package:hotel_recreation/features/core/data/api_constants.dart';
import 'package:hotel_recreation/features/properties/data/data_source/interceptors/properties_interceptor.dart';
import 'package:hotel_recreation/features/properties/data/data_source/properties_remote_data_source.dart';
import 'package:hotel_recreation/features/properties/data/model/properties_list_wrapper_model.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: PropertiesRemoteDataSource)
class PropertiesRemoteDataSourceImpl extends PropertiesRemoteDataSource {
  final Dio _dio;

  PropertiesRemoteDataSourceImpl(this._dio);
  @override
  Future<PropertiesListWrapperModel> getPropertiesListRemote(Map<String, dynamic> parameters) async {

    _dio.interceptors.add(PropertiesInterceptor());
    final response = await _dio.get(ApiConstants.propertiesList, queryParameters:parameters);

    if (response.statusCode == 200) {
      try {
        return PropertiesListWrapperModel.fromJson(response.data);
      } catch (error) {
        print("sourcedata: $error");
        throw Exception();
      }
    } else {
      print(response.statusCode);
      throw Exception();
    }
  }

  @override
  getPropertyDetailRemote() {
    // TODO: implement getPropertyDetailRemote
    throw UnimplementedError();
  }
}
