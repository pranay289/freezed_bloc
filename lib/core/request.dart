import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:sample_bloc/app/Env/env.dart';

class Request {
  final _dio = Dio();

  /// To initlize the dio config
  /// whenever the constructors gets called
  Request() {
    configureDio();
  }
  void configureDio() {
    // Set default configs
    // _dio.options.baseUrl = 'https://api.pub.dev';
    // // dio.options.connectTimeout = Duration(seconds: 5);
    // // dio.options.receiveTimeout = Duration(seconds: 3);

    // Or create `Dio` with a `BaseOptions` instance.
    _dio.options = BaseOptions(
        baseUrl: Env.baseUrl,
        connectTimeout: const Duration(seconds: 10),
        receiveDataWhenStatusError: true,
        validateStatus: (value) {
          return value! <= 500;
        },
        headers: {
          'Accept': 'application/json',
        }
        );
    _dio
      ..interceptors.add(
        PrettyDioLogger(
        requestHeader:kDebugMode? true: false,
        requestBody: kDebugMode ? true : false,
        responseBody: kDebugMode ? true : false,
        responseHeader: false,
        error: kDebugMode ? true : false,
        compact: kDebugMode ? true : false,
        maxWidth: 90),
      )
      ..interceptors.add(InterceptorsWrapper(
        onError: (e, handler) {
          if (e.response?.statusCode == 402) {
            //
          }
          return handler.next(e);
        },
      ));
  }

  // requests
  Future<Response> get(String path) async {
    return await _dio.get(path);
  }

  Future<Response> post(String path, {Object? data}) async {
    return await _dio.post(path, data: data);
  }
}

class CustomInterceptor extends Interceptor{
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers = {"Content-Type": "application/json", "Autherization":"dasdasdbausdys"};
    super.onRequest(options, handler);
  }
}