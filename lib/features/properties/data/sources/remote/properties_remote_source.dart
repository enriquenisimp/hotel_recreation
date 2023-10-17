import 'package:dio/dio.dart';
import 'package:hotel_recreation/core/data/api_constants.dart';
import 'package:hotel_recreation/core/error/exceptions.dart';
import 'package:hotel_recreation/features/properties/data/interceptors/properties_interceptor.dart';
import 'package:hotel_recreation/features/properties/data/properties_list_wrapper/properties_list_wrapper_model.dart';
import 'package:injectable/injectable.dart';

@injectable
class PropertiesRemoteSource {
  PropertiesRemoteSource({
    required Dio dio,
    required PropertiesInterceptor propertiesInterceptor,
  })  : _dio = dio,
        _propertiesInterceptor = propertiesInterceptor;
  final Dio _dio;
  final PropertiesInterceptor _propertiesInterceptor;

  Future<PropertiesListWrapperRemoteDTO?> getPropertiesList(
    Map<String, dynamic> parameters,
  ) async {
    _dio.interceptors.add(_propertiesInterceptor);
    final response = await _dio.get(
      ApiConstants.propertiesList,
      queryParameters: parameters,
    );

    if (response.statusCode == 200) {
      try {
        final json = response.data;
        if (json != null) {
          return PropertiesListWrapperRemoteDTO.fromJson(
            json as Map<String, dynamic>,
          );
        }
      } catch (error) {
        throw ErrorFormattingData();
      }
    } else {
      throw ServerException();
    }
    return null;
  }
}
