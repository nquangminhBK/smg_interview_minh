import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class DioInterceptorLogging extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (!kReleaseMode) {
      debugPrint('*** Request ***\nrequest[${options.method}] ==> ${options.uri}');
      if (options.method == 'POST' || options.method == 'PUT') {
        debugPrint('*** PARAMS ***\n${options.data}');
      }
      if (options.method == 'GET') {
        debugPrint(
          '*** PARAMS ***\n${options.queryParameters}',
        );
      }
    }
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (!kReleaseMode) {
      debugPrint(
        '*** Response ***\nRESPONSE[${response.statusCode}] <=== ${response.realUri}',
      );
    }
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (!kReleaseMode) {
      debugPrint(
        '*** Error ***\nERROR[${err.response?.data?['code'] ?? err.response?.statusCode}] <=== ${err.requestOptions.uri} WITH MESSAGE: ${err.response?.data?['message'] ?? err.message}',
      );
    }
    return super.onError(err, handler);
  }
}
