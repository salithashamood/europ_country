import 'package:dio/dio.dart';

class HttpRequest {
  final Dio _dio = Dio();

  HttpRequest() {
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          return handler.next(options);
        },
      ),
    );
  }

  Dio getDio() {
    return _dio;
  }
}
