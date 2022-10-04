import 'package:dio/dio.dart';
import 'package:hotel_recreation/features/core/data/api_constants.dart';

class PropertiesInterceptor extends Interceptor {

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers.addAll({
      'X-RapidAPI-Key': ApiConstants.apiKey,
      'X-RapidAPI-Host': ApiConstants.apiHost
    });

    print(options.path);
    print(options.data);
    return handler.next(options);
  }
}