import 'package:dio/dio.dart';
import 'package:flutter/services.dart';

class DioHelper {
  static const String base_url = '';

  static Dio getDio(String? baseURL) {
    final Dio dio = Dio(BaseOptions(
      baseUrl: baseURL ?? base_url,
      connectTimeout: const Duration(seconds: 30), // Updated to Duration type
      receiveTimeout: const Duration(seconds: 60), // Updated to Duration type
      sendTimeout: const Duration(seconds: 30), // Updated to Duration type
    ));

    return dio;
  }

  static void addInterceptors(Dio dio) {
    dio.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
  }

  static Exception? parseError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return _getException(Errors.code_timeout, Errors.message_timeout);

      case DioExceptionType.badResponse: // التعامل مع أخطاء الرد
        String message;
        try {
          message = error.response?.data['message'] ?? error.message;
        } catch (e) {
          message = error.message ?? "";
        }
        return _getException(Errors.code_response, message);

      case DioExceptionType.cancel:
        return _getException(error.type.toString(), error.message ?? "");

      case DioExceptionType.badCertificate: // التعامل مع أخطاء الشهادات
        return _getException(
            'BAD_CERTIFICATE', 'There was a certificate error.');

      case DioExceptionType.connectionError:
        return _getException(
            'CONNECTION_ERROR', 'There was a connection error.');

      case DioExceptionType.unknown:
      default:
        return _getException(error.type.toString(), error.message ?? "");
    }
  }

  static _getException(String code, String message) {
    return PlatformException(code: code, message: message);
  }
}

class Errors {
  static const code_timeout = 'TIMEOUT';
  static const message_timeout =
      'Looks like the server is taking too long to respond, this can be caused by either poor connectivity or an error with our servers. Please try again in a while.';

  static const code_response = 'RESPONSE';

  static const code_no_internet = 'NO_INTERNET';
  static const message_no_internet =
      'Sorry, no internet connection detected. Please reconnect and try again.';
}
