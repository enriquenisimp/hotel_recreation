import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:hotel_recreation/core/data/api_constants.dart';
import 'package:injectable/injectable.dart';

@injectable
class PropertiesInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers.addAll({
      'X-RapidAPI-Key': ApiConstants.apiKey,
      'X-RapidAPI-Host': ApiConstants.apiHost
    });

    log(options.path);
    log(options.data.toString());
    return handler.next(options);
  }
}
