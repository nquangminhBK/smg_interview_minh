import 'package:dio/dio.dart';

import '../constants.dart';
import '../logging/dio_intercepter_logger.dart';

class DioClient {
  DioClient._internal();

  static DioClient shared = DioClient._internal();

  Dio? _repository;

  static Dio getRepository({Map? header}) {
    shared._repository ??= generateRepository(header);
    return shared._repository!;
  }

  static Dio generateRepository(Map? header) => Dio(
        BaseOptions(
          baseUrl: baseUrl,
          connectTimeout: const Duration(seconds: 30000),
          receiveTimeout: const Duration(seconds: 30000),
          responseType: ResponseType.json,
          headers: header != null
              ? {
                  ...header,
                  ...{
                    Headers.contentTypeHeader: 'application/json',
                  }
                }
              : {
                  Headers.contentTypeHeader: 'application/json',
                },
        ),
      )..interceptors.add(DioInterceptorLogging());
}
